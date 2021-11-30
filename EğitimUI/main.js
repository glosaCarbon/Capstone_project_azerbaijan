getMovies = () => {
    let inputID = document.getElementById("enterID").value;

    let myHeaders = new Headers();
    myHeaders.append("Content-Type", "application/json");

    let raw = JSON.stringify({
        "user_id": inputID
    });

    let requestOptions = {
        method: 'POST',
        headers: myHeaders,
        body: raw,
        redirect: 'follow'
    };

    let categoryList = []

    const container = document.getElementById("box1");
    fetch("http://127.0.0.1:8000/topTen", requestOptions)
        .then(response => response.json())
        .then(result => {
                for (let x in result) {
                    let li = document.createElement("ol");
                    li.classList.add("list-group-item");
                    li.classList.add("d-flex");
                    li.classList.add("justify-content-between");

                    let div = document.createElement("div");
                    div.classList.add("name-data");

                    let div2 = document.createElement("div");
                    div2.classList.add("movie-categories");


                    let movieName = document.createElement("div");
                    movieName.classList.add("movie-name");
                    let name = document.createTextNode(result[x].movie_title)
                    movieName.appendChild(name);

                    let specialDate = document.createElement("div");
                    specialDate.classList.add("special-date");
                    let date = document.createTextNode(result[x].release_date)
                    specialDate.appendChild(date);

                    let badge = document.createElement("span");
                    badge.classList.add("badge");
                    badge.classList.add("special-badge");


                    [result[x]].filter(function (i, n) {
                        if (n === 1) {
                            let category = document.createTextNode(i);
                            badge.appendChild(category);
                        }
                    });


                    // let category = document.createTextNode("Test");
                    // badge.appendChild(category);


                    div.appendChild(movieName);
                    div.appendChild(specialDate);
                    div2.appendChild(badge);

                    li.appendChild(div);
                    li.appendChild(div2);

                    container.appendChild(li);
                }
            }
        )
        .catch(error => console.log('error', error));

}
