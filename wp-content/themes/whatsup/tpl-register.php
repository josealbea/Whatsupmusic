<?php
/*
Template Name: Inscription
*/
$error = false;
if(!empty($_POST)){
    $d = $_POST;
    if($d['user_pass'] != $d['user_pass2']){
        $error = 'Les 2 mots de passes ne correspondent pas';
    }else{
        if(!is_email($d['user_email'])){
            $error = 'Veuillez entrer un email valide'; 
        }else{
            $user = wp_insert_user(array(
                'user_login' => $d['user_login'],
                'user_pass'  => $d['user_pass'],
                'user_email' => $d['user_email'],
                'user_registered' => date('Y-m-d H:i:s')
            ));
            if(is_wp_error($user)){
                $error = $user->get_error_message(); 
            }else{
                $msg = 'Vous êtes maintenant inscrit';
                $headers = 'From: '.get_option('admin_email')."\r\n";
                wp_mail($d['user_email'], 'Inscription réussie', $msg, $headers );
                $d = array(); 
                wp_signon($user);
                header('Location:profil'); 
            }

        }
    }
}
?>
<?php get_header();?>

    <div class="single">
        <div class="post background">
            <h1>Inscription</h1>

            <?php if ($error): ?>
                <div class="error">
                    <?php echo $error; ?>
                </div>
            <?php endif ?>

            <form action="<?php echo $_SERVER['REQUEST_URI']; ?>" method="post">

                <label for="user_login">Votre login</label>
                <input class="form-control" placeholder="John-Doe" type="text" value="<?php echo isset($d['user_login']) ? $d['user_login'] : ''; ?>" name="user_login" id="user_login"> 

                <label for="user_email">Votre email</label>
                <input class="form-control" placeholder="johndoe@gmail.com" type="text" value="<?php echo isset($d['user_email']) ? $d['user_email'] : ''; ?>" name="user_email" id="user_email"> 

                <label for="user_pass2">Votre mot de passe</label>
                <input class="form-control" placeholder="••••••••" type="password" value="<?php echo isset($d['user_pass']) ? $d['user_pass'] : ''; ?>" name="user_pass" id="user_pass">

                <label for="user_pass2">Confirmez votre mot de passe</label>
                <input class="form-control" placeholder="••••••••" type="password" value="<?php echo isset($d['user_pass2']) ? $d['user_pass2'] : ''; ?>" name="user_pass2" id="user_pass2">

                <input class="button" type="submit" value="Inscription" >

            </form>

        </div>
    </div>

<?php get_footer(); ?>
