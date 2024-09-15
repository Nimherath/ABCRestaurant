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

//Text Animation
document.addEventListener('DOMContentLoaded', function() {
  const heroSection = document.querySelector('.hero-section');
  const headings = heroSection.querySelectorAll('.ml12');
  const button = heroSection.querySelector('button');

  // Use GSAP for animations
  gsap.fromTo(button, 
      { opacity: 0, y: 20 }, 
      { 
          opacity: 1, 
          y: 0, 
          duration: 0.6, 
          ease: 'power2.out',
          scrollTrigger: {
              trigger: heroSection,
              start: 'top 80%', 
              toggleActions: 'play none none none'
          }
      }
  );

  // Animation for headings
  gsap.fromTo(headings, 
      { opacity: 0, y: 20 }, 
      { 
          opacity: 1, 
          y: 0, 
          duration: 1.5, 
          ease: 'power2.out', 
          stagger: 0.2, 
          scrollTrigger: {
              trigger: heroSection,
              start: 'top 80%', 
              toggleActions: 'play none none none'
          }
      }
  );
});


//Slider Animation
let currentIndex = 0;
let direction = 1; // 1 for forward, -1 for backward

const slides = document.querySelectorAll('.slide');
const totalSlides = slides.length;

function showSlide(index) {
  const slidesContainer = document.querySelector('.slides');
  slidesContainer.style.transform = `translateX(-${index * 100}%)`;
}

function nextSlide() {
  if (currentIndex === totalSlides - 1) {
    direction = -1; // Change direction to backward
  } else if (currentIndex === 0) {
    direction = 1; // Change direction to forward
  }
  currentIndex += direction;
  showSlide(currentIndex);
}

function prevSlide() {
  if (currentIndex === 0) {
    direction = 1; // Change direction to forward
  } else if (currentIndex === totalSlides - 1) {
    direction = -1; // Change direction to backward
  }
  currentIndex -= direction;
  showSlide(currentIndex);
}

// Optional: auto slide
setInterval(nextSlide, 2000); // Slide every 2.5 seconds

// Initial display
showSlide(currentIndex);



// Scroll to top button
document.addEventListener('DOMContentLoaded', () => {
    const scrollToTopButton = document.getElementById('scrollToTopButton');

    window.addEventListener('scroll', () => {
        if (window.scrollY > 300) {
            scrollToTopButton.classList.add('visible');
        } else {
            scrollToTopButton.classList.remove('visible');
        }
    });

    scrollToTopButton.addEventListener('click', () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
});

//product card animation

  document.addEventListener("DOMContentLoaded", function() {
    const observerOptions = {
      root: null, // Use the viewport as the container
      rootMargin: "0px",
      threshold: 0.2 // Trigger when 10% of the element is visible
    };

    const observer = new IntersectionObserver((entries, observer) => {
      entries.forEach((entry, index) => {
        if (entry.isIntersecting) {
          setTimeout(() => {
            entry.target.classList.add("animate");
            observer.unobserve(entry.target);
          }, index * 100); // Delay each item by 100ms
        }
      });
    }, observerOptions);

    document.querySelectorAll('.product-grid').forEach(grid => {
      observer.observe(grid);
    });
  });