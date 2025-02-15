import './js/accueil'

import './styles/app.css';


window.addEventListener('scroll', function() {
    var scrollButton = document.getElementById('scrollButton');
    if (window.scrollY > 200) {
        scrollButton.classList.remove('hidden');
    } else {
        scrollButton.classList.add('hidden');
    }
});
document.getElementById('scrollButton').addEventListener('click', function() {
    window.scrollTo({ top: 0, behavior: 'smooth' });
});