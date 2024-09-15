// Smooth Scroll for Navigation Links
document.querySelectorAll('nav a').forEach(link => {
    link.addEventListener('click', function(e) {
        e.preventDefault();
        const targetId = this.getAttribute('href').substring(1);
        const targetElement = document.getElementById(targetId);

        if (targetElement) {
            targetElement.scrollIntoView({
                behavior: 'smooth'
            });
        }
    });
});

// Modal Pop-up for Package Details
const modal = document.getElementById('packageModal');
const modalContent = document.querySelector('.modal-content');
const closeModal = document.querySelector('.close');

// Open Modal Function
function openModal(packageInfo) {
    modal.style.display = "block";
    modalContent.innerHTML = `
        <h3>${packageInfo.title}</h3>
        <p>${packageInfo.description}</p>
        <ul>${packageInfo.details.map(detail => `<li>${detail}</li>`).join('')}</ul>
        <button class="btn closeModalBtn">Close</button>
    `;
}

// Close Modal Function
function closeModalFunc() {
    modal.style.display = "none";
}

// Add Event Listeners to Package Buttons
document.querySelectorAll('.package-card .btn').forEach((btn, index) => {
    btn.addEventListener('click', function(e) {
        e.preventDefault();

        const packageDetails = [
            {
                title: "Family Package",
                description: "Enjoy a delightful family meal with dishes that everyone will love. Perfect for weekend get-togethers!",
                details: ["3-Course Meal", "Drinks for the whole family", "Special kids' menu available"]
            },
            {
                title: "Birthday Party Package",
                description: "Celebrate your special day with us. Our birthday party package includes everything you need for a fun and festive celebration.",
                details: ["Decorations and birthday cake", "Custom menu options", "Complimentary party favors"]
            },
            {
                title: "High Tea Package",
                description: "Indulge in an elegant high tea experience with a selection of teas, pastries, and savory treats.",
                details: ["Assorted teas and coffees", "Pastries and finger sandwiches", "Special desserts selection"]
            }
        ];

        // Open Modal with package details
        openModal(packageDetails[index]);
    });
});

// Close Modal on Click
closeModal.addEventListener('click', closeModalFunc);

// Close Modal when clicking outside the modal content
window.addEventListener('click', function(event) {
    if (event.target == modal) {
        closeModalFunc();
    }
});

// Event listener to close modal from button inside modal content
document.body.addEventListener('click', function(e) {
    if (e.target && e.target.classList.contains('closeModalBtn')) {
        closeModalFunc();
    }
});
