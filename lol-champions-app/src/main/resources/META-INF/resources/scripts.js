// Sample data of champions
champions = []

// Function to create champion cards and append to the HTML
function createChampionCards(champions) {
  const championList = document.querySelector('.champion-list');
  championList.innerHTML = ''; // Clear previous champions

  champions.forEach(champion => {
    const card = document.createElement('div');
    card.classList.add('champion-card');

    const image = document.createElement('img');
    image.src = `https://lolcdn.darkintaqt.com/cdn/champion/${champion.id}/tile`;

    const details = document.createElement('div');
    details.classList.add('champion-details');

    const name = document.createElement('div');
    name.classList.add('champion-name');
    name.textContent = champion.name;

    const title = document.createElement('div');
    title.classList.add('champion-title');
    title.textContent = champion.title;

    const position = document.createElement('div');
    position.classList.add('champion-position');
    position.textContent = `Position: ${champion.position}`;

    details.appendChild(name);
    details.appendChild(title);
    details.appendChild(position);

    card.appendChild(image);
    card.appendChild(details);

    championList.appendChild(card);
  });
}

// Function to handle search functionality
function handleSearch() {
  const searchInput = document.getElementById('search');
  const searchTerm = searchInput.value.toLowerCase();

  const filteredChampions = champions.filter(champion =>
    champion.name.toLowerCase().includes(searchTerm)
  );

  createChampionCards(filteredChampions);
}

// Call the function to generate champion cards when the page loads
window.addEventListener('load', () => {

  fetch(`/champions`)
    .then(response => response.json())
    .then(data => {
      // Handle data and populate your HTML with champion information
      console.log(data); // Use this data to generate champion cards or list
      champions = data;
      createChampionCards(champions);
    })
    .catch(error => {
      console.error('Error fetching data:', error);
    });
 

  // Listen for input in the search field
  document.getElementById('search').addEventListener('input', handleSearch);
});
