function initialize() {
    var mapOptions = {
        zoom: 12,
        center: new google.maps.LatLng(1.3, 103.8)
    };
    var map = new google.maps.Map(document.getElementById('map-canvas'),
                                mapOptions);

    setMarkers(map, beaches);
    setMarkers2(map, hospitals);
};

/**
* Data for the markers consisting of a name, a LatLng and a zIndex for
* the order in which these markers should display on top of each
* other.
*/
var beaches = [
  ['Watsons', 1.332654, 103.849420, 11],
  ['Unity NTUC', 1.294149, 103.852807, 10],
  ['Thomson Plaza', 1.354637, 103.830935, 9],
  ['Pan-Malayan Pharmaceuticals', 1.337768, 103.884673, 7],
  ['Guardian1', 1.301949, 103.839829, 6],
  ['Guardian2', 1.392002, 103.904984, 5],
  ['Guardian3', 1.383911, 103.880010, 4],
  ['NTUC Healthcare Unity', 1.435152, 103.787195, 3],
  ['Pasture Pharma Pte Ltd', 1.327445, 103.753555, 2],
  ['Guardian Harbourfront Centre', 1.264553, 103.819304, 1],
  ['Guardian4', 1.331731, 103.948049, 12],
  ['Guardian5', 1.362159, 103.990051, 13],
  ['Guardian6', 1.313111, 103.923488, 14],
  ['Guardian7', 1.341406, 103.691314, 16]
];
var hospitals = [
  ['Gleneagles Hospital', 1.307063, 103.819973, 1],
  ['Singapore General Hospital', 1.278978, 103.834207, 2],
  ['Mount Elizabeth Hospital', 1.304574, 103.835553, 3],
  ['Tan Tock Seng Hospital', 1.321324, 103.845595, 4],
  ['National University Hospital', 1.294736, 103.782853, 5],
  ['Mount Alvernia Hospital', 1.341499, 103.837625, 6],
  ['Alexandra Hospital', 1.287587, 103.801364, 7],
  ['Khoo Teck Puat Hospital', 1.423798, 103.838436, 8],
  ['Changi General  Hospital', 1.340711, 103.949352, 9],
  ['Thomson Medical Centre Pte Ltd', 1.325389, 103.841475, 10],
];
function setMarkers(map, locations) {
    var image = {
        url: 'images/pharmacyicon.gif',

        size: new google.maps.Size(20, 32),

        origin: new google.maps.Point(0, 0),

        anchor: new google.maps.Point(0, 32)
    };


    var shape = {
        coord: [1, 1, 1, 20, 18, 20, 18, 1],
        type: 'poly'
    };
    for (var i = 0; i < locations.length; i++) {
        var beach = locations[i];
        var myLatLng = new google.maps.LatLng(beach[1], beach[2]);
        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            icon: image,
            shape: shape,
            title: beach[0],
            zIndex: beach[3]
        });
        if (beach[0] == 'Watsons') {
            var myLatLng1 = new google.maps.LatLng(1.332654, 103.849420);
            var contentString1 = '<b>Address:</b>' + '178,ToaPayohCentral, Singapore' +'<br />' + '<b>Pincode:</b>' +'310178' +'<br/>' + '<b>Phone:</b>' +'6259 9749';
            var infowindow1 = new google.maps.InfoWindow({
                content: contentString1
            });
            var marker1 = new google.maps.Marker({
                position: myLatLng1,
                map: map,
                icon: image,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker1, 'click', function () {
                infowindow1.open(map, marker1);
            });
        }
        else if (beach[0] == 'Unity NTUC') {
            var myLatLng2 = new google.maps.LatLng(1.294149, 103.852807);
            var contentString2 = '<b>Address:</b>' + 'UnityNTUC, Singapore' + '<br />' + '<b>Pincode:</b>' + '179103';
              
            var infowindow2 = new google.maps.InfoWindow({
                content: contentString2
            });
            var marker2 = new google.maps.Marker({
                position: myLatLng2,
                map: map,
                icon: image,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker2, 'click', function () {
                infowindow2.open(map, marker2);
            });
        }
        else if (beach[0] == 'Thomson Plaza') {
            var myLatLng3 = new google.maps.LatLng(1.354637, 103.830935);
            var contentString3 = '<b>Address:</b>' + 'ThomsonPlaza,301,Upper,ThomsonRoad' + '<br />' + '<b>Pincode:</b>' + '574408' + '<br/> ' + '<b>Phone Number</b> ' + '64549133' + '<br />' + '<b>Website</b> ' + '<a href =http://www.thomsonplaza.com.sg> Thomson Plaza </a>';  
            var infowindow3 = new google.maps.InfoWindow({
                content: contentString3
            });
            var marker3 = new google.maps.Marker({
                position: myLatLng3,
                map: map,
                icon: image,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker3, 'click', function () {
                infowindow3.open(map, marker3);
            });
        }
        
        else if (beach[0] == 'Pan-Malayan Pharmaceuticals') {
            var myLatLng5 = new google.maps.LatLng(1.337768, 103.884673);
            var contentString5 = '<b>Address:</b>' + '138,JooSengRoad' + '<br />' + '<b>Pincode:</b>' + '368361' + '<br/> ' + '<b>Phone Number</b> ' + '65940788' + '<br />' + '<b>Website</b>' + '<a href =http://www.panmalayan.com.sg>Pan-MalayanPharmaceuticals </a>';

            var infowindow5 = new google.maps.InfoWindow({
                content: contentString5
            });
            var marker5 = new google.maps.Marker({
                position: myLatLng5,
                map: map,
                icon: image,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker5, 'click', function () {
                infowindow5.open(map, marker5);
            });
        }
        else if (beach[0] == 'Guardian1') {
            var myLatLng6 = new google.maps.LatLng(1.301949, 103.839829);
            var contentString6 = '<b>Address:</b>' + ' 68,OrchardRd' + '<br />' + '<b>Pincode:</b>' + '238839' + '<br /> ' + '<b>Phone Number</b> ' + '63380813' + '<br />' + '<b>Website: </b>' + '<a href =http://www.guardian.com.sg>Guardian</a>';
            var infowindow6 = new google.maps.InfoWindow({
                content: contentString6
            });
            var marker6 = new google.maps.Marker({
                position: myLatLng6,
                map: map,
                icon: image,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker6, 'click', function () {
                infowindow6.open(map, marker6);
            });
        }
        else if (beach[0] == 'Guardian2') {
            var myLatLng7 = new google.maps.LatLng(1.392002, 103.904984);
            var contentString7 = '<b>Address:</b>' + '11,RivervaleCrescent' + '<br />' + '<b>Pincode:</b>' + '545082' + '<br /> ' + '<b>Phone Number</b> ' + '63846509' + '<br />' + '<b>Website: </b>' + '<a href =http://www.guardian.com.sg>Guardian</a>';

            var infowindow7 = new google.maps.InfoWindow({
                content: contentString7
            });
            var marker7 = new google.maps.Marker({
                position: myLatLng7,
                map: map,
                icon: image,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker7, 'click', function () {
                infowindow7.open(map, marker7);
            });
        }
        else if (beach[0] == 'Guardian3') {
            var myLatLng8 = new google.maps.LatLng(1.383911, 103.880010);
            var contentString8 = '<b>Address:</b>' + ' Sengkang Square' + '<br />' + '<b>Pincode:</b>' + '545078' + '<br /> ' + '<b>Phone Number</b> ' + '6315 9031' + '<br />' + '<b>Website: </b>' + '<a href =http://www.guardian.com.sg>Guardian</a>';

            var infowindow8 = new google.maps.InfoWindow({
                content: contentString8
            });
            var marker8 = new google.maps.Marker({
                position: myLatLng8,
                map: map,
                icon: image,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker8, 'click', function () {
                infowindow8.open(map, marker8);
            });
        }
        else if (beach[0] == 'NTUC Healthcare Unity') {
            var myLatLng9 = new google.maps.LatLng(1.435152, 103.787195);
            var contentString9 = '<b>Address:</b>' + '900,WoodlandsDr' + '<br />' + '<b>Pincode:</b>' + '730900' + '<br /> ' + '<b>Phone Number</b> ' + '62194898' + '<br />' + '<b>Website: </b>' + '<a href ="http://www.ntuchealth.com.sg">NTUC Healthcare Unity</a>';
         var infowindow9 = new google.maps.InfoWindow({
                content: contentString9
            });
            var marker9 = new google.maps.Marker({
                position: myLatLng9,
                map: map,
                icon: image,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker9, 'click', function () {
                infowindow9.open(map, marker9);
            });
        }
        if (beach[0] == 'Pasture Pharma Pte Ltd') {
            var myLatLng10 = new google.maps.LatLng(1.327445, 103.753555);
            var contentString10 = '<b>Address:</b>' + '8,BoonLayWay' + '<br />' + '<b>Pincode:</b>' + '609964' + '<br />' + '<b>Phone Number</b> ' + '65156561' + '<br />' + '<b>Website: </b>' + '<a href ="http://www.pasturegroup.com/index.html">Pasture Pharma Pte Ltd</a>';
            var infowindow10 = new google.maps.InfoWindow({
                content: contentString10
            });
            var marker10 = new google.maps.Marker({
                position: myLatLng10,
                map: map,
                icon: image,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker10, 'click', function () {
                infowindow10.open(map, marker10);
            });
        }
        else if (beach[0] == 'Guardian Harbourfront Centre') {
            var myLatLng11 = new google.maps.LatLng(1.264553, 103.819304);
            var contentString11 = '<b>Address:</b>' + '1 MaritimeSquare' + '<br />' + '<b>Pincode:</b>' + '099253' + '<br />' + '<b>Website: </b>' + '<a href ="http://www.guardian.com.sg">Guardian</a>';
            var infowindow11 = new google.maps.InfoWindow({
                content: contentString11
            });
            var marker11 = new google.maps.Marker({
                position: myLatLng11,
                map: map,
                icon: image,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker11, 'click', function () {
                infowindow11.open(map, marker11);
            });
        }
        else if (beach[0] == 'Guardian4') {
            var myLatLng12 = new google.maps.LatLng(1.331731, 103.948049);
            var contentString12 = '<b>Address:</b>' + '348,BedokRoad' + '<br />' + '<b>Pincode:</b>' + '469560' + '<br />' + '<b>Phone : </b>' + '62438441'+ '<br />' + '<b>Website: </b>' + '<a href ="http://www.guardian.com.sg">Guardian</a>';
            var infowindow12 = new google.maps.InfoWindow({
                content: contentString12
            });
            var marker12 = new google.maps.Marker({
                position: myLatLng12,
                map: map,
                icon: image,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker12, 'click', function () {
                infowindow12.open(map, marker12);
            });
        }
        else if (beach[0] == 'Guardian5') {
            var myLatLng13 = new google.maps.LatLng(1.362159, 103.990051);
            var contentString13 = '<b>Address:</b>' + '210,NewUpperChangiRd' + '<br />' + '<b>Pincode:</b>' + '460210' + '<br />' + '<b>Phone : </b>' + '64440072' + '<br />' + '<b>Website: </b>' + '<a href ="http://www.guardian.com.sg">Guardian</a>';
            var infowindow13 = new google.maps.InfoWindow({
                content: contentString13
            });
            var marker13 = new google.maps.Marker({
                position: myLatLng13,
                map: map,
                icon: image,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker13, 'click', function () {
                infowindow13.open(map, marker13);
            });
        }
        else if (beach[0] == 'Guardian6') {
            var myLatLng14 = new google.maps.LatLng(1.313111, 103.923488);
            var contentString14 = '<b>Address:</b>' + 'Blk59, MarineTerrace' + '<br />' + '<b>Pincode:</b>' + '440059' + '<br />' + '<b>Phone : </b>' + '64418013' + '<br />' + '<b>Website: </b>' + '<a href ="http://www.guardian.com.sg">Guardian</a>';
            var infowindow14 = new google.maps.InfoWindow({
                content: contentString14
            });
            var marker14 = new google.maps.Marker({
                position: myLatLng14,
                map: map,
                icon: image,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker14, 'click', function () {
                infowindow14.open(map, marker14);
            });
        }
        
        else if (beach[0] == 'Guardian7') {
            var myLatLng16 = new google.maps.LatLng(1.341406, 103.691314);
            var contentString16 = '<b>Address:</b>' + 'Blk503,JurongWest Ave1' + '<br />' + '<b>Pincode:</b>' + '640503' + '<br />' + '<b>Phone : </b>' + '64252931' + '<br />' + '<b>Website: </b>' + '<a href ="http://www.guardian.com.sg">Guardian</a>';
            var infowindow16 = new google.maps.InfoWindow({
                content: contentString16
            });
            var marker16 = new google.maps.Marker({
                position: myLatLng16,
                map: map,
                icon: image,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker16, 'click', function () {
                infowindow16.open(map, marker16);
            });
        }

    }
}
function setMarkers2(map, locations1) {
    var image1 = {
        url: 'images/hospitalicon.gif',
        size: new google.maps.Size(63, 42),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(31, 21)
    };


    var shape = {
        coord: [13, 3, 48, 3, 48, 38, 14, 38],
        type: 'poly'
    };
    for (var i = 0; i < locations1.length; i++) {
        var beach = locations1[i];
        var myLatLng = new google.maps.LatLng(beach[1], beach[2]);
        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            icon: image1,
            shape: shape,
            title: beach[0],
            zIndex: beach[3]
        });
        if (beach[0] == 'Gleneagles Hospital') {
            var myLatLng17 = new google.maps.LatLng(1.307063, 103.819973);
            var contentString17 = '<b>Address: </b>' + '6A,NapierRd' + '<br />' + '<b>Pincode:</b>' + '258500' + '<br />' + '<b>Phone : </b>' + '64737222' + '<br />' + '<b>Emergency HotLine : </b>' + '+65757575' + '<br />' + '<b>Website: </b>' + '<a href ="http://www.gleneagles.com.sg">Gleneagles</a>' + '<br />' + '<b>Appointment: </b>' + '<a href ="http://gleneagles.com.sg/en/AppointmentBooking.aspx">BookanAppointment</a>';
            var infowindow17 = new google.maps.InfoWindow({
                content: contentString17
            });
            var marker17 = new google.maps.Marker({
                position: myLatLng17,
                map: map,
                icon: image1,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker17, 'click', function () {
                infowindow17.open(map, marker17);
            });
        }
        else if (beach[0] == 'Singapore General Hospital') {
            var myLatLng18 = new google.maps.LatLng(1.278978, 103.834207);
            var contentString18 = '<b>Address:</b>' + 'Outram Rd' + '<br />' + '<b>Pincode:</b>' + '169608' + '<br />' + '<b>Phone : </b>' + '62223322' + '<br />' + '<b>Emergency HotLine : </b>' + '+63214311' + '<br />' + '<b>Website:</b>' + '<a href ="http://www.sgh.com.sg/Pages/default.aspx">SGH</a>' + '<br />' + '<b>Appointment: </b>' + '<a href ="https://eappt.singhealth.com.sg/default.aspx?Institution=SGH&AspxAutoDetectCookieSupport=1">BookanAppointment</a>';
            var infowindow18 = new google.maps.InfoWindow({
                content: contentString18
            });
            var marker18 = new google.maps.Marker({
                position: myLatLng18,
                map: map,
                icon: image1,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker18, 'click', function () {
                infowindow18.open(map, marker18);
            });
        }
        else if (beach[0] == 'Mount Elizabeth Hospital') {
            var myLatLng19 = new google.maps.LatLng(1.304574, 103.835553);
            var contentString19 = '<b>Address:</b>' + '3,MtElizabeth' + '<br />' + '<b>Pincode:</b>' + '228510' + '<br />' + '<b>Phone : </b>' + '67372666' + '<br />' + '<b>EmergencyHotLine : </b>' + '+6562500000' + '<br />' + '<b>Website:</b>' + '<a href ="http://mountelizabeth.com.sg/en/default.aspx">Mount ELizabeth</a>' + '<br />' + '<b>Appointment: </b>' + '<a href ="http://mountelizabeth.com.sg/en/AppointmentBooking.aspx">BookanAppointment</a>';
            var infowindow19 = new google.maps.InfoWindow({
                content: contentString19
            });
            var marker19 = new google.maps.Marker({
                position: myLatLng19,
                map: map,
                icon: image1,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker19, 'click', function () {
                infowindow19.open(map, marker19);
            });
        }
        else if (beach[0] == 'Tan Tock Seng Hospital') {
            var myLatLng20 = new google.maps.LatLng(1.321324, 103.845595);
            var contentString20 = '<b>Address:</b>' + ' 11,JalanTanTockSeng' + '<br />' + '<b>Pincode:</b>' + '308433' + '<br />' + '<b>Phone : </b>' + '62566011' + '<br />' + '<b>Website:</b>' + '<a href ="http://www.ttsh.com.sg/">TanTockSeng</a>' + '<br />' + '<b>Appointment: </b>' + '<a href ="https://www.ttsh.com.sg/requestappt/">BookanAppointment</a>';
            var infowindow20 = new google.maps.InfoWindow({
                content: contentString20
            });
            var marker20 = new google.maps.Marker({
                position: myLatLng20,
                map: map,
                icon: image1,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker20, 'click', function () {
                infowindow20.open(map, marker20);
            });
        }
        else if (beach[0] == 'National University Hospital') {
            var myLatLng21 = new google.maps.LatLng(1.294736, 103.782853);
            var contentString21 = '<b>Address:</b>' + '5,LowerKentRidgeRd' + '<br />' + '<b>Pincode:</b>' + '119074' + '<br />' + '<b>Phone : </b>' + '67795555' + '<br />' + '<b>Website:</b>' + '<a href ="http://www.nuh.com.sg/">NUH</a>' + '<br />' + '<b>Appointment: </b>' + '<a href ="https://www.nuh.com.sg/patients-and-visitors/appointments/request-for-new-appointment.html">BookanAppointment</a>';
            var infowindow21 = new google.maps.InfoWindow({
                content: contentString21
            });
            var marker21 = new google.maps.Marker({
                position: myLatLng21,
                map: map,
                icon: image1,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker21, 'click', function () {
                infowindow21.open(map, marker21);
            });
        }
        else if (beach[0] == 'Mount Alvernia Hospital') {
            var myLatLng22 = new google.maps.LatLng(1.341499, 103.837625);
            var contentString22 = '<b>Address:</b>' + '820,ThomsonRd' + '<br />' + '<b>Pincode:</b>' + '574623' + '<br />' + '<b>Phone : </b>' + '63476688' + '<br />' + '<b>Website:</b>' + '<a href ="https://www.mtalvernia-hospital.org//">MtAlvernia</a>';
            var infowindow22 = new google.maps.InfoWindow({
                content: contentString22
            });
            var marker22 = new google.maps.Marker({
                position: myLatLng22,
                map: map,
                icon: image1,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker22, 'click', function () {
                infowindow22.open(map, marker22);
            });
        }
        else if (beach[0] == 'Alexandra Hospital') {
            var myLatLng23 = new google.maps.LatLng(1.287587, 103.801364);
            var contentString23 = '<b>Address:</b>' + '378,AlexandraRd' + '<br />' + '<b>Pincode:</b>' + '159964' + '<br />' + '<b>Phone : </b>' + '64722000' + '<br />' + '<b>Website:</b>' + '<a href ="http://www.ah.com.sg/">AlexandraHospital</a>' + '<br />' + '<b>Appointment: </b>' + '<a href ="https://www.ah.com.sg/make-an-appointment/">BookanAppointment</a>'; 
            var infowindow23 = new google.maps.InfoWindow({
                content: contentString23
            });
            var marker23 = new google.maps.Marker({
                position: myLatLng23,
                map: map,
                icon: image1,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker23, 'click', function () {
                infowindow23.open(map, marker23);
            });
        }
        else if (beach[0] == 'Khoo Teck Puat Hospital') {
            var myLatLng24 = new google.maps.LatLng(1.423798, 103.838436);
            var contentString24 = '<b>Address: </b>' + '90,YishunCentral' + '<br />' + '<b>Pincode:</b>' + '768828' + '<br />' + '<b>Phone : </b>' + '65558000' + '<br />' + '<b>Website:</b>' + '<a href ="https://www.ktph.com.sg/main/home">KhooTeckPuat</a>' + '<br />' + '<b>Appointment: </b>' + '<a href ="http://www.ktph.com.sg/main/iama_details/76/appointment">BookanAppointment</a>';
            var infowindow24 = new google.maps.InfoWindow({
                content: contentString24
            });
            var marker24 = new google.maps.Marker({
                position: myLatLng24,
                map: map,
                icon: image1,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker24, 'click', function () {
                infowindow24.open(map, marker24);
            });
        }
        else if (beach[0] == 'Changi General  Hospital') {
            var myLatLng25 = new google.maps.LatLng(1.340711, 103.949352);
            var contentString25 = '<b>Address: </b>' + '2,SimeiStreet ' + '<br />' + '<b>Pincode:</b>' + '529889' + '<br />' + '<b>Phone : </b>' + '67888833' + '<br />' + '<b>Website:</b>' + '<a href ="http://www.cgh.com.sg/Pages/Home.aspx">ChangiGeneral-Hospital</a>' + '<br />' + '<b>Appointment: </b>' + '<a href ="http://www.cgh.com.sg/Patients_Visitors/E_Services/Pages/appt_booking_make.aspx">BookanAppointment</a>';
            var infowindow25 = new google.maps.InfoWindow({
                content: contentString25
            });
            var marker25 = new google.maps.Marker({
                position: myLatLng25,
                map: map,
                icon: image1,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker25, 'click', function () {
                infowindow25.open(map, marker25);
            });
        }
        else if (beach[0] == 'Thomson Medical Centre Pte Ltd') {
            var myLatLng26 = new google.maps.LatLng(1.325389, 103.841475)
            var contentString26 = '<b>Address: </b>' + '339,ThomsonRd ' + '<br />' + '<b>Pincode:</b>' + '307677' + '<br />' + '<b>Phone : </b>' + '62502222' + '<br />' + '<b>Website:</b>' + '<a href ="http://www.thomsonmedical.com/">Thomson-MedicalCentre</a>' + '<br />' + '<b>Appointment: </b>' + '<a href ="http://www.thomsonmedical.com/book-an-appointment/">BookanAppointment</a>';
            var infowindow26 = new google.maps.InfoWindow({
                content: contentString26
            });
            var marker26 = new google.maps.Marker({
                position: myLatLng26,
                map: map,
                icon: image1,
                shape: shape,
                title: beach[0],
                zIndex: beach[3]
            });
            google.maps.event.addListener(marker26, 'click', function () {
                infowindow26.open(map, marker26);
            });
        }
    }
}
google.maps.event.addDomListener(window, 'load', initialize);
