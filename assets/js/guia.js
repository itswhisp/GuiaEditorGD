function goBack() {
    if (history.length > 1) {
        history.back();
    } else {
        window.location.replace('/');
    }
}

/*document.addEventListener('DOMContentLoaded', function () {
    // Lista de las guias, si no se encuentra en esta lista, la pagina no cargara (Temporal)
    var guides = {
        // Flags, 1: No Traducida, 2: Contiene Errores, 3: Desactualizada
        'Introduccion': [
            { name: 'Conceptos Basicos', path: 'https://raw.githubusercontent.com/ItsWhisp/GuiaEditorGD/main/guias/Triggers/InvertColor.md', flag: 1 },
            { name: 'Elegir una cancion', path: 'https://raw.githubusercontent.com/ItsWhisp/GuiaEditorGD/main/guias/Introduccion/ElegirCancion.mds', flag: 1 },
            { name: 'Menu de pausa', path: '/guias/Introduccion/MenuPausa.md', flag: 1 },
            { name: 'Publiicar tu nivel', path: '/guias/Introduccion/PublicarNivel.md', flag: 1 },
        ],
        'Objetos': [
            { name: 'Objetos del gameplay', path: 'guias/Objetos/ObjetosGameplay.md', flag: 1 },
            { name: 'Objetos Animados', path: 'guias/Objetos/ObjetosAnimados.md', flag: 1 },
            { name: 'Objetos Personalizados', path: '/guias/Objetos/ObjetosPersonalizados.md', flag: 1 },
            { name: 'Items', path: 'guias/Objetos/Items.md', flag: 1 },
            { name: 'Editar Grupos', path: 'guias/Objetos/EditarGrupos.md', flag: 1 },
        ],
        'Triggers: Basicos': [
            { name: 'Introduccion', path: 'guias/Triggers/IntroduccionTriggers.md', flag: 1 },
            { name: 'Start Pos', path: 'guias/Triggers/StartPos.md', flag: 1 },
            { name: 'Move', path: 'guias/Triggers/Move.md', flag: 1 },
            { name: 'Stop', path: 'guias/Triggers/Stop.md', flag: 1 },
            // { name: 'Toggle', path: '/guias/Triggers/Toggle.md', flag: 1 },
            { name: 'Spawn', path: 'guias/Triggers/Spawn.md', flag: 1 },
            { name: 'Rotate', path: 'guias/Triggers/Rotate.md', flag: 1 },
            { name: 'Scale', path: 'guias/Triggers/Scale.md', flag: 1 },
            { name: 'Touch', path: 'guias/Triggers/Touch.md', flag: 1 },
            // { name: 'On Death', path: '/guias/Triggers/OnDeath.md', flag: 1 },
            // { name: 'Options', path: '/guias/Triggers/Options.md', flag: 1 },
        ],
        'Triggers: Visuales': [
            { name: 'Color', path: 'guias/Triggers/Color.md', flag: 1 },
            { name: 'Pulse', path: 'guias/Triggers/Pulse.md', flag: 1 },
            { name: 'Alpha', path: 'guias/Triggers/Alpha.md', flag: 1 },
            { name: 'Shake', path: 'guias/Triggers/Shake.md', flag: 1 },
            { name: 'Animate', path: 'guias/Triggers/Animate.md', flag: 1 },
            { name: 'Keyframe Animation', path: 'guias/Triggers/KeyframeAnimation.md', flag: 1 },
            { name: 'Keyframe', path: 'guias/Triggers/Keyframe.md', flag: 1 },
            { name: 'Area Triggers', path: 'guias/Triggers/AreaTriggers.md', flag: 1 },
            { name: 'Area Stop', path: 'guias/Triggers/Stop.md', flag: 1 },
            { name: 'Change BG/G/MG', path: 'guias/Triggers/ChangeBG.md', flag: 1 },
        ],
    }; 

    function generateNavbar() { // Genera la barra de navegacion dinamicamente
        var html = '<ul>';
        for (var section in guides) {
            // Expande la seccion actual automaticamente
            var openSection = guides[section].some(guide => guide.path.split('/').pop().split('.')[0] === window.location.hash.substring(1));
            html += `<li><details ${openSection ? 'open' : ''}><summary>${section}</summary><ul>`;
            // Añade cada guia a la barra de navegacion de forma recursiva
            guides[section].forEach(guide => {
                var flagClass = guide.flag === 1 ? 'not-translated' : guide.flag === 2 ? 'contains-mistakes' : guide.flag === 3 ? 'outdated' : '';
                html += `<li>${(guide.path.split('/').pop().split('.')[0] === window.location.hash.substring(1))
                    ? `<strong class="${flagClass}">${guide.name}</strong>` // Texto en negrita si es la pagina actual
                    // Añadir como URL de no ser asi
                    : `<a class="${flagClass}" href='#${guide.path.split('/').pop().split('.')[0]}'>${guide.name}</a>`}</li>`;
            });
            html += '</ul></details></li>';
        }
        html += '</ul>';
        return html;
    }

    /*function loadGuide() { // Cargar la guia de la URL
        document.getElementById('error').classList.add('hidden');
        document.getElementById('loading').classList.remove('hidden');

        // Obtener ID de la URL
        var urlHash = window.location.hash.substring(1);

        // Verificar si la guia existe
        var sectionIndex = 1;
        for (var section in guides) {
            var sectionGuides = guides[section];
            var pageIndex = 1;
            for (var i = 0; i < sectionGuides.length; i++) {
                var guide = sectionGuides[i];
                if (guide.path.split('/').pop().split('.')[0] === urlHash) { // La guia existe
                    document.getElementById('title').textContent = `${sectionIndex}.${pageIndex}: ${guide.name}`;
                    fetch(guide.path)
                        .then(response => {
                            if (!response.ok) {
                                document.querySelector('#error p').textContent = 'Ocurrio un error al tratar de cargar la guia (404)';
                                document.getElementById('loading').classList.add('hidden');
                                document.getElementById('error').classList.remove('hidden');
                                return;
                            }
                            return response.text();
                        })
                        .then(result => {
                            showdown.setFlavor('github');
                            const converter = new showdown.Converter({
                                tables: true,
                                noHeaderId: true,
                                simpleLineBreaks: true,
                                disableForced4SpacesIndentedSublists: true,
                            });
                            var guideHtml = converter.makeHtml(result);
                            document.getElementById('guideNavbar').innerHTML = generateNavbar();
                            document.getElementById('guideContent').innerHTML = guideHtml;
                            document.getElementById('loading').classList.add('hidden');
                        })
                        .catch(error => {
                            console.error(error);
                            document.querySelector('#error p').textContent = 'Ocurrio un error al tratar de cargar la guia';
                            document.getElementById('loading').classList.add('hidden');
                            document.getElementById('error').classList.remove('hidden');
                        });
                    return;
                }
                pageIndex++;
            }
            sectionIndex++;
        }

        // La guia no existe
        document.getElementById('loading').classList.add('hidden');
        document.getElementById('error').classList.remove('hidden');
    }
**/
    // Atajos de teclado
    document.addEventListener('keydown', function (event) {
        if (event.key === 'Escape') {
            history.back();
        }
    });

    //loadGuide();
    //window.addEventListener('hashchange', function () {
    //    loadGuide();
    //});

    document.addEventListener("DOMContentLoaded", function() {
        document.getElementById('loading').classList.add('hidden');
      });


    // var currentUrl = window.location.href;
    // fetch(currentUrl)
    // .then(function(response) {
    //     if(response.status == 404){
    //         document.getElementById('loading').classList.add('hidden');
    //         document.getElementById('error').classList.remove('hidden');
    //     }
    // })
    // .catch(function(error) {
    //     // Manejar errores de solicitud
    //     console.error("Error al realizar la solicitud:", error);
    // });
//});
