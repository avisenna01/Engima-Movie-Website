function restructurePage(film) {
    let movieTitle = document.getElementsByClassName("movie-title")[0];
    movieTitle.innerHTML = film.title;

    let genreTime = document.querySelectorAll(".genre-time");
    genreTime[0].innerHTML = film.genre;
    genreTime[1].innerHTML = film.duration + " mins";

    console.log(genreTime);

    let releasedDate = document.getElementsByClassName("released-date");
    releasedDate[0].innerHTML = "Released date: " + film.release;


    let rating = document.getElementsByClassName("score1");
    rating.innerHTML = film.rating;

    let briefExplanation = document.getElementsByClassName("brief-explanation");
    briefExplanation.innerHTML = film.description;
}

function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, '\\$&');
    var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, ' '));
}

function getFilm() {
    let filmId = getParameterByName("id_film");
    let xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            let myObj = JSON.parse(this.responseText);
            [myObj] = myObj;
            if (myObj != null) {
                console.log(myObj);
                restructurePage(myObj);
            }
        }
    };
    xmlhttp.open("GET", "/api/film/getFilm?id_film=" + filmId, true);
    xmlhttp.send();
}

getFilm();
