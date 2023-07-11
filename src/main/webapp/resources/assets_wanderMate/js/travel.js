'use strict';
// index

// index_02

//index_03

//index_04
const open = document.getElementById('open');
const modalContainer = document.getElementById('modal_container');
const close = document.getElementById('close');

open.addEventListener('click', () => {
  modalContainer.style.display = 'block';
});

close.addEventListener('click', () => {
  modalContainer.style.display = 'none';
});
