// like-element
// $(document).ready(function () {
//     $('.like-icon').on('click', function () {
//         $(this).toggleClass('wishlist-active');
//     });
// });

// header
// $(window).scroll(function() {    
//     var scroll = $(window).scrollTop();

//     if (scroll >= 50) {
//         $("header").addClass("fixedheader");
//     } else {
//         $("header").removeClass("fixedheader");
//     }
// });

// css-menu
$(document).on('ready', function() {
  // Map Center
  var myLatLng = new google.maps.LatLng(32.07206917625161, -81.13390268058475);
  // General Options
  var mapOptions = {
    zoom: 12,
    center: myLatLng,
    mapTypeId: google.maps.MapTypeId.RoadMap
  };
  var map = new google.maps.Map(document.getElementById('map'),mapOptions);
  // Polygon Coordinates
  var coordinates = [
    new google.maps.LatLng(32.07206917625161, -81.13390268058475),
    new google.maps.LatLng(32.04064386441295, -81.14660562247929),
    new google.maps.LatLng(32.02259853170128, -81.08858407706913)
  ];
  // Styling & Controls
  myPolygon = new google.maps.Polygon({
    paths: coordinates,
    draggable: true, // turn off if it gets annoying
    editable: true,
    strokeColor: '#FF0000',
    strokeOpacity: 0.8,
    strokeWeight: 2,
    fillColor: '#FF0000',
    fillOpacity: 0.35
  });

  myPolygon.setMap(map);
});


// $(document).on('ready', function() {
//   // Map Center
//   var myLatLng = new google.maps.Map(document.getElementById('map');
//   // General Options
//   var mapOptions = {
//     zoom: 12,
//     center: myLatLng,
//     mapTypeId: google.maps.MapTypeId.RoadMap
//   };
//   var map = new google.maps.Map(document.getElementById('map'),mapOptions);
//   // Polygon Coordinates
//   var coordinates = [
//     lat: coordinates[0].lat,
//     lng: coordinates[0].lng
//   ];
//   // Styling & Controls
//   myPolygon = new google.maps.Polygon({
//     paths: coordinates,
//     draggable: true, // turn off if it gets annoying
//     editable: true,
//     strokeColor: '#FF0000',
//     strokeOpacity: 0.8,
//     strokeWeight: 2,
//     fillColor: '#FF0000',
//     fillOpacity: 0.35
//   });

//   myPolygon.setMap(map);
// });