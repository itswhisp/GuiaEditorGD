document.addEventListener("DOMContentLoaded", function () {
    /* --------------------------- Dialogo de creditos -------------------------- */
    var creditsPages = document.querySelectorAll('.credits-page');
    var creditsIndex = 0;

    function switchCreditsPage(direction) {
        // Definir pagina visible actualmente
        for (var i = 0; i < creditsPages.length; i++) {
            if (!creditsPages[i].classList.contains('hidden')) {
                creditsIndex = i;
                break;
            }
        }

        // Ocultar la pagina actual
        creditsPages[creditsIndex].classList.add('hidden');

        // Cambia de pagina segun la flecha pulsada
        if (direction === 'left') {
            creditsIndex = (creditsIndex - 1 + creditsPages.length) % creditsPages.length;
        } else if (direction === 'right') {
            creditsIndex = (creditsIndex + 1) % creditsPages.length;
        }

        // Muestra la siguiente pagina
        creditsPages[creditsIndex].classList.remove('hidden');

        // Oculta o muestra las flechas según la posición de la página
        document.querySelector('.arrow.left').classList.toggle('hidden', creditsIndex === 0);
        document.querySelector('.arrow.right').classList.toggle('hidden', creditsIndex === creditsPages.length - 1);
    }

    document.querySelector('.arrow.left').addEventListener('click', function () {
        switchCreditsPage('left');
    });

    document.querySelector('.arrow.right').addEventListener('click', function () {
        switchCreditsPage('right');
    });

    new MutationObserver(function (mutationsList) {
        mutationsList.forEach(function (mutation) {
            if (mutation.attributeName === 'style') {
                var popupDisplay = window.getComputedStyle(document.getElementById('credits')).display;
                document.body.style.overflowY = (popupDisplay === 'flex') ? 'hidden' : 'initial';
                document.documentElement.style.overflowY = (popupDisplay === 'flex') ? 'hidden' : 'initial';
            }
        });
    }).observe(document.getElementById('credits'), { attributes: true });

    document.addEventListener('keydown', function (event) {
        if (!window.getComputedStyle(document.querySelector('.popup')).display !== 'none') {
            if (event.key === 'ArrowLeft' && creditsIndex > 0) {
                switchCreditsPage('left');
            } else if (event.key === 'ArrowRight' && creditsIndex < creditsPages.length - 1) {
                switchCreditsPage('right');
            } else if (event.key === 'Escape') {
                document.getElementById('credits').style.display = 'none';
            }
        }
    });

    /* --------------------------- Tippy.js (Tooltips) -------------------------- */
    tippy('[data-tippy-content]', {
        touch: false,
        arrow: false,
        offset: [0, 15],
        theme: 'gdTippy',
        maxWidth: 'none',
        followCursor: true,
        placement: 'right-start',
    });
});
