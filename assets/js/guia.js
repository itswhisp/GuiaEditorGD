function goBack() {
    if (history.length > 1) {
        history.back();
    } else {
        window.location.replace('/');
    }
}


    // Atajos de teclado
    document.addEventListener('keydown', function (event) {
        if (event.key === 'Escape') {
            history.back();
        }
    });

    document.addEventListener("DOMContentLoaded", function() {
        document.getElementById('loading').classList.add('hidden');
      });

      