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
    const id1 = (document.getElementById('flight_id1'))
    const id2 = (document.getElementById('flight_id2'))
    const id3 = (document.getElementById('flight_id3'))
    $.ajax({
        url:  '/flight/detail/' + id1.textContent,
        type:  'get',
        dataType:  'json',
        success: function  (data) {
            console.log(data)
            $('#price1').html(data.flight_detail.price);
        }
    })
    $.ajax({
        url:  '/flight/detail/' + id2.textContent,
        type:  'get',
        dataType:  'json',
        success: function  (data) {
            console.log(data)
            $('#price2').html(data.flight_detail.price);
        }
    })
    $.ajax({
        url:  '/flight/detail/' + id3.textContent,
        type:  'get',
        dataType:  'json',
        success: function  (data) {
            console.log(data)
            $('#price3').html(data.flight_detail.price);
        }
    })
    





});
