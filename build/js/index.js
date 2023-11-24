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

// Слайдер-свайпер
new Swiper('.swiper-container', {
	loop: true,
	navigation: {
		nextEl: '.swiper-button-next',
		prevEl: '.swiper-button-prev',
	},
})