const images = document.querySelectorAll("img.photo");
const main = document.querySelector('main');

function ouvrirModal(image) {

    const bg = document.createElement('div');
    bg.className = 'modal_bg';
    bg.id = 'modal';

    const modal = document.createElement('div');
    modal.className = 'modal_over';
    
    const img = document.createElement('img');
    img.src = image.src;
    img.className = 'modal_img';

    const exit = document.createElement('div');
    exit.className = 'modal_exit';
    exit.textContent = '×';

    img.addEventListener("dblclick", removeModal);
    exit.addEventListener('click', removeModal);

    const zoomBox = document.createElement("div");
    zoomBox.className = 'zoom-box';
    zoomBox.id = 'zoombox';
    zoomBox.style.backgroundImage = `url(${img.src})`;

    zoomLens(img, zoomBox);

    img.addEventListener("click", () => {
        if (modal.contains(zoomBox)) {
            modal.removeChild(zoomBox);
        }
    });
    modal.appendChild(img);
    modal.appendChild(exit);
    bg.appendChild(modal);
    main.appendChild(bg);
}

function zoomLens(img, zoomBox) {

    var zoom = 2;

    ObjImage = new Image();
    ObjImage.src = img.src
    ObjImage.onload = () => {
        var W = ObjImage.width;
        var H = ObjImage.height;
        zoomBox.style.backgroundSize = (W * zoom) + "px " + (H * zoom) + "px";

        img.addEventListener('mousemove', movezoomBox);
        img.addEventListener('mouseleave', removeZoomBox);

        function movezoomBox(e) {
            var x = e.clientX - (zoomBox.offsetWidth / 2);
            var y = e.clientY - (zoomBox.offsetHeight / 2);
            x = Math.min(Math.max(x, 0), W - zoomBox.offsetWidth);
            y = Math.min(Math.max(y, 0), H - zoomBox.offsetHeight);
            zoomBox.style.left = x + "px";
            zoomBox.style.top = y + "px";
            zoomBox.style.backgroundPosition = -(x * zoom) + "px "+ -(y * zoom) + "px";

            console.clear()
            console.log(zoomBox)
            modal.appendChild(zoomBox);
        }
    }
}

function removeZoomBox() {
    const existZoomBox = document.querySelector('div#zoombox');
    if (existZoomBox) {
        existZoomBox.remove();
    }
}

function removeModal() {
    const existModal = document.querySelector('div#modal');
    if (existModal) {
        existModal.remove();
    }
}

images.forEach((image) => {
    image.addEventListener("dblclick", () => {
        ouvrirModal(image);
    });
});