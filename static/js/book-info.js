$(document).ready(function () {
    var id=localStorage.getItem("id");
    $.ajax({
        url:  '/flight/detail/' + id,
        type:  'get',
        dataType:  'json',
        success: function  (data) {
            console.log(data)
            $('#info-departure').html(data.paths.departure);
            $('#info-destination').html(data.paths.destination);
            $('#info-departure_date').html(data.flight.departure_date);
            $('#airline').html(data.flight.airline);
            $('#info-departure_time').html(data.flight.departure_time);
            $('#info-departure2').html(data.paths.departure);
            $('#info-duration').html(data.flight.duration);
            $('#info-arrival_time').html(data.flight.arrival_time);
            $('#info-destination2').html(data.paths.destination);
        },
        error: function(error){
            console("Error ${error}")
        }
    })

    $('#btn1').click(function () {
        $.ajax({                                                // call backend /invoice/create
            url:  '/receipt/create',
            type:  'post',
            data: $('#form_receipt').serialize() + "&lineitem=" +lineitem_to_json(),
            headers: { "X-CSRFToken": token },
            dataType:  'json',
            success: function  (data) {
                if (data.error) {                               // if backend return error message, log it
                    console.log(data.error);
                    alert('การบันทึกล้มเหลว');
                } else {
                    $('#txt_ReceiptNo').val(data.receipt.receipt_no)    // SAVE success, show new invoice no
                    alert('บันทึกสำเร็จ');
                }                    
            },
        })




    })

})

