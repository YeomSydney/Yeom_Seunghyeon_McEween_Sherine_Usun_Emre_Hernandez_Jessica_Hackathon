const sections = document.querySelectorAll('section[id]');
    
const scrollActive = () => {
    const scrollY = window.pageYOffset

	sections.forEach(current => {

		const   sectionHeight = current.offsetHeight,
                sectionTop = current.offsetTop + 170,
                sectionId = current.getAttribute('id'),
                sectionsClass = document.querySelector('.nav_menu a[href*=' + sectionId + ']')

		if(scrollY > sectionTop && scrollY <= sectionTop + sectionHeight){
			sectionsClass.classList.add('active-link')
		} else{
			sectionsClass.classList.remove('active-link')
		}                                                    
	})
}

window.addEventListener('scroll', scrollActive)