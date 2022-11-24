$(document).ready(function () {
    $("#selectflight").click(function () {
        
        let start = $("#data-invi").find("span[id=departure]").text().trim();
        var goal= $("#data-invi").find("p[id=goal]").text().trim();
        var flightDate= $("#data-invi").find("p[flightDate").text();
        var seatclass= $("#data-invi").find("p[id=seatclass]").text();
        let link = $("#data-invi").find("span[id=link-book]").text();
        
        window.open('/flight/booking/' + start );
    });
});


function getData()
{
    //gettting the values
    var flight = document.getElementById("flights").value;
    var path= document.getElementById("paths").value; 
    var departure= document.getElementById("cities").value; 
    var destination= document.getElementById("cities2").value; 
    //saving the values in local storage
    localStorage.setItem("flights", flight);
    localStorage.setItem("paths", path);
    localStorage.setItem("cities", departure);
    localStorage.setItem("cities2", destination);   
}