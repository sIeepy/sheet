$(document).ready(function() {

  $('.js-income-btn-add').click(function() {
    var container = $(this).parents('.js-income-container');
    container.find('.js-income-form').removeClass('hidden');
    container.find('.js-income-btn-rm').removeClass('hidden');
    $(this).addClass('hidden');
  })

  $('.js-income-btn-rm').click(function() {
    var container = $(this).parents('.js-income-container');
    container.find('.js-income-form').addClass('hidden');
    container.find('.js-income-btn-add').removeClass('hidden');
    $(this).addClass('hidden');
  })
})
