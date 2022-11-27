
$(document).ready(function () {
    $("#selectflight1").click(function () {
        
        const id = (document.getElementById('flight_id1'))
        const flight_id= id.textContent
        localStorage.setItem('id',flight_id)
        window.open('/flight/booking');
        
    })
    $("#selectflight2").click(function () {
        
        const id = (document.getElementById('flight_id2'))
        const flight_id= id.textContent
        localStorage.setItem('id',flight_id)
        window.open('/flight/booking');
        
    })
    $("#selectflight3").click(function () {
        
        const id = (document.getElementById('flight_id3'))
        const flight_id= id.textContent
        localStorage.setItem('id',flight_id)
        window.open('/flight/booking');
        
    })
});
