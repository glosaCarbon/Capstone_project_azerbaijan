from locust import HttpUser, task


class User(HttpUser):
    @task
    def get_top_ten(self):
        self.client.post("/topTen", json={'user_id': 1})
