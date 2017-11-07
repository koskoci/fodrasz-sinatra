   $(document).ready(function(){   
        window.setTimeout('fadeout();', 2500);
		window.setTimeout('fadein();', 3000);
    });
    function fadeout(){
        $('#item_fading_out').fadeOut(500, function() {
           // Animation complete.
        });
    };
	    
	function fadein(){
       	$( "#item_fading_in" ).fadeIn(1000, function() {
  });
    };
	


