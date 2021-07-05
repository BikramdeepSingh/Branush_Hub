//selecting the elements from the html
const toogleSwitch = document.querySelector('input[ type = "checkbox"]')
const icon = document.querySelector('#icon')

//switch theme
function darkMode() {
  icon.classList.replace('fa-sun', 'fa-moon')
  toogleSwitch.checked = 'true'
}

function lightMode() {
  icon.classList.replace('fa-moon', 'fa-sun')
}

function switchTheme(event) {
  if (event.target.checked) {
    document.documentElement.setAttribute('data-theme', 'dark')
    localStorage.setItem('theme', 'dark')
    darkMode()
  } else {
    document.documentElement.setAttribute('data-theme', 'light')
    localStorage.setItem('theme', 'light')
    lightMode()
  }
}

//event listner
toogleSwitch.addEventListener('change', switchTheme)
//local storage
const currentTheme = localStorage.getItem('theme')
if (currentTheme) {
  document.documentElement.setAttribute('data-theme', currentTheme)

  if (currentTheme === 'dark') {
    toggleSwitch.checked = true
    darkMode()
  }
}
