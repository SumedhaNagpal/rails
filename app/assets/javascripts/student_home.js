# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
var skill_button = document.getElementById("skills");

skill_button.addEventListener('onclick', function(){
	if (skill_button.style.display === 'none') {
        skill_button.style.display = 'block';
    } else {
        skill_button.style.display = 'none';
    }
})