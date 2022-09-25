<!-- meta tags and other links -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">  
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{{ $general->sitename($pageTitle ?? '') }}</title>
    <!-- site favicon -->
    <link rel="shortcut icon" type="image/png" href="{{getImage(imagePath()['logoIcon']['path'] .'/favicon.png')}}">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap">
    <!-- bootstrap 4  -->
    <link rel="stylesheet" href="{{ asset('assets/admin/css/vendor/bootstrap.min.css') }}">
    <!-- bootstrap toggle css -->
    <link rel="stylesheet" href="{{asset('assets/admin/css/vendor/bootstrap-toggle.min.css')}}">
    <!-- fontawesome 5  -->
    <link rel="stylesheet" href="{{asset('assets/admin/css/all.min.css')}}">
    <!-- line-awesome webfont -->
    <link rel="stylesheet" href="{{asset('assets/admin/css/line-awesome.min.css')}}">

    @stack('style-lib')

    <!-- custom select box css -->
    <link rel="stylesheet" href="{{asset('assets/admin/css/vendor/nice-select.css')}}">
    <!-- code preview css -->
    <link rel="stylesheet" href="{{asset('assets/admin/css/vendor/prism.css')}}">
    <!-- select 2 css -->
    <link rel="stylesheet" href="{{asset('assets/admin/css/vendor/select2.min.css')}}">
    <!-- jvectormap css -->
    <link rel="stylesheet" href="{{asset('assets/admin/css/vendor/jquery-jvectormap-2.0.5.css')}}">
    <!-- datepicker css -->
    <!-- <link rel="stylesheet" href="{{asset('assets/admin/css/vendor/datepicker.min.css')}}"> -->
    <!-- timepicky for time picker css -->
    <link rel="stylesheet" href="{{asset('assets/admin/css/vendor/jquery-timepicky.css')}}">
    <!-- bootstrap-clockpicker css -->
    <link rel="stylesheet" href="{{asset('assets/admin/css/vendor/bootstrap-clockpicker.min.css')}}">
    <!-- bootstrap-pincode css -->
    <link rel="stylesheet" href="{{asset('assets/admin/css/vendor/bootstrap-pincode-input.css')}}">
    <!-- dashdoard main css -->
    <link rel="stylesheet" href="{{asset('assets/admin/css/app.css')}}">
    @stack('style')

    <!-- Start ammelias -->
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="{{asset('assets/admin/ammelias/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/ammelias/css/owl.theme.default.min.css')}}">
    <!-- Slicknav -->
    <link rel="stylesheet" href="{{asset('assets/admin/ammelias/css/metisMenu.min.css')}}">
    <!-- magnific popup -->
    <link rel="stylesheet" href="{{asset('assets/admin/ammelias/css/magnific-popup.css')}}">
    <!-- Swiper Slider -->
    <link rel="stylesheet" href="{{asset('assets/admin/ammelias/vendors/swiper-master/css/swiper.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/ammelias/iconfont/flaticon.css')}}">
    <!-- Start data table -->
    <link rel="stylesheet" href="{{asset('assets/admin/ammelias/DataTables/css/jquery.dataTables.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/ammelias/DataTables/css/responsive.dataTables.min.css')}}">
    <!---date picker-->
    <link href="{{asset('assets/admin/ammelias/DatePicker/datepicker.css')}}" rel="stylesheet" type="text/css" />
    {{-- editor--}}
    <link href="{{asset('assets/admin/ammelias/Summernote/summernote-bs4.css')}}" rel="stylesheet">
    <!-- font family -->
    <link rel="stylesheet" href="{{asset('assets/admin/ammelias/css/proxima-nova.css')}}">
    <link rel="stylesheet" href="{{asset('assets/admin/ammelias/css/scrollbar.css')}}">
    <!-- Modernizr Js -->
    <script src="{{asset('assets/admin/ammelias/vendors/modernizr-js/modernizr.js')}}"></script>
    <!--for image drag and drop-->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/admin/ammelias/dropify/css/dropify.min.css')}}">
    <link href="{{asset('assets/admin/ammelias/alertify/css/alertify.min.css')}}" rel="stylesheet">  
    <!-- Site Style -->
    <link rel="stylesheet" href="{{asset('assets/admin/ammelias/style.css')}}">
    <!-- <link rel="stylesheet" href="{{asset('assets/admin/ammelias/css/responsive.css')}}"> -->
    <!-- End ammelias -->


