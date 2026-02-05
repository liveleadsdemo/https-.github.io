body {
    font-family: Arial, sans-serif;
    background: #f5f5f5;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 500px;
    margin: 50px auto;
    background: #fff;
    padding: 20px;
    border-radius: 12px;
    box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
    text-align: center;
}

h1 {
    margin-bottom: 5px;
    font-size: 24px;
}

.demo-text {
    font-size: 14px;
    color: #888;
    margin-bottom: 15px;
}

.timer {
    font-size: 16px;
    margin-bottom: 15px;
}

.list-container {
    text-align: left;
    margin-bottom: 15px;
}

.list-item {
    background: #e6f7ff;
    padding: 10px;
    margin-bottom: 8px;
    border-radius: 8px;
}

.list-item a {
    color: #007bff;
    text-decoration: none;
    font-weight: bold;
}

.list-item a:hover {
    text-decoration: underline;
}

#refreshBtn {
    padding: 10px 20px;
    border: none;
    background: #007bff;
    color: #fff;
    border-radius: 8px;
    cursor: pointer;
    font-size: 16px;
}

#refreshBtn:hover {
    background: #0056b3;
}
   body {
    font-family: Arial, sans-serif;
    background: #f5f5f5;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 500px;
    margin: 50px auto;
    background: #fff;
    padding: 20px;
    border-radius: 12px;
    box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
    text-align: center;
}

h1 {
    margin-bottom: 5px;
    font-size: 24px;
}

.demo-text {
    font-size: 14px;
    color: #888;
    margin-bottom: 15px;
}

.timer {
    font-size: 16px;
    margin-bottom: 15px;
}

.list-container {
    text-align: left;
    margin-bottom: 15px;
}

.list-item {
    background: #e6f7ff;
    padding: 10px;
    margin-bottom: 8px;
    border-radius: 8px;
}

.list-item a {
    color: #007bff;
    text-decoration: none;
    font-weight: bold;
}

.list-item a:hover {
    text-decoration: underline;
}

#refreshBtn {
    padding: 10px 20px;
    border: none;
    background: #007bff;
    color: #fff;
    border-radius: 8px;
    cursor: pointer;
    font-size: 16px;
}

#refreshBtn:hover {
    background: #0056b3;
}
 let timer = 0;
const timerElement = document.getElementById("timer");
const listContainer = document.getElementById("list-container");
const refreshBtn = document.getElementById("refreshBtn");

// Initial demo listings
let listings = [
    {title: "BMW 320d 2019", price: "€14,500", phone: "0891234567"},
    {title: "Audi A4 2020", price: "€16,200", phone: "0876543210"},
    {title: "VW Golf 2018", price: "€11,900", phone: "0869876543"}
];

// Timer update every second
setInterval(() => {
    timer++;
    timerElement.textContent = timer;
}, 1000);

// Display listings
function displayListings() {
    listContainer.innerHTML = "";
    listings.forEach(item => {
        const div = document.createElement("div");
        div.className = "list-item";
        div.innerHTML = `
            ${item.title} | ${item.price} | 
            <a href="tel:${item.phone}">📞 Call</a>
        `;
        listContainer.appendChild(div);
    });
}

// Add new listing (simulate instant new item)
function addNewListing() {
    const newItems = [
        {title: "Mercedes C200 2021", price: "€18,500", phone: "0899988776"},
        {title: "Toyota Corolla 2019", price: "€12,300", phone: "0871122334"},
        {title: "Ford Focus 2018", price: "€10,900", phone: "0864455667"}
    ];
    const randomItem = newItems[Math.floor(Math.random() * newItems.length)];
    listings.unshift(randomItem); // newest on top
    displayListings();
}

// Manual refresh button
refreshBtn.addEventListener("click", () => {
    addNewListing();
});

// Auto add a new listing every 10 seconds
setInterval(() => {
    addNewListing();
}, 10000);

// Initial display
displayListings();
