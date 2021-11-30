import itertools
import numpy as np
import pandas as pd
import uvicorn

from tensorflow.keras.models import load_model, Model
from collections import defaultdict
from fastapi import FastAPI, Body
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel

# Create a fastapi app
app = FastAPI()
origins = ["*"]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Headers of datasets
header = ['user_id', 'item_id', 'rating', 'timestamp']
header_movie_info = ['movie_id', 'movie_title', 'release_date', 'video release date',
                     'IMDb URL', 'unknown', 'Action', 'Adventure', 'Animation',
                     "Children's", 'Comedy', 'Crime', 'Documentary', 'Drama', 'Fantasy',
                     'Film-Noir', 'Horror', 'Musical', 'Mystery', 'Romance', 'Sci-Fi',
                     'Thriller', 'War', 'Western']

dataset: pd.DataFrame = pd.read_csv('ml-100k/u.data', sep='\t', names=header)

movie_info_dataset: pd.DataFrame = pd.read_csv('ml-100k/u.item', sep='|', names=header_movie_info, encoding='latin-1')
# We do not need these columns
movie_info_dataset.drop(['video release date', 'IMDb URL', 'unknown'], axis=1, inplace=True)

# Which user watched which moview
users_movies = defaultdict(lambda: set())
user_list = set()
movie_list = set()

model: Model = load_model('recommender_model')


# Pydantic model, we expect a json which has a "user_id" field.
class UserRequest(BaseModel):
    user_id: str


@app.on_event('startup')
def startup():
    for user, movie, rating, timestamp in dataset.values:
        users_movies[user].add(movie)
        user_list.add(user)
        movie_list.add(movie)


@app.post('/predict')
def predict(movie_id: str = Body(...), user_id: str = Body(...)):
    movie_id = np.array([int(movie_id)]).reshape((-1, 1))
    user_id = np.array([int(user_id)]).reshape((-1, 1))
    response = model.predict(x=[user_id, movie_id])

    return str(response[0][0][0])


@app.post('/topTen')
def top_ten(user: UserRequest):
    """

    :param user: ID of the user
    :return: Top ten movies for the given user.
    """
    user_id = user.user_id
    if int(user_id) not in user_list:
        return {"error": "This user is not in the user list!"}

    # All movies that isn't in the user's watched movies list
    not_watched_by_user = []
    for movie in movie_list:
        if movie not in users_movies[user_id]:
            not_watched_by_user.append(movie)

    # Array of user ids with a shape of (len(not_watched_by_user), 1)
    input_user = np.repeat(int(user_id), len(not_watched_by_user)).reshape((-1, 1))
    input_movie = np.array(not_watched_by_user).reshape((-1, 1))

    # Predict and reshape the results from (1,1, len(not_watched_by_user)) to (1, len(not_watched_by_user))
    result = model.predict(x=[input_user, input_movie]).reshape((1, -1))[0]

    # Multiply with -1 because argsort sorts in ascending order
    result = result * -1
    result = np.argsort(result)[:10]
    top_ten_movie_id = [not_watched_by_user[movie_id] for movie_id in result]

    # Find movie details using movie_id
    def find_movie(movie_id: str) -> pd.DataFrame:
        movie_df = movie_info_dataset.loc[movie_info_dataset['movie_id'] == movie_id]
        movie_df = movie_df.drop(['movie_id'], axis=1)
        movie_df = movie_df.to_dict('records')[0]
        return movie_df

    top_ten_movie_id = [find_movie(movie) for movie in top_ten_movie_id]

    return top_ten_movie_id


if __name__ == '__main__':
    uvicorn.run(app)