</head>
<body>
@yield('content')



<!-- jQuery library -->
<script src="{{asset('assets/admin/js/vendor/jquery-3.5.1.min.js')}}"></script>

<!-- bootstrap js -->
<script src="{{asset('assets/admin/js/vendor/bootstrap.bundle.min.js')}}"></script>
<!-- bootstrap-toggle js -->
<script src="{{asset('assets/admin/js/vendor/bootstrap-toggle.min.js')}}"></script>

<!-- slimscroll js for custom scrollbar -->
<script src="{{asset('assets/admin/js/vendor/jquery.slimscroll.min.js')}}"></script>
<!-- custom select box js -->
<script src="{{asset('assets/admin/js/vendor/jquery.nice-select.min.js')}}"></script>


@include('partials.notify')
@stack('script-lib')
<script src="{{ asset('assets/admin/js/nicEdit.js') }}"></script>
<!-- code preview js -->
<script src="{{asset('assets/admin/js/vendor/prism.js')}}"></script>
<!-- seldct 2 js -->
<script src="{{asset('assets/admin/js/vendor/select2.min.js')}}"></script> 
<!-- main js -->
<script src="{{asset('assets/admin/js/app.js')}}"></script>
{{-- LOAD NIC EDIT --}}
<script>
    "use strict";
    bkLib.onDomLoaded(function() {
        $( ".nicEdit" ).each(function( index ) {
            $(this).attr("id","nicEditor"+index);
            new nicEditor({fullPanel : true}).panelInstance('nicEditor'+index,{hasPanel : true});
        });
    });
    (function($){
        $( document ).on('mouseover ', '.nicEdit-main,.nicEdit-panelContain',function(){
            $('.nicEdit-main').focus();
        });
    })(jQuery);
</script>
@stack('script')

<!-- Start ammelias -->
<!-- <script src="{{asset('assets/admin/ammelias/js/jquery.min.js')}}"></script> -->
<script src="{{asset('assets/admin/ammelias/js/popper.min.js')}}" ></script>
<!-- Owl Carousel -->
<script src="{{asset('assets/admin/ammelias/js/owl.carousel.min.js')}}"></script>
<!-- Counterup -->
<script src="{{asset('assets/admin/ammelias/js/waypoints.min.js')}}"></script>
<script src="{{asset('assets/admin/ammelias/js/counterup.min.js')}}"></script>
<!-- Slicknav -->
<!-- magnific popup -->
<script src="{{asset('assets/admin/ammelias/js/magnific-popup.min.js')}}"></script>
<!-- Swiper Slider -->
<script src="{{asset('assets/admin/ammelias/vendors/swiper-master/js/swiper.min.js')}}"></script>
<!-- Start data table -->
<script src="{{asset('assets/admin/ammelias/DataTables/js/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('assets/admin/ammelias/DataTables/js/dataTables.responsive.min.js')}}"></script>
<script src="{{asset('assets/admin/ammelias/js/scrollbar.min.js')}}"></script>
{{--Bootstrap editor--}}
<script src="{{asset('assets/admin/ammelias/Summernote/summernote-bs4.js')}}"></script>
<!---date picker-->
<script src="{{asset('assets/admin/ammelias/DatePicker/bootstrap-datepicker.js')}}"></script>

<!--drag and drop js-->
<script src="{{asset('assets/admin/ammelias/dropify/js/dropify.min.js')}}"></script>
<script src="{{asset('assets/admin/ammelias/dropify/js/form-file-uploads.js')}}"></script>
<script src="{{asset('assets/admin/ammelias/js/revenue-chart.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/admin/ammelias/alertify/alertify.min.js')}}"></script>
<!-- main js -->
<script src="{{asset('assets/admin/ammelias/js/main.js')}}"></script>


@yield('script')
<!-- End ammelias -->

</body>
</html>
