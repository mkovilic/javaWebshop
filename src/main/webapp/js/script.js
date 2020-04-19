
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var content = this.nextElementSibling;
        if (content.style.maxHeight){
            content.style.maxHeight = null;
        } else {
            content.style.maxHeight = content.scrollHeight + "px";
        }
    });
}

function bagAddOne(productId){
    location.href="add?idProduct="+productId;
}
function bagRemoveOne(productId){
    location.href="remove?idProduct="+productId;
}
function checkout(){
    location.href="checkout";
}
function showBag(){
    location.href="bag.jsp";
}
function viewBill(IDBill){
    location.href="viewBill?idBill"+IDBill;
}
function toggleSignUp(e){
    e.preventDefault();
    $('#logreg-forms .form-signin').toggle(); // display:block or none
    $('#logreg-forms .form-signup').toggle(); // display:block or none
}

$(()=>{
    // Login Register Form
    $('#logreg-forms #btn-signup').click(toggleSignUp);
    $('#logreg-forms #cancel_signup').click(toggleSignUp);
});

$('#btn').on('click',function(){
    $('#one').hide('slow')
    $('#two').show('slow');
});

$('#mydialog').on('click',function (e) {
    e.preventDefault();
    bs4pop.notice('Notification message',{
        type:'success',
        position:'bottomcenter',
        appendType:'append',
        closeBtn:false,
        className:''
    })

});

