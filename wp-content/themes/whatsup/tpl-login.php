<?php
/*
Template Name: Connexion
*/
$error = false; 
if(!empty($_POST)){
    $user = wp_signon($_POST);
    if(is_wp_error($user)){
        $error = $user->get_error_message(); 
    }else{
        header('location:profil');
    }
}else{
    $user = wp_get_current_user();
    if($user->ID != 0){
        header('location:profil');
    }
}
?>
<?php get_header();?>

    <div class="single">
        <div class="post background">
            <h1>Connexion</h1>

            <?php if ($error): ?>
                <div class="error">
                    <?php echo $error; ?>
                </div>
            <?php endif ?>

            <form action="<?php echo $_SERVER['REQUEST_URI']; ?>" method="post">
                <input class="form-control" type="text" name="user_login" id="user_login" placeholder="Login"> 

                <input class="form-control" type="text" name="user_password" id="user_password" placeholder="Votre mot de passe">

                <input class="form-control align" type="checkbox" name="remember" id="remember" value="1">
                <label for="remember" class="align">Se souvenir de moi</label>

                <input class="button" type="submit" value="Connexion">

            </form>

        </div>
    </div>

<?php get_footer(); ?>
