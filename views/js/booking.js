const buttons = document.getElementsByTagName("button");

let seatDetails = document.createElement("div");
let summary = document.getElementsByClassName("summary");

let movieTitle = createNewElement("h3", "Avengers: Endgame");
let movieDate = createNewElement("p", "Septemver 4, 2019 - 09:40");
let seatNumber = createNewElement("h3", "Seat #X");
let price = createNewElement("h3", "Rp 75.000,-");
let buyTicketButton = createNewElement("button", "Buy Ticket");

appendArrayOfChild(seatDetails, [
  movieTitle,
  movieDate,
  seatNumber,
  price,
  buyTicketButton
]);

for (i = 0; i < buttons.length; i++) {
  buttons[i].addEventListener("click", checkout);
}

function checkout() {
  summary[0].replaceChild(seatDetails, summary[0].lastElementChild);
}

function createNewElement(element, text) {
  let newElement = document.createElement(element);
  newElement.textContent = text;
  return newElement;
}

function appendArrayOfChild(element, arrayChild) {
  arrayChild.map(child => {
    element.appendChild(child);
  });
}
