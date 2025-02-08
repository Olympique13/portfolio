document.addEventListener("DOMContentLoaded", function () {
    const sisrInfo = document.getElementById("sisrdebouche");
    const slamInfo = document.getElementById("slamdebouche");
    const sisrContent = document.getElementById("contentSisr");
    const slamContent = document.getElementById("contentSlam");

    if (sisrInfo && slamInfo && sisrContent && slamContent) {
        sisrInfo.addEventListener("click", function () {
            sisrContent.style.display = "flex";
            sisrContent.style.flexDirection = "column";
            sisrContent.style.alignItems = "center";
            slamContent.style.display = "none";

            sisrContent.scrollIntoView({ behavior: "smooth", block: "start" });
        });

        // Gérer le clic sur le bouton SLAM
        slamInfo.addEventListener("click", function () {
            slamContent.style.display = "flex";
            slamContent.style.flexDirection = "column";
            slamContent.style.alignItems = "center";
            sisrContent.style.display = "none";

            slamContent.scrollIntoView({ behavior: "smooth", block: "start" });
        });
    }

        const renduPrev = document.getElementById('renduPrev');
        const renduNext = document.getElementById('renduNext');
        const buttonNext = document.getElementById('buttonNext');

        if (renduPrev && buttonNext && renduNext) {
            buttonNext.addEventListener("click", function () {
                renduNext.style.display = "flex";
                renduNext.style.flexDirection = "column";
                renduNext.style.alignItems = "center";
                renduPrev.style.display = "none";
                buttonNext.style.display = "none";

                renduNext.scrollIntoView({behavior: "smooth", block: "start"});
            });
        }

        window.addEventListener('scroll', function() {
			var scrollButton = document.getElementById('scrollButton');
			if (window.scrollY > 200) {
				scrollButton.classList.remove('hidden');
			} else {
				scrollButton.classList.add('hidden');
			}
		});
        
});

function scrollToTop() {
    window.scrollTo({ top: 0, behavior: 'smooth' });
}
