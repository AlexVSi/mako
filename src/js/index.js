// Отступы =======================================================
resizeWindow()

window.addEventListener('resize', (e) => {
	resizeWindow()
})

function resizeWindow() {
	const container = document.querySelector('.about__container')
	const marg = getComputedStyle(container).marginLeft

	const formContainer = document.querySelector('.form__container')
	formContainer.style.marginLeft = marg

	const smileArea = document.querySelector('.smile__area')
	smileArea.style.paddingRight = marg
}

// Слайдер =======================================================
class Web {
	constructor(title, text, link, imgPath) {
		this.title = title
		this.text = text
		this.link = link
		this.imgPath = imgPath
	}
}

let webs = [
	salniki = new Web('Сайт <br/> для автосервиса', 'с онлайн-калькулятором и SEO-оптимизацией', 'https://www.reica.md', './img/salniki.jpg'),
	glavLendStroy = new Web('Сайт <br/> для строительной компании', 'крупная строительная компания', 'https://glavlandstroy.ru', './img/GlavLendStroy.jpg'),
	asphalt = new Web('Сайт <br/> для дорожной компании', 'с онлайн калькулятором', 'https://asp-glavlandstroy.ru', './img/asphalt.jpg'),
	businessWeek = new Web('Сайт <br/> посвященный бизнес-событию', 'с онлайн калькулятором', 'https://businessweek.by', './img/businessWeek.jpg'),
]

console.log(webs)

// Получаем элементы слайдера
const slider = document.querySelector('.portfolio__slider');
const prevButton = document.querySelector('.back__button');
const nextButton = document.querySelector('.next__button');
// const slides = Array.from(slider.querySelectorAll('.portfolio__slider'));
const slideCount = webs.length
let slideIndex = 0;

const img = document.querySelector('.portfolio__img')
const title = document.querySelector('.work__title')
const text = document.querySelector('.work__text')
const link = document.querySelector('.see__button')


// Устанавливаем обработчики событий для кнопок
prevButton.addEventListener('click', showPreviousSlide);
nextButton.addEventListener('click', showNextSlide);

// Функция для показа предыдущего слайда
function showPreviousSlide() {
  slideIndex = (slideIndex - 1 + slideCount) % slideCount;
  updateSlider();
}

// Функция для показа следующего слайда
function showNextSlide() {
  slideIndex = (slideIndex + 1) % slideCount;
  updateSlider();
}

function updateSlider() {
	let web = webs[slideIndex]
	img.setAttribute('src', `${web.imgPath}`)
	title.innerHTML = web.title
	text.textContent = web.text
	link.href = web.link
	console.log(web.title)
}

// Инициализация слайдера
updateSlider();