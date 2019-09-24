const buttons = document.getElementsByTagName("button");

let seatDetails = document.createElement("div");
let buyTicketSection = document.createElement("div");
let seatNumberAndPrice = document.createElement("div");
let summary = document.getElementsByClassName("summary");
let modal = document.getElementsByClassName("modal");

let movieTitle = createNewElement("h3", "Avengers: Endgame");
let movieDate = createNewElement("p", "Septemver 4, 2019 - 09:40");
let seatNumber = createNewElement("h3", "Seat #X");
let price = createNewElement("h3", "Rp 75.000,-");
let buyTicketButton = createNewElement("button", "Buy Ticket");

appendArrayOfChild(seatNumberAndPrice, [seatNumber, price]);
seatNumberAndPrice.setAttribute("class", "number-price");

buyTicketButton.setAttribute("class", "blue-button");
buyTicketSection.setAttribute("class", "buy-ticket-section");
appendArrayOfChild(buyTicketSection, [buyTicketButton]);

appendArrayOfChild(seatDetails, [
  movieTitle,
  movieDate,
  seatNumberAndPrice,
  buyTicketSection
]);

buyTicketButton.addEventListener("click", successMessage);

for (i = 0; i < buttons.length; i++) {
  buttons[i].addEventListener("click", checkout(i));
}

function checkout(i) {
  summary[0].replaceChild(seatDetails, summary[0].lastElementChild);
  // let numberAndPrice = document.getElementsByClassName("number-price");
  // numberAndPrice[0].firstElementChild.textContent = `Seat #${i}`;
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

function successMessage() {
  modal[0].style.display = "block";
}
