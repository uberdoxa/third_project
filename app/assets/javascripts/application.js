// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require_tree .



////

$(document).on('turbolinks:load', function(){
  console.log('ready');
//animation home page

$('#monoL1').show('slow');
$('#monoL2').hide('slow');
$('#monoL3').hide('slow');

//ft=$('#monoL1').css('height');
var sized=function(){
ftr=$('#monoL2').css('height');
$('#monoL1').css('height',ftr);
$('#monoL3').css('height',ftr);
$('#monoL2').css('height',ftr);}
var cnt=0;
var hide_all=function()
  {
  $('#monoL1').hide('slow');
  $('#monoL2').hide('slow');
  }
var show_a=function()
  {sized();
  $('#monoL2').hide('slow');
  $('#monoL1').show('slow');
  $('#monoL3').hide('slow');
  }

var show_b=function()
  {sized();
  $('#monoL1').hide('slow');
  $('#monoL2').show('slow');
  $('#monoL3').hide('slow');
  }

  var show_c=function()
  {sized();
  $('#monoL1').hide('slow');
  $('#monoL2').hide('slow');
  $('#monoL3').show('slow');
  }

var fun=function(){
// window.setTimeout(show_a, 5000);
 //window.setTimeout(show_b, 5000);
if(cnt === 0){
  show_a();
}
else if(cnt ===1){
show_b();}
else
show_c();

cnt+=1;
if(cnt >2)
cnt=0;
}
window.setInterval(fun, 7000);


////
  // /levels/new handling
  function makeChallenges(num){
    $('#challs').empty();
    for(var i = 0; i < num; i++){
      var title_div, desc_div, q_div, a_div,
          ch_div, lab_title, ch_title, lab_desc,
          ch_desc, lab_q, ch_q, lab_a, ch_a;

      title_div = $('<div></div>');
      desc_div = $('<div></div>');
      q_div = $('<div></div>');
      a_div = $('<div></div>');

      ch_div = $('<div class="challenge" id="challenge'+i+'">Callenge '+(i+1)+'<br></div>');

      lab_title = $('<label for="ch_title'+i+'">Title: </label>');
      ch_title = $('<input type="text" name="ch_title'+i+'" id="ch_title'+i+'">');
      lab_desc = $('<label for="ch_desc'+i+'">Description: </label>');
      ch_desc = $('<input type="text" name="ch_desc'+i+'" id="ch_desc'+i+'">');
      lab_q = $('<label for="ch_q'+i+'">Question: </label>');
      ch_q = $('<input type="text" name="ch_q'+i+'" id="ch_q'+i+'">');
      lab_a = $('<label for="ch_a'+i+'">Answer: </label>');
      ch_a = $('<input type="text" name="ch_a'+i+'" id="ch_a'+i+'">');

      ch_div.append(title_div).append(desc_div).append(q_div).append(a_div);
      title_div.append(lab_title).append(ch_title);
      desc_div.append(lab_desc).append(ch_desc);
      q_div.append(lab_q).append(ch_q);
      a_div.append(lab_a).append(ch_a);
      ch_div.append(title_div).append(desc_div).append(q_div).append(a_div).append('<br>');

      $('#challs').append(ch_div);
    }
  }

  var num_challenges = $('#num_challenges').val();
  makeChallenges(num_challenges);

  $('#num_challenges').change(function(){
    num_challenges = $(this).val();
    makeChallenges(num_challenges);
  });

  // /levels/:id handling

  var enableNext = function(el) {
    el.click(function(){
      window.location.href = "/levels?nextlevel=true";
    });
  };
  // level_num: 2

  var checkVal = function(input){
    return input.attr('ans').split(" ").join('') === input.val().split(" ").join('') ||
            input.attr('ans').split(" ").join('') === input.val().replace(/"/g, "'").split(" ").join('') ||
            input.attr('ans').split(" ").join('') === input.val().replace(/'/g, '"').split(" ").join('');
  };


  // var checkAllVals = function(inputs){
  //   return (inputs.length === inputs.filter(el=>{return checkVal($(el))}).length) ? true : false;
  // };
  $('.user_ans').bind('input propertychange', function(){
    console.log('changed');
    //check answers
    $('.user_ans').each((i, el)=>{
      if(checkVal($(this))){
        $(this).parent().removeClass('hides');
    }else{
      if(!$(this).parent().hasClass('hides'))
        $(this).parent().addClass('hides');
    }});
    if($('.user_ans').length ===
      $('.user_ans').filter((i, el)=>{return checkVal($(el))}).length){
        $('#result').text('All challenges completed!');
        // add onclick to next level!!
        enableNext($('#next'));
    }else{
        $('#result').text('');
    }
    //if all answers enable next level
  });
  console.log('ready again');
});
