$(document).ready(function() {

  $('.js-outcome-btn-add').click(function() {
    var container = $(this).parents('.js-outcome-container');
    container.find('.js-outcome-form').removeClass('hidden');
    container.find('.js-outcome-btn-rm').removeClass('hidden');
    $(this).addClass('hidden');
  })

  $('.js-outcome-btn-rm').click(function(){
    var container = $(this).parents('.js-outcome-container');
    container.find('.js-outcome-form').addClass('hidden');
    container.find('.js-outcome-btn-add').removeClass('hidden');
    $(this).addClass('hidden');
  })
})
