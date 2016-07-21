$(document).ready(function(){

  $('#sidebar_whole').scrollChaser({
      wrapper:  '.list',
      position: 'top',
      offsetTop: 10,
      offsetBottom: 40
  });

  $("#vehicle_3rd_id_fitmy4x4").change(function(){
    var id = $(this).children(":selected").val();
    var params = 'id=' + id;
    $.ajax({
      url: "/vehicles/show_rear_type",
      data: params
    })
  });

  $("#vehicle_1st_id_fitmy4x4").change(function(){ 
    var selected = $(this).children(":selected").val();
    var model = $("#vehicle_2nd_id_fitmy4x4").children(":selected").val();
    var series = $("#vehicle_3rd_id_fitmy4x4").children(":selected").val();

    if (selected !== "" && model !== "" && series !== ""){
      $("select").each(function() { this.selectedIndex = 0 });      
      $('#page_container input').removeAttr('checked');
      $("#page_container").find("input:text").val('');
      $('#front_spring_product_id').html('');
      $('#rear_spring_product_id').html('');
      $('#front_shocks_product_id').html('');
      $('#rear_shocks_product_id').html('');
      $('#mandatory_product_id').html('');
      $('#optional_product_id').html('');
    }
  });

 
  $("#vehicle_6th_id_fitmy4x4").change(function(){

    var selected1 = [];
    var selected2 = [];
    var selected = $(this).children(":selected").val();
    if (selected === "") {
      $('#go_button').prop('disabled', true);
      $('#go_button').css('background', '#dddddd');
    }else{
      $('#go_button').removeAttr('disabled');
      $('#go_button').css('background', '#9ebb24');

      var id = $("#vehicle_3rd_id_fitmy4x4").val();
      var lift_estimate = $("#vehicle_6th_id_fitmy4x4").val();

      selected1.push("id");
      selected2.push(id);
      selected1.push("lift_estimate");
      selected2.push(lift_estimate);

      var data = {}
      for (var i = 0; i < selected1.length; i++) {
          data[selected1[i]] = selected2[i]
      }

      $.ajax({
          url: "/vehicles/calculate_front_springs",
          data: data
       });

      $.ajax({
          url: "/vehicles/calculate_rear_wagon_setup",
          data: data
      });

      $.ajax({
          url: "/vehicles/calculate_rear_ute_setup",
          data: data
       });

      $.ajax({
          url: "/vehicles/front_shocks_setup",
          data: data
       });

      $.ajax({
          url: "/vehicles/rear_shocks_setup",
          data: data
       });

      $.ajax({
        url: "/vehicles/mandatory_component_setup",
        data: data,
        success: function(data) {
          var selected3 = [];

          $('#hid7 input:checked').each(function() {
            selected3.push($(this).val());
          });

          $.ajax({
            url: "/vehicles/update_mandatory_sidebar",
            data: {mandatory_id:selected3, id: id, lift_estimate: lift_estimate}
          });            
        }          
      });

      $.ajax({
        url: "/vehicles/optional_component_setup",
        data: data
      });
    }
  });

  $("#go_button").click(function(){
      $('#hid2').show();
      return false;
  });   

  function contains(a, obj) {
      for (var i = 0; i < a.length; i++) {
          if (a[i] === obj) { return true;}
      }
      return false;
  }

  $('#hid2').on('change', 'input[type=checkbox],input[type=radio]', function() {

    var other_value = $('#weights').val();
    var selected1 = [];
    var selected2 = [];

    $('#hid2 input:checked').each(function() {
      if($(this).attr('name') === "others"){
        selected1.push("others");
        selected2.push(other_value); 
      }else {
        selected1.push($(this).attr('id'));
        selected2.push($(this).attr('value')); 
      }      
    });

    if ($.inArray('reset_front_springs', selected1) > -1){
      selected1 = [];
      selected2 = [];
      $('#hid2 input').removeAttr('checked');
      $("#hid2").find("input:text").val('');
    }
    var id = $("#vehicle_3rd_id_fitmy4x4").val();
    var lift_estimate = $("#vehicle_6th_id_fitmy4x4").val();
    selected1.push("id");
    selected2.push(id);
    selected1.push("lift_estimate");
    selected2.push(lift_estimate);
    var result1  = selected1;
    var result2  = selected2;

    var data = {}
    for (var i = 0; i < result1.length; i++) {
        data[result1[i]] = result2[i]
    }

    $.ajax({
        url: "/vehicles/calculate_front_springs",
        data: data
     });

  });

  $(function() {
    $('#weights').focusout(function() {      
      var other_value = $('#weights').val();
      var selected1 = [];
      var selected2 = [];

      if(other_key.length != 0 && other_value.length != 0 && $("#bullbar_other ").prop('checked')) {
        $('#hid2 input:checked').each(function() {
          if($(this).attr('name') === "others"){
            selected1.push("others");
            selected2.push(other_value); 
          }else {
            selected1.push($(this).attr('name'));
            selected2.push($(this).attr('value')); 
          }
        });
     
        var id = $( "#vehicle_3rd_id_fitmy4x4" ).val();
        var lift_estimate = $( "#vehicle_6th_id_fitmy4x4" ).val();    
        selected1.push("id");
        selected2.push(id);
        selected1.push("lift_estimate");
        selected2.push(lift_estimate);

        var result1  = selected1;
        var result2  = selected2;

        var data = {}
        for (var i = 0; i < result1.length; i++) {
            data[result1[i]] = result2[i]
        }
        
        $.ajax({
            url: "/vehicles/calculate_front_springs",
            data: data
        });
      }
    });
  })  

  $('#hid3').on('change', 'input[type=checkbox],input[type=radio]', function() {
    var selected1 = [];
    var selected2 = [];

    $('#hid3 input:checked').each(function() {
      if ($(this).attr('name') === "laggage") {
        selected1.push('laggage');
        selected2.push($('#laggage2').val());
      }else if ($(this).attr('name') === "water_tank") {
        selected1.push('water_tank');
        selected2.push($('#water_tank').val());
      }else if ($(this).attr('name') === "rear_other") {
        selected1.push('rear_other');
        selected2.push($('#rear_other_weight').val());
      }else{
        selected1.push($(this).attr('id'));
        selected2.push($(this).attr('value'));
      }
    });
    if ($.inArray('reset_rear_wagon', selected1) > -1){
      selected1 = [];
      selected2 = [];
      $('#hid3 input').removeAttr('checked');
      $("#hid3").find("input:text").val('');
    }
    var id = $("#vehicle_3rd_id_fitmy4x4").val();
    var lift_estimate = $("#vehicle_6th_id_fitmy4x4").val();

    selected1.push("id");
    selected2.push(id);
    selected1.push("lift_estimate");
    selected2.push(lift_estimate);
    var result1  = selected1;
    var result2  = selected2;
    var data = {}
    for (var i = 0; i < result1.length; i++) {
        data[result1[i]] = result2[i]
    }

    $.ajax({
        url: "/vehicles/calculate_rear_wagon_setup",
        data: data
    });

  });


  $('#hid4').on('change', 'input[type=checkbox],input[type=radio]', function() {
    var selected1 = [];
    var selected2 = [];

    $('#hid4 input:checked').each(function() {
      if ($(this).attr('name') === "luggage_rear") {
        selected1.push('laggage');
        selected2.push($('#luggage_rear_ute').val());
      }else if ($(this).attr('name') === "tank_rear") {
        selected1.push('water_tank');
        selected2.push($('#tank_rear_ute').val());
      }else if ($(this).attr('name') === "other_rear") {
        selected1.push('rear_other');
        selected2.push($('#other_rear_ute').val());
      }else{
        selected1.push($(this).attr('id'));
        selected2.push($(this).attr('value'));
      }
    });

    if ($.inArray('reset_rear_ute', selected1) > -1){
      selected1 = [];
      selected2 = [];
      $('#hid4 input').removeAttr('checked');
      $("#hid4").find("input:text").val('');
    }

    var id = $("#vehicle_3rd_id_fitmy4x4").val();
    var lift_estimate = $("#vehicle_6th_id_fitmy4x4").val();

    selected1.push("id");
    selected2.push(id);
    selected1.push("lift_estimate");
    selected2.push(lift_estimate);
    var result1  = selected1;
    var result2  = selected2;
    var data = {}
    for (var i = 0; i < result1.length; i++) {
        data[result1[i]] = result2[i]
    }

    $.ajax({
        url: "/vehicles/calculate_rear_ute_setup",
        data: data
     });

  });

  $('#hid5').on('change', 'input[type=radio], input[type=checkbox]', function() {
    var idValue = $(this).attr("id");
    if (idValue == "reset_front_shocks") {
      $('#hid5 input').removeAttr('checked');
    }else{      
      var arr = idValue.split('_');
      $('#front_shocks_product_id').html($(this).val() + " x " + arr[0]);
      var hidden_field = '<input type="hidden" value="'+ arr[2] +'_'+ arr[0] + '" name="front_shocks_product_id" />'
      $('#front_shocks_product_id').append(hidden_field);
    }
  });

  $('#hid6').on('change', 'input[type=radio], input[type=checkbox]', function() {
    var idValue = $(this).attr("id");
    var arr = idValue.split('_');
    if (idValue == "reset_rear_shocks") {
      $('#hid6 input').removeAttr('checked');
    }else{    
      $('#rear_shocks_product_id').html($(this).val() + " x " + arr[0]);
      var hidden_field = '<input type="hidden" value="'+ arr[2] +'_'+ arr[0] + '" name="rear_shocks_product_id" />'
      $('#rear_shocks_product_id').append(hidden_field);      
    }
  });

  $('#hid8').on('change', 'input[type=checkbox]', function() {
    var selected = [];

    $('#hid8 input:checked').each(function() {
      selected.push($(this).val());
    });

    if (selected.length !== 0){
      var id = $("#vehicle_3rd_id_fitmy4x4").val();
      var lift_estimate = $("#vehicle_6th_id_fitmy4x4").val();

      $.ajax({
        url: "/vehicles/update_optional_sidebar",
        data: {optional:selected, id: id, lift_estimate:lift_estimate}
      });
    }else{
      $('#optional_product_id').html('');
    }
  });
 
  $("#submit_quote1, #submit_quote2").click(function(){
      
    var front_spring = $("#front_spring_product_id").text();
    var rear_spring = $("#rear_spring_product_id").text();
    var front_shocks = $("#front_shocks_product_id").text();
    var rear_shocks = $("#rear_shocks_product_id").text();
    var mandatory_component = $("#mandatory_product_id").text();
    var optional_component = $("#optional_product_id").text();

    if (front_spring.length !== 0 && rear_spring.length !== 0 && front_shocks.length !==0 && rear_shocks.length !==0 && mandatory_component.length !== 0 && optional_component.length !== 0) {

      var selected3 = []
      $('#sidebar input[type="hidden"]').each(function() {
        selected3.push($(this).attr('value'));
      });   

      var suspension_wishlist = []
      for (var item in selected3) {
        var arr = selected3[item].split('_');
        suspension_wishlist.push(arr[0] + '|' + arr[1]);
      }
      b = suspension_wishlist.join(',');

      $.cookie('wishlist', b, {expires:7, path: '/'});
      var url = '/quote/new';
      window.location = url;

    }else{
      alert("Please select products from every section");
    }
  });    

})

