$(function() {
    window.addEventListener('message', function(event) {
        if (event.data.isInCoche) {
            $(".todo").addClass('isInCoche');
            $(".velo").html(Math.round(event.data.speed) + "");
            $(".percent-gasofa").css("width", (event.data.gasofa) + "%");
            $(".marcha").html(Math.round(event.data.marcha) + "");
        } else {
            $(".todo").removeClass('isInCoche');
        }
    });
});