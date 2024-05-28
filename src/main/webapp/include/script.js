
'use strict';

/*사이드바 눌렀을 때*/

window.addEventListener('DOMContentLoaded', () => {
    const navbarBurger = document.querySelector('.navbar_burger');
    const navbarBurgerBack = document.querySelector('.navbar_burger_back');
    const navbarMenu = document.querySelector('.navbar_menu');
    const navbarOverlay = document.querySelector('.navbar_overlay');

    navbarBurger.addEventListener('click', () => {
      navbarMenu.classList.toggle('active');
      navbarOverlay.classList.toggle('active');
    });

    navbarBurgerBack.addEventListener('click', () => {
      navbarMenu.classList.remove('active');
      navbarOverlay.classList.remove('active');
    });

    navbarOverlay.addEventListener('click', () => {
      navbarMenu.classList.remove('active');
      navbarOverlay.classList.remove('active');
    });
  });
  
