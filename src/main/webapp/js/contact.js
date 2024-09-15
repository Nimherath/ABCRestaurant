// Search Bar Animation
document.addEventListener("DOMContentLoaded", function() {
    const searchIcon = document.querySelector('.search__icon');
    const searchInput = document.querySelector('.search__input');

    searchIcon.addEventListener('click', function() {
        searchInput.focus();
    });

    searchInput.addEventListener('focus', function() {
        searchIcon.style.transform = 'rotate(90deg)';
        searchIcon.style.color = '#007bff';
    });

    searchInput.addEventListener('blur', function() {
        if (searchInput.value === '') {
            searchIcon.style.transform = 'rotate(0deg)';
            searchIcon.style.color = '#999';
        }
    });
  });



//contact us section

document.getElementById('contact-form').addEventListener('submit', function(event) {
    event.preventDefault();

    let name = document.getElementById('name').value.trim();
    let email = document.getElementById('email').value.trim();
    let phone = document.getElementById('phone').value.trim();
    let message = document.getElementById('message').value.trim();

    if (!name || !email || !phone || !message) {
        alert('All fields are required!');
        return;
    }

    if (!validateEmail(email)) {
        alert('Please enter a valid email address.');
        return;
    }

    if (!validatePhone(phone)) {
        alert('Please enter a valid phone number.');
        return;
    }

    // Submit the form if all validations pass
    alert('Form submitted successfully!');
    this.submit();
});

function validateEmail(email) {
    const re = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
    return re.test(email);
}

function validatePhone(phone) {
    const re = /^[0-9]{10}$/;
    return re.test(phone);
}
