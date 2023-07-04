<main>
    <section>
        <h2><?= $fonction == 'chef' ? 'Chef :' : ($fonction == 'dev' ? 'Développeurs :' : '') ?></h2>
        <a href="?a=contact&f=<?=$fonction == 'dev' ? 'chef' : 'dev'?>"><?=$fonction == 'dev' ? 'PDG' : 'Développeur'?></a>
        <?php
        foreach ($users_info as $user) { ?>
            <p><?=$user['nom'].' '.$user['prenom']?></p>
            <p id="tel" data-tel='<?=$user['tel']?>'></p>
            <p><?=$user['mail']?></p>
        <?php } ?>
    </section>
</main>