/*
 * Gestion des numéros de téléphone
*/
function normaliserNumero(numero) {
    numero = numero.replace(/\s/g, '').replace(/-/g, '').replace(/\(/g, '').replace(/\)/g, '');
    if (numero.startsWith('0')) {
        numero = '+33' + numero.substr(1);
    }
    numero = numero.replace(/^(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})$/, '+33 $1 $2 $3 $4 $5 $6');
    return numero;
}

const tels = document.querySelectorAll('#tel');
tels.forEach(tel => {
    if (tel.hasAttribute('data-tel')) {
        let numero = tel.getAttribute('data-tel');
        numero = normaliserNumero(numero)
        tel.textContent = numero
    }
});

/*
 * Gestion de la navbar
*/
const hamb = document.querySelector('.hamburger');
const menu = document.querySelector('.nav-menu');
hamb.addEventListener('click', () => {
    hamb.classList.toggle('active');
    menu.classList.toggle('active');
});

document.querySelectorAll('.nav-link').forEach(link => {
    link.addEventListener('click', () => {
        hamb.classList.remove('active');
        menu.classList.remove('active');
    });
});

/*
 * Gestion des onglets
*/
const onglets = document.querySelectorAll('#onglets .onglet');
onglets.forEach(onglet => {
    onglet.addEventListener('click', () => {
        const modal = document.querySelector('section#modal');
        const img = onglet.querySelector('img'); 
        if (modal) {
            removeModal(modal);
            createModal(img);
        } else {
            createModal(img);
        }
    });
});

function createModal(e) {
    const main = document.querySelector('main');
    const section = document.createElement('section');
    section.id = 'modal';
    section.classList = 'modal';
    section.appendChild(e.cloneNode());
    main.insertBefore(section, main.firstChild);
}

function removeModal(modal) {
    modal.remove();
}