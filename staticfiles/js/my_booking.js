$(document).ready(function () {
    $("#selectflight").click(function () {
        
        var Url=localStorage.getItem("url");
        const id = (document.getElementById('flight_id'))
        const start = (document.getElementById('start'))
        const goal  = (document.getElementById('goal'))
        const duration  = (document.getElementById('duration'))
        const out1 = document.getElementById('card-header');
        out1.innerHTML = start.value;
    
        const flight_id= id.textContent
        localStorage.setItem('id',flight_id)
        window.open('/flight/booking/' + Url );
        $.ajax({
            url:  '/flight/detail/' + flight_id,
            type:  'get',
            dataType:  'json',
            success: function  (data) {
                console.log(data)
                let rows =  '';
                data.flight.forEach(flight =>{
                    rows += `

                    <p>${paths.city_id}</p>


                `});
                $('#card-header').html(rows);
            },
            error: function(error){
                console("Error ${error}")
            }
        })
    })
});

