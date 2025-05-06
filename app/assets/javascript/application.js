import "bootstrap";

document.addEventListener('DOMContentLoaded', function () {
  var myCarousel = document.querySelector('#carouselExampleSlidesOnly');
  var carousel = new bootstrap.Carousel(myCarousel, {
    interval: 200,
    ride: 'carousel'
  });
});