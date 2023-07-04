<main>
    <section>
        <h2>Informations sur l'entreprise</h2>
        <p>Raison sociale : <?=$firm_info['nom']?></p>
        <p>Statut juridique : <?=$firm_info['forme_jur']?></p>
        <p>Numéro SIRET : <?=$firm_info['siret']?></p>
        <p>Adresse : <a href="https://goo.gl/maps/papg63JYYj2FKwhx9" target="_blank"><?=$firm_info['adresse']?></a></p>
        <p><iframe src="https://www.google.com/maps/d/u/0/embed?mid=1_VG94KMWtgqd5VXWncUDOjscqGVb0yI&ehbc=2E312F&z=10" frameborder="0" style="border:0" width="500" height="500"></iframe></p>
        <p>Téléphone : <a id="tel" href="tel:<?=$firm_info['tel']?>" data-tel="<?=$firm_info['tel']?>"></a></p>
        <p>Email : <a href='mailto:<?=$firm_info['mail']?>'><?=$firm_info['mail']?></a></p>
        <p>Directeur de la publication : <?=$chef_info['prenom'].' '.$chef_info['nom']?></p>
    </section>

    <section>
        <h2>Hébergement du site</h2>
        <p>Nom de l'hébergeur : <?=$host_info['nom']?></p>
        <p>Adresse de l'hébergeur : <a href="https://goo.gl/maps/mxv1HQBYbrJ2B1Vq5" target="_blank"><?=$host_info['adresse']?></a></p>
        <p>Téléphone de l'hébergeur : <a id="tel" href="tel:<?=$host_info['tel']?>" data-tel="<?=$host_info['tel']?>" ></a></p>
        <p>Email de l'hébergeur : <a href='mailto:<?=$host_info['mail']?>'><?=$host_info['mail']?></a></p>
    </section>

    <section>
        <h2>Propriété intellectuelle</h2>
        <p>Tous les contenus présents sur le site <a href="<?=$domaine?>"><?=$site?></a> sont la propriété exclusive de <?=$firm_info['nom']?> et sont protégés par les lois françaises et internationales relatives à la propriété intellectuelle.</p>
    </section>
</main>