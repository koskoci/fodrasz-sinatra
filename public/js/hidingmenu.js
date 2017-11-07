   $(document).ready(function(){   
        window.setTimeout('fadeout();', 3000);
		window.setTimeout('fadein();', 3500);
    });
    function fadeout(){
        $('#item_fading_out').fadeOut('slow', function() {
           // Animation complete.
        });
    };
	    
	function fadein(){
       	$( "#item_fading_in" ).fadeIn( 'fast', function() {
  });
    };
	


