jQuery(document).ready(function() {
  jQuery('a.fancybox').fancybox({
      'hideOnContentClick': true,
      'overlayShow': true,
      'frameWidth': 700,
      'frameHeight': 600
  });
});

jQuery.jGrowl.defaults.position = 'center';

jQuery.jGrowl.info = function(msg){
	jQuery.jGrowl(msg);
}

jQuery.jGrowl.warn = function(msg){
	jQuery.jGrowl(msg);
}

jQuery.jGrowl.error = function(msg){
	jQuery.jGrowl(msg, {sticky:true,header:"Please correct the following errors:"});
}