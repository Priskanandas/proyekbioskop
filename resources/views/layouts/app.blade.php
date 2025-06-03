<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

        <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Movies</title>

    <!-- Bootstrap core CSS -->
    <link href="{{asset('agency/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="{{asset('agency/vendor/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
<!-- Font Awesome (versi 6) -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <!-- Custom styles for this template -->
    <link href="{{ asset('agency/css/agency.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/select2.min.css')}}">

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top navbar-shrink" id="mainNav">
      <div class="container">
        @guest
          <a class="navbar-brand js-scroll-trigger" href="{{ url('/') }}">Movies</a>
        @else
          @if(Auth::user()->admin == 1)
            <a class="navbar-brand js-scroll-trigger" href="{{ url('/admin_home') }}">Movies</a>
          @else
            <a class="navbar-brand js-scroll-trigger" href="{{ url('/') }}">Movies</a>
          @endif
        @endguest
        
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            @guest
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
                </li>
                <li class="nav-item ">
                <a class="nav-link js-scroll-trigger" role="button" href="{{ route('login') }}">{{ __('Login') }}</a>
                </li>
                <li class="nav-item ">            
                  <a class="nav-link js-scroll-trigger" role="button" href="{{ route('register') }}">{{ __('Register') }}</a>
                </li>
            @else
            <li class="nav-item d-flex align-items-center">
  <form action="{{ url('user_home/search') }}" method="GET" class="form-inline my-1">
    <div class="input-group input-group-sm">
      <div class="input-group-prepend">
        <span class="input-group-text bg-white border-right-0">
          <i class="fa fa-search text-muted"></i>
        </span>
      </div>
      <input type="text" name="q" class="form-control border-left-0" placeholder="Sarch" style="width: 200px;">
    </div>
  </form>
</li>
<li class="nav-item d-flex align-items-center">
  <a href="/transaksi/checkout/{{Auth::user()->id}}" class="nav-link">
    <i class="fas fa-shopping-cart"></i>
  </a>
</li>
            <li class="nav-item"><a class="nav-link" href="{{ asset('/nowplaying') }}">Now Playing</a> </li>
            <li class="nav-item"><a class="nav-link" href="{{ asset('/upcoming') }}">Upcoming</a> </li>

              <li class="nav-item dropdown">
                  <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                      {{ Auth::user()->name }} <span class="caret"></span>
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="/profile/{{Auth::user()->id}}">
                          PROFILE </a>
                      <a class="dropdown-item" href="/transaksi/status/{{Auth::user()->id}}">Status</a>
                      <a class="dropdown-item" href="{{ route('logout') }}"
                         onclick="event.preventDefault();
                                       document.getElementById('logout-form').submit();">
                          {{ __('Logout') }} </a>
                      <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                          @csrf
                      </form>
                      
                  </div>
              </li>
            @endguest
          </ul>
        </div>
      </div>
    </nav>

    <main>
        @yield('content');
    </main>

    <!-- Footer -->
    <footer  class="navbar-fixed-bottom" style="margin-bottom: 0px; margin-top: auto;">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <span class="copyright"> &copy; Movies 2021. All rights reserved</span>
          </div>
          <div class="col-md-4">
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-facebook"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-linkedin"></i>
                </a>
              </li>
            </ul>
          </div>
          <div class="col-md-4">
            <ul class="list-inline quicklinks">
              <li class="list-inline-item">
                <a href="#">Privacy Policy</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Terms of Use</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="{{asset('agency/vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('agency/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

    <!-- Plugin JavaScript -->
    <script src="{{asset('agency/vendor/jquery-easing/jquery.easing.min.js')}}"></script>

    <!-- Autocomplete Search -->
    <script src="{{asset('js/select2.min.js')}}"></script>

    <!-- Contact form JavaScript -->
    <script src="{{asset('agency/js/jqBootstrapValidation.js')}}"></script>
    <script src="{{asset('agency/js/contact_me.js')}}"></script>

    <!-- Custom scripts for this template -->
    <script src="{{asset('agency/js/agency_fix.js')}}"></script>

    {{-- Ajax --}}
    <script src="{{asset('js/ajax.js')}}"></script>

    <!-- Edit Profile -->
    <script src="{{asset('js/editProfil.js')}}"></script>

    <!-- Autocomplete Search -->
    <script src="{{asset('js/select2.min.js')}}"></script>

  </body>

</html>