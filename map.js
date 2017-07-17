              /*/*
              * Classname e.g. NewClass.java
              *
              * 
              *
              * Date 12/7/2017
              *
              * @reference http://jsfiddle.net/peter/drytwvL8/
              * @reference https://developers.google.com/maps/documentation/javascript/mysql-to-maps
              * 
              *
              */     
    var marker;
    var infowindow;
    var google;
    var i;
    var customLabel = {
        Cafe: {
          label: 'C'
        },
        Supermarket: {
          label: 'S'
        },
        Restaurant: {
          label: 'R'
        }
      };

        function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: new google.maps.LatLng(53.347525, -6.254153),
          zoom: 15
        });
        var infoWindow = new google.maps.InfoWindow;

          // Change this depending on the name of your PHP or XML file
          downloadUrl('/location.php', function(data) {
            var xml = data.responseXML;
            var markers = xml.documentElement.getElementsByTagName('marker');
            Array.prototype.forEach.call(markers, function(markerElem) {
              var id = markerElem.getAttribute('id');
              var name = markerElem.getAttribute('name');
              var address = markerElem.getAttribute('address');
              var type = markerElem.getAttribute('type');
              var foodtype = markerElem.getAttribute('foodtype');
              var point = new google.maps.LatLng(
                  parseFloat(markerElem.getAttribute('lat')),
                  parseFloat(markerElem.getAttribute('long')));

              var infowincontent = document.createElement('div');
              var strong = document.createElement('strong');
              strong.textContent = name
              infowincontent.appendChild(strong);
              infowincontent.appendChild(document.createElement('br'));

              var text = document.createElement('text');
              text.textContent = address
              infowincontent.appendChild(text);
              infowincontent.appendChild(document.createElement('br'));
              
              var food = document.createElement('food');
              food.textContent = foodtype
              infowincontent.appendChild(food);
              
              var icon = customLabel[type] || {};
              var marker = new google.maps.Marker({
                map: map,
                position: point,
                label: icon.label
              });
              marker.addListener('click', function() {
                infoWindow.setContent(infowincontent);
                /**
                * @reference
                http://jsfiddle.net/peter/drytwvL8/
                Pan and zoom code from alternate source
                */ 
                infoWindow.open(map, marker);
                map.panTo(this.getPosition());
                map.setZoom(18);
              });
            });
                var category = document.getAttribute('type');
            for (i = 0; i < marker.length; i++) {
            marker = marker[i];
            // If is same category or category not picked
            if (marker.category == category || category.length === 0) {
            marker.setVisible(true);
            }
            // Categories don't match 
            else {
            marker.setVisible(false);
            }
            }
            
          });
        }



      function downloadUrl(url, callback) {
        var request = window.ActiveXObject ?
            new ActiveXObject('Microsoft.XMLHTTP') :
            new XMLHttpRequest;

        request.onreadystatechange = function() {
          if (request.readyState == 4) {
            request.onreadystatechange = doNothing;
            callback(request, request.status);
          }
        };

        request.open('GET', url, true);
        request.send(null);
      }
      
      
      function filtermarkers (type) {
      for (i = 0; i < marker.length; i++) {
      marker = marker[i];
      // If is same category or category not picked
      if (marker.type == type || type.length === 0) {
            marker.setVisible(true);
      }
        // Categories don't match 
      else {
            marker.setVisible(false);
        }
    }
}
      
      function doNothing() {}