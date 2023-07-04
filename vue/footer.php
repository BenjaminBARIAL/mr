<footer>
    <p>Méches Rebelles © - <a href="?a=mentions"> Mentions Légales </a> - 2023</p>
    <p>Contact -
        <a href="?a=contact&f=dev"> Développeur </a> - 
        <a href="https://twitter.com/BenjaminA2mains" target="_blank" >
            <!-- <img src="https://abs.twimg.com/favicons/twitter.2.ico" width="20px" height="20px"/> -->
        </a>
    </p>
</footer>

<script type="text/javascript" src='js/main.js'></script>
<script type="text/javascript" src='js/rewriter.js'></script>
<?= $page == 'Galerie' ? '<script type="text/javascript" src="js/overphoto.js"></script>' : '' ?>
<?= $page == 'Admin' ? '<script type="text/javascript" src="js/form.v2.js"></script>' : '' ?>
</body>
</html>