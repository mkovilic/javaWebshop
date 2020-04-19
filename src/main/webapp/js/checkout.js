$('#cash').click(function () {
    swal({
        title: "Your payment was successful!",
        icon: "success",
        button: "Aww yiss!",
    }).then(function () {
        window.location = "orderSuccessfull";
    });
});
$('#paypal').click(function () {
    swal({
        title: "Your payment was successful!",
        icon: "success",
        button: "Aww yiss!",
    }).then(function () {
        window.location = "paypal";
    });
});