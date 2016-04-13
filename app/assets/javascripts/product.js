// $(function(){ 
$(document).ready(function(){
  $('form.new_product').on("submit",function(event){
    event.preventDefault();
    var data = $( this ).serializeArray();

    $.ajax({
      type: "POST",
      url: 'products',
      data: data,
      success: function(data){
        $('#name').html(data.name);
        $('#price').html(data.price);
      },
      dataType: 'JSON'
    });

  });
});