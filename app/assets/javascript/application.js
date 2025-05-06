import "bootstrap";

// Initialize all carousels on page load
document.addEventListener("DOMContentLoaded", () => {
    const carousels = document.querySelectorAll('.carousel');
    carousels.forEach(carousel => {
      new bootstrap.Carousel(carousel);
    });
  });
  
  // Reinitialize carousels after Turbo page loads
  document.addEventListener("turbo:load", () => {
    const carousels = document.querySelectorAll('.carousel');
    carousels.forEach(carousel => {
      new bootstrap.Carousel(carousel);
    });
  });