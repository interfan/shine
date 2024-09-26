
<a href="#" class="backtotop">
    <i class="fa fa-angle-double-up"></i>
</a>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- <script src="../assets/bootstrap-ad/js/jquery-3.7.1.slim.min.js" crossorigin="anonymous"></script> -->
<script src="../assets/bootstrap-ad/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<!-- Include Slick JS -->
<script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>

<script>
    $(document).ready(function(){
        $('.slider').slick({
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            dots: true,
            arrows: true,
            autoplay: false,
            autoplaySpeed: 2000,
        });

        // Initialize Fancybox
        $('[data-fancybox]').fancybox({
            loop: true,
            buttons: [
                'slideShow',
                'thumbs',
                'close'
            ]
        });
    });
</script>
<!-- <script src="../assets/js/jquery-1.12.4.min.js"></script>
<script src="../assets/js/jquery.plugin-countdown.min.js"></script>
<script src="../assets/js/jquery-countdown.min.js"></script> -->
<!-- <script src="../assets/js/bootstrap.min.js"></script> -->
<!-- <script src="../assets/js/owl.carousel.min.js"></script>
<script src="../assets/js/magnific-popup.min.js"></script>
<script src="../assets/js/isotope.min.js"></script> -->
<!-- <script src="../assets/js/jquery.scrollbar.min.js"></script> -->
<!-- <script src="../assets/js/jquery-ui.min.js"></script> -->
<!-- <script src="../assets/js/mobile-menu.js"></script>
<script src="../assets/js/chosen.min.js"></script> -->
<!-- <script src="../assets/js/slick.js"></script> -->
<!-- <script src="../assets/js/jquery.elevateZoom.min.js"></script> -->
<!-- <script src="../assets/js/jquery.actual.min.js"></script> -->
<!-- <script src="../assets/js/fancybox/source/jquery.fancybox.js"></script> -->
<!-- <script src="../assets/js/lightbox.min.js"></script>
<script src="../assets/js/owl.thumbs.min.js"></script> -->
<!-- <script src="../assets/js/jquery.scrollbar.min.js"></script> -->
<script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyC3nDHy1dARR-Pa_2jjPCjvsOR4bcILYsM'></script>
<!-- <script src="../assets/js/frontend-plugin.js"></script> -->
</body>
</html>