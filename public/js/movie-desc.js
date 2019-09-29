function restructurePage(film) {
    let movieTitle = document.getElementsByClassName("movie-title")[0];
    movieTitle.innerHTML = film.title;

    let genreTime = document.querySelectorAll(".genre-time")[0];
    genreTime[0].innerHTML = film.genre;
    genreTime[0].innerHTML = film.duration + " mins";
    genreTime[0].innerHTML = "Released date: " + film.release;



    seats.map(seat => {
        let button = document.createElement("button");
        let li = document.createElement("li");

        button.innerHTML = seat.chair_number;
        button.id = seat.chair_number;
        if (!seat.taken) {
            button.setAttribute("disabled", true);
        }

        li.appendChild(button);
        ol.appendChild(li);
    });
}


function getFilm() {
    let filmId = getParameterByName("id_film");
    let xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            let myObj = JSON.parse(this.responseText);
            if (myObj != null) {
                restructurePage(myObj);
            }
        }
    };
    xmlhttp.open("GET", "/api/film/getFilm?id_film=" + filmId, true);
    xmlhttp.send();
}


