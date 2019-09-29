function restructureFilms(films) {
    let filmContainer = document.getElementsByClassName("films-container")[0];

    films.map(film => {
        let img = document.createElement("img");
        img.setAttribute("src", film.picture);

        let filmPosterContainer = document.createElement("div");
        filmPosterContainer.classList.add("film-poster-container");

        filmPosterContainer[0].appendChild(img);

        let filmSection = document.createElement("div");
        filmSection.classList.add("film");

        filmSection[0].appendChild(filmPosterContainer);

        let descFilm = document.createElement("div");
        descFilm.classList.add("description-film");

        button.innerHTML = film.chair_number;
        button.id = film.chair_number;
        if (!film.taken) {
            button.setAttribute("disabled", true);
        }

        li.appendChild(button);
        ol.appendChild(li);
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
