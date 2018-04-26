$('input[type="checkbox"].component-button').on('change', function() {
   $('input[type="checkbox"].component-button').not(this).prop('checked', false);
});
