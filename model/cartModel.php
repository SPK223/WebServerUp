<?php
/**
 * Sets cookie med datan till varukorgen
 * 
 */

class cartModel{

 /**
  * Hämtar CookieId och sedan sparar CookieId som en Kaka i 1 timme.
  */
  function add_to_cart($produktId)
  {
     setcookie('cart[]', $produktId, time()+3600, '/');
  }

}

?>