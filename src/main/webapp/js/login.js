document.addEventListener('DOMContentLoaded', () => {
    const wrapper = document.querySelector('.wrapper');
    const loginLink = document.querySelector('.login-link');
    const registerLink = document.querySelector('.register-link');
    const iconClose = document.querySelector('.icon-close');
    const inputs = document.querySelectorAll('.input-box input');

    registerLink.addEventListener('click', () => {
        wrapper.classList.add('active');
    });

    loginLink.addEventListener('click', () => {
        wrapper.classList.remove('active');
    });

    iconClose.addEventListener('click', () => {
        wrapper.classList.remove('active-popup');
    });

    inputs.forEach(input => {
        input.addEventListener('input', () => {
            if (input.value !== '') {
                input.classList.add('has-value');
            } else {
                input.classList.remove('has-value');
            }
        });
    });
    
     if (loginLink) {
        loginLink.addEventListener('click', () => {
            wrapper.classList.remove('active-popup');
        });
    }

    if (registerLink) {
        registerLink.addEventListener('click', () => {
            wrapper.classList.add('active-popup');
        });
    }
});