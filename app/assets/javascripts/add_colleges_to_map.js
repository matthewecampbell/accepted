$(document).ready(function(){
  jQuery.fn.exists = function(){return this.length>0;}
  if($('#all-sites-map').exists()){
    initMap()
  };
});

function initMap() {
  mapDiv = document.getElementById("all-sites-map")
  var lat = parseFloat(mapDiv.dataset.lat)
  var long = parseFloat(mapDiv.dataset.long)
  var myLatLng = new google.maps.LatLng(lat, long);

  var map = new google.maps.Map(document.getElementById('all-sites-map'), {
    zoom: 12,
    center: myLatLng
  });

  var marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    title: 'Hello World!'
  });
}

// initMap(lat, long)
//      //
//     //  $.ajax({
//     //      url: "http://acceptedapi.herokuapp.com/api/v1/colleges/1.json",
//     //      method: "GET",
//     //      dataType: "JSON",
//     //      success: function(data){
//     //                initMap(data);
//     //              }
//     //  });
//      //
//      function initMap(data1, data2){
//        var mapDiv = document.getElementById('all-sites-map');
//
//        var map = new google.maps.Map(mapDiv, {
//            center: {lat: 39.83, lng: -98.58},
//            zoom: 5
//        });
//
//        var setMarkers = function(data1, data2){
//           //  for (var i = 0; i < data.length; i++){
//              //
//             //  var infowindow = new google.maps.InfoWindow({
//             //    content: contentString
//             //  });
//             //
//              var collegeLatLng = { lng: long, lat: lat };
//              var marker = new google.maps.Marker({
//                      position: collegeLatLng,
//                      map: map,
//                      title: 'Hello World!',
//              });
//
//              google.maps.event.addListener(marker, 'click', function(){
//                infowindow.setContent(this.info);
//                infowindow.open(map, this);
//              });
//           //  }
//        };
//
//        setMarkers(data1, data2);
//      };
