<?php
if ( $_SERVER["SCRIPT_FILENAME"] == __FILE__ ){
    $racine="..";
}


$fonction = isset($_GET['f']) ? $_GET['f'] : 'chef';
$users_info = $user->getUsersByFonction($fonction);

include "$racine/vue/header.php";
include "$racine/vue/vueContact.php";
include "$racine/vue/footer.php";