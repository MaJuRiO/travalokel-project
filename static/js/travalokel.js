$(document).ready( function () {
    $("#txt_flightDate").datepicker({ 
        dateFormat: 'dd/mm/yy' 
    });
    $('#btn_flightDate').click(function() {
        $('#txt_flightDate').datepicker('show');
    });

    /*$('#txt_start').click(function () {
        $.ajax({
            url:  '/city/list',
            type:  'get',
            dataType:  'json',
            success: function  (data) {
                let rows='<option selected>Open this select menu</option>'
                data.cities.forEach(city => { 
                rows += `
                    <option>${city.city_name}</option>`;})
                $('#txt_start').html(rows)
            }   
        })
    })*/



    $('#btnfindflight').click(function () {
        var start = $('#select_start').find(':selected').attr('value')      
        if (start == 'Select Airport') 
            {
            alert('กรุณาระบุ สนามบินที่ต้องการขึ้นเครื่อง ');
            $('#txt_start').focus();
            return false;
            }

        var goal = $('#select_goal').find(':selected').attr('value')   
        if (goal == 'Select destination')
            {
            alert('กรุณาระบุ สนามบินที่ต้องการลงเครื่อง ');
            $('#txt_goal').focus();
            return false;
            }
        if (goal == start)
            {
                alert('กรุณาระบุสถานที่บินใหม่อีกครั้ง')
                return false;
            }
        var seat = $('#seat').find(':selected').attr('value')        
        if (seat == 'seat') 
            {                          
            alert('โปรดเลือกจำนวนผู้โดยสาร');
            $('#txt_seat').focus();
            return false;
            }
        var seatclass = $('#seatclass').find(':selected').attr('value')      
        if (seatclass == 'seatclass') 
            {
            alert('โปรดเลือกประเภทที่นั่ง');
            $('#txt_seatclass').focus();
            return false;
            }
    });


    
    $('#btnHOME').click(function () {
        window.open('/home',"_self");
    });

    $('#btnRegister').click(function () {
        window.open('/register');
    });

    $('#btnMybooking').click(function () {
        window.open('/booking',"_self");
    });

    $('body').on('click', 'a.a_click', function() {
        if($('#txt_start').val() == 'city_name') {
            $('#txt_CustomerCode').val('city_name');}

    })



});




function getSelectedDataAttribute(event) {
    var selected_text = event.options[event.selectedIndex].innerHTML;
    var selected_value = event.value;
    var data_id = event.options[event.selectedIndex].dataset.id;    
}