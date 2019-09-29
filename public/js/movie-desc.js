function restructurePage(film) {
    let movieTitle = document.getElementsByClassName("movie-title")[0];
    movieTitle.innerHTML = film.title;

    let genreTime = document.querySelectorAll(".genre-time");
    genreTime[0].innerHTML = film.genre;
    genreTime[1].innerHTML = film.duration + " mins";

    console.log(genreTime);

    let releasedDate = document.getElementsByClassName("released-date");
    releasedDate[0].innerHTML = "Released date: " + film.release;

    let rating = document.getElementsByClassName("score1")[0];
    rating.innerHTML = film.rating;

    let briefExplanation = document.getElementsByClassName("brief-explanation");
    briefExplanation.innerHTML = film.description;

    let movieImage = document.getElementsByClassName("movie-image")[0];
    movieImage.setAttribute("src", film.picture);
}

function restructureSchedule(schedules) {
    let table = document.getElementsByTagName("table")[0];

    schedules.map(schedule => {
        let tr = document.createElement("tr");
        let date = schedule.showtime;

        let seatDate = document.createElement("td");
        seatDate.classList.add("seats-date");
        seatDate.innerHTML = date.getDate();

        let time = document.createElement("tr");
        time.innerHTML = date.getTime();

        let seatNum = document.createElement("td");
        seatNum.classList.add("seats-num")
        seatNum.innerHTML = "30 seats";

        let available = document.createElement("td");
        available.classList.add("available");
        available.innerHTML = "Book Now";

        tr.appendChild(seatDate);
        tr.appendChild(time);
        tr.appendChild(seatNum);
        tr.appendChild(available);
        table.appendChild(tr);
    })
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


function getSchedule() {
    let filmId = getParameterByName("id_film");
    let xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            let myObj = JSON.parse(this.responseText);
            if (myObj != null) {
                restructureSchedule(myObj);
            }
        }
    };
    xmlhttp.open("GET", "/api/schedule/getSchedule?id_film=" + filmId, true);
    xmlhttp.send();
}

getFilm();
