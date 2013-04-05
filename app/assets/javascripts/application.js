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
//= require bootstrap
//= require_tree .


function dynamicSelect(id1, id2) {
	     if (document.getElementById && document.getElementsByTagName) {
	         var sel1 = document.getElementById(id1);
	         var sel2 = document.getElementById(id2);
	         var clone = sel2.cloneNode(true);
	         var clonedOptions = clone.getElementsByTagName("option");
	         refreshDynamicSelectOptions(sel1, sel2, clonedOptions);
	         sel1.onclick = function() {
	             refreshDynamicSelectOptions(sel1, sel2, clonedOptions);
	             document.getElementById(id2).disabled = false;
	         };
	     }
	 }

	function refreshDynamicSelectOptions(sel1, sel2, clonedOptions) {
	    while (sel2.options.length) {
	         sel2.remove(0);
	     }
	     var pattern1 = /( |^)(select)( |$)/;
	     var pattern2 = new RegExp("( |^)(" +
	          sel1.options[sel1.selectedIndex].value + ")( |$)");
	     for (var i = 0; i < clonedOptions.length; i++) {
	         if (clonedOptions[i].className.match(pattern1) ||
	              clonedOptions[i].className.match(pattern2)) {
	             sel2.appendChild(clonedOptions[i].cloneNode(true));
	         }
	     }
	 }
