
var resizeTimer = null;
$(window).bind('resize', function() {
    
    $('.Collage .Image_Wrapper').css("opacity", 0);
   
    if (resizeTimer) clearTimeout(resizeTimer);
    resizeTimer = setTimeout(collage, 200);
});
    
function collage() {

	$('.Collage').each(function(){ 
	    $(this).collagePlus({
	    'fadeSpeed'     : 2000,	
	    'targetHeight': 380
	    });
	});	
    // $('.Collage').collagePlus(
    //     {
    //         'fadeSpeed'     : 2000,
    //         'targetHeight'  : 380,
    //         'allowPartialLastRow' : true
    //     }
    // );
};



