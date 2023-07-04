<main>
    <?php
    if (!empty($photos)) {?>
        <section class="galerie-photo">
        <?php foreach ($photos as $photo) { ?>
            <img class="photo" src=".<?=$photo['chemin']?>" title="<?=$photo['nom']?>" />
        <?php }
    } else { ?>
        <section class="galerie-preview">
        <?php foreach ($getAllCollection as $collection) { ?>
            <?php if ($collection['collect'] != 'onglets') {
                $previews = $photo->getPreviewsInCollection($collection['collect']);
                ?>
                <p class="collection_tag">
                    <a href='?a=galerie&c=<?=$collection['collect']?>'><?=$collection['collect']?></a>
                </p>
                <div class="collection">
                <?php
                foreach ($previews as $preview) {
                    ?>
                <a href='?a=galerie&c=<?=$collection['collect']?>' class="preview">
                    <img src=".<?= $preview['chemin']?>" class="carousel-image"/>
                </a>
                <?php }
                } ?>
            </div>
        <?php }
    }
    ?>
    </section>
</main>