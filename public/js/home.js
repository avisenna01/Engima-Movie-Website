function restructureFilms(films) {
    let filmContainer = document.getElementsByClassName("films-container")[0];

    films.map(film => {
        let img = document.createElement("img");
        img.classList.add("film-poster");
        img.setAttribute("src", film.picture+'.jpg');
        img.setAttribute("href", "http://localhost:8080/movie?id=" + film.id_film);

        let filmPosterContainer = document.createElement("div");
        filmPosterContainer.classList.add("film-poster-container");

        filmPosterContainer.appendChild(img);

        let filmSection = document.createElement("div");
        filmSection.classList.add("film");

        filmSection.appendChild(filmPosterContainer);

        let descFilm = document.createElement("div");
        descFilm.classList.add("description-film");

        let filmTitle = document.createElement("a");
        filmTitle.classList.add("film-title");
        filmTitle.setAttribute("href", "http://localhost:8080/movie?id=" + film.id_film);


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
            let myObj = JSON.parse(this.responseText);
            if (myObj != null) {
                restructureFilms(myObj);
            }
        }
    };
    xmlhttp.open("GET", "/api/film/getAllFilms", true);
    xmlhttp.send();
}
getAllFilms();