// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(function(){
	$('.video-play').click(function(event){
		event.stopPropagation();
		console.log(1);
		$('#gn-content-video').append('<iframe id="video-url" src="http://www.youtube.com/v/_mO79hZaA2s&version=3&autoplay=1&rel=0&color1=0x2b405b&color2=0x6b8ab6&border=1&fs=1" frameborder="0" allowfullscreen></iframe>');
	});

});