function goBack() {
    if (history.length > 1) {
        history.back();
    } else {
        window.location.replace('/');
    }
}

document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('loading').classList.add('hidden');
    document.querySelector('#guideContent').addEventListener('scroll', function () {

        // Desvanecer titulo en moviles al scrollear
        if (window.innerWidth <= 700) {
            if (this.scrollTop > this.lastScrollTop) { // Scroll hacia aabjo
                document.querySelector('.titlebar').style.opacity = '0.2';
            } else { // Scroll hacia arriba
                document.querySelector('.titlebar').style.opacity = '1';
            }
        }

        this.lastScrollTop = this.scrollTop;
    });
});

window.addEventListener('resize', function () {
    document.querySelector('.titlebar').style.opacity = '1';
});

// Atajos de teclado
document.addEventListener('keydown', function (event) {
    if (event.key === 'Escape') {
        goBack();
    }
});
