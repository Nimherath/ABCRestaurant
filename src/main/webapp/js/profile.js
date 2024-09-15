// Get the modal element
const profileModal = document.getElementById('profileModal');
const closeModalBtn = document.querySelector('.close');

// Open the modal when "Edit Profile" button is clicked
document.getElementById('editProfileBtn').addEventListener('click', function() {
    profileModal.style.display = "block";
});

// Close the modal when "X" is clicked
closeModalBtn.addEventListener('click', function() {
    profileModal.style.display = "none";
});

// Close the modal when clicking outside the modal content
window.addEventListener('click', function(event) {
    if (event.target == profileModal) {
        profileModal.style.display = "none";
    }
});

// Form submission event (can be customized)
document.getElementById('editProfileForm').addEventListener('submit', function(e) {
    e.preventDefault();

    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const phone = document.getElementById('phone').value;
    const address = document.getElementById('address').value;

    // Logic for saving the updated profile info (AJAX or backend handling can be done here)

    alert('Profile updated successfully!');
    
    // Close the modal after saving
    profileModal.style.display = "none";
});
