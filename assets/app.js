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
        });

        // Gérer le clic sur le bouton SLAM
        slamInfo.addEventListener("click", function () {
            slamContent.style.display = "flex";
            slamContent.style.flexDirection = "column";
            slamContent.style.alignItems = "center";
            sisrContent.style.display = "none";
        });
    }
});
