
$(document).ready(function () {
    $("#selectflight").click(function () {
        
        const id = (document.getElementById('flight_id'))
        const flight_id= id.textContent
        localStorage.setItem('id',flight_id)
        window.open('/flight/booking');
        
    })
});
