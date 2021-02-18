const init_nav_scroll = () => {
  const nav = document.querySelector('.navbar')

  window.addEventListener('scroll', (e) => {
    if (window.scrollY > 660) {
      nav.classList.remove('transp-navbar')
    } else {
      nav.classList.add('transp-navbar')
    }
  })
}

export { init_nav_scroll }
