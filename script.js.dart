// Script untuk navigasi sidebar
const menuLinks = document.querySelectorAll('.sidebar a');
const sections = document.querySelectorAll('.section');

menuLinks.forEach(link => {
  link.addEventListener('click', () => {
    // Hapus kelas active dari semua link dan section
    menuLinks.forEach(l => l.classList.remove('active'));
    sections.forEach(sec => sec.classList.remove('active'));

    // Tambahkan active ke link & section yang diklik
    link.classList.add('active');
    document.getElementById(link.dataset.target).classList.add('active');
  });
});
