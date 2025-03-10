import './js/accueil.js'
import './js/aos.js'

import './styles/app.css';
import './styles/competence.css'


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

document.addEventListener('DOMContentLoaded', function () {
    const button = document.querySelector('[data-collapse-toggle="navbar-default"]');
    const navbar = document.getElementById('navbar-default');
    
    button.addEventListener('click', function () {
    navbar.classList.toggle('hidden');
    });
});