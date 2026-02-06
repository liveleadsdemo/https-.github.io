const timerElement = document.getElementById("timer");
const listContainer = document.getElementById("list-container");
const refreshBtn = document.getElementById("refreshBtn");

let seconds = 0;

// Demo listings
let listings = [
  { title: "BMW 320d 2019 – Dublin", price: "€14,500", phone: "0891234567" },
  { title: "Audi A4 2020 – Cork", price: "€16,200", phone: "0876543210" },
  { title: "VW Golf 2018 – Galway", price: "€11,900", phone: "0869876543" }
];

// Timer
setInterval(() => {
  seconds++;
  timerElement.innerText = seconds;
}, 1000);

// Render listings
function renderListings() {
  listContainer.innerHTML = "";

  listings.forEach(item => {
    const div = document.createElement("div");
    div.className = "list-item";

    div.innerHTML = `
      <strong>${item.title}</strong><br>
      ${item.price}<br>
      <a href="tel:${item.phone}" class="call-btn">📞 Call Seller</a>
    `;

    listContainer.appendChild(div);
  });
}

// Add new demo listing
function addNewListing() {
  const newItems = [
    { title: "Mercedes C200 2021 – Dublin", price: "€18,500", phone: "0899988776" },
    { title: "Toyota Corolla 2019 – Limerick", price: "€12,300", phone: "0871122334" },
    { title: "Ford Focus 2018 – Waterford", price: "€10,900", phone: "0864455667" }
  ];

  const random = newItems[Math.floor(Math.random() * newItems.length)];
  listings.unshift(random);
  renderListings();
}

// Refresh button
refreshBtn.addEventListener("click", addNewListing);

// Auto update every 8 seconds
setInterval(addNewListing, 8000);

// Initial load
renderListings();
