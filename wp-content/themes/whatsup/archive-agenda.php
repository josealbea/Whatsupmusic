<?php 
global $paged, $block_class, $paged, $wpdb;

get_header(); 
?>  
<h1>Les Agendas</h1>
<form action="" method="post">
            <label>Type d'événements :</label>
            <?php $cats = $wpdb->get_results( " SELECT wp_terms.name
                FROM wp_term_relationships
                LEFT JOIN wp_term_taxonomy
                   ON (wp_term_relationships.term_taxonomy_id = wp_term_taxonomy.term_taxonomy_id)
                LEFT JOIN wp_terms on wp_term_taxonomy.term_taxonomy_id = wp_terms.term_id
                WHERE wp_term_taxonomy.taxonomy = 'category'
                GROUP BY wp_term_taxonomy.term_id");?>
            <select name="cats">
            <?php
                foreach ($cats as $cat) {
                    echo '<option value="'.$cat->name.'">'.$cat->name.'</option><br />'; 
                }
                ?>
            </select>
            
            <label>Lieu de l'événement :</label>
            <?php $lieux = $wpdb->get_results( "SELECT meta_value FROM `wp_postmeta` where meta_key = 'lieu'");
            ?>
            <select name="lieu">
            <?php
                foreach ($lieux as $lieu) {
                    echo '<option value="'.$lieu->meta_value.'">'.$lieu->meta_value.'</option><br />'; 
                }
                ?>
            </select>
            
            <label>Date de l'événement :</label>
            <?php $dates = $wpdb->get_results( "SELECT meta_value FROM `wp_postmeta` where meta_key = 'date'");
            ?>
            <select name="date">
            <?php
                foreach ($dates as $date) {
                    echo '<option value="'.$date->meta_value.'">'.$date->meta_value.'</option><br />'; 
                }
                ?>
            </select>
            <input type="submit" value="Lancer recherche" name="valider" class="button" />

</form>

<?php if( have_posts() ) : ?>
<?php if(empty($_POST['valider'])){ ?>

    <div id="main" role="main" class="masonry" >
        <?php $first = true; ?>
        <?php $query       = array('post_type' => 'agenda','posts_per_page' => 15,'order' => 'DESC');
        $wp_query = new WP_Query($query);
        while ($wp_query->have_posts()):$wp_query->the_post(); 
                $block_class = 'block';
                if( dw_is_featured_post() ) { 
                    $block_class .= ' w2';
                } 
                if ( $first && ! dw_is_featured_post() ) {
                    $first = false;
                    $block_class .= ' grid-sizer';
                }
            ?>
            <?php get_template_part( 'content', get_post_format() ); ?>
        <?php endwhile; ?>
        <?php dw_paging_nav(); ?>
    </div>
<?php } 

else{
    var_dump($_POST);
/*
$form_region = $_POST['region'];
$form_secteurs_activites = $_POST['secteurs_detudes'];
$form_niveau_formation = $_POST['niveau_dacces'];
$recherche = $_POST['recherche'];

if($form_region == 'Régions' && $form_secteurs_activites == 'Secteurs' && $form_niveau_formation == 'Niveau' && $recherche == ''){
    echo 'Veuillez remplir au moins un champs';

}
elseif($recherche != ''){
        $args = array(
        'post_type' => 'fiche_etablissement',
        's' => $recherche
 );
}
else{

 
$args = array(
    'numberposts' => -1,
    'post_type' => 'fiche_etablissement',
    'meta_query' => array(
        'relation' => 'OR',
        array(
            'key' => 'region',
            'value' => $form_region,
            'compare' => '='
        ),
        array(
            'key' => 'secteurs_detudes',
            'value' => $form_secteurs_activites,
            'compare' => 'LIKE'
        ),
        array(
            'key' => 'niveau_dacces',
            'value' => $form_niveau_formation,
            'compare' => 'LIKE'
        )
    )
);
}
// get results
$the_query = new WP_Query( $args );
?>
<?php if( $the_query->have_posts() ): ?>
    <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>

    <div id="main" role="main" class="masonry" >
        <?php $first = true; ?>
        <?php $query       = array('post_type' => 'agenda','posts_per_page' => 15,'order' => 'DESC');
        $wp_query = new WP_Query($query);
        while ($wp_query->have_posts()):$wp_query->the_post(); 
                $block_class = 'block';
                if( dw_is_featured_post() ) { 
                    $block_class .= ' w2';
                } 
                if ( $first && ! dw_is_featured_post() ) {
                    $first = false;
                    $block_class .= ' grid-sizer';
                }
            ?>
            <?php get_template_part( 'content', get_post_format() ); ?>
        <?php endwhile; ?>
        <?php dw_paging_nav(); ?>
    </div>
    <?php endwhile; ?>
<?php endif;*/
 } ?>

    <?php dw_show_more_button(); ?>
<?php else: ?>
    <?php get_template_part( 'content', 'none' ) ?>
<?php endif; ?>
<?php get_footer(); ?>