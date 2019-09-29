function restructureFilms(films) {
    let filmContainer = document.getElementsByClassName("films-container")[0];

    films.map(film => {
        let img = document.createElement("img");
        img.setAttribute("src", film.picture);

        let filmPosterContainer = document.createElement("div");
        filmPosterContainer.classList.add("film-poster-container");

        filmPosterContainer.appendChild(img);

        let filmSection = document.createElement("div");
        filmSection.classList.add("film");

        filmSection.appendChild(filmPosterContainer);

        let descFilm = document.createElement("div");
        descFilm.classList.add("description-film");

        let filmTitle = document.createElement("h4");
        filmTitle.classList.add("film-title");

        let bold = document.createElement("b");
        bold.innerHTML = film.title;

        filmTitle.appendChild(bold);

        let ratingHomeDesc = document.createElement("div");
        ratingHomeDesc.classList.add("rating-home-description")

        let ratingHome = document.createElement("img");
        ratingHome.classList.add("rating-home");
        ratingHome.setAttribute("src", "assets/rating.png");

        ratingHomeDesc.appendChild(ratingHome);

        let rating = document.createElement("p");
        rating.innerHTML = film.rating;

        ratingHomeDesc.appendChild(rating);

        descFilm.appendChild(filmTitle);
        descFilm.appendChild(ratingHomeDesc);

        filmSection.appendChild(filmPosterContainer);
        filmSection.appendChild(descFilm);

        filmContainer.appendChild(filmSection);
    });
}


function getAllFilms() {
    let xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log(this.responseText);
            let myObj = JSON.parse(this.responseText);
            if (myObj != null) {
                console.log(myObj);
                restructureFilms(myObj);
            }
        }
    };
    xmlhttp.open("GET", "/api/film/getAllFilms", true);
    xmlhttp.send();
}

getAllFilms();

console.log("adnba");