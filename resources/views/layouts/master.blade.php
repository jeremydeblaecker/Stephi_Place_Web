
<!doctype html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">
    <title>Stephi Place</title>
    <script src="{{asset('js/app.js')}}" defer></script>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/4.5/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/4.5/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/4.5/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/4.5/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/4.5/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="/docs/4.5/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.5/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">

    <link rel="stylesheet" href="{{asset('css/estate.css')}}">
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .jumbotron {
        padding-top: 3rem;
        padding-bottom: 3rem;
        margin-bottom: 0;
        background-color: #fff;
        }
        @media (min-width: 768px) {
        .jumbotron {
            padding-top: 6rem;
            padding-bottom: 6rem;
        }
        }

        .jumbotron p:last-child {
        margin-bottom: 0;
        }

        .jumbotron h1 {
        font-weight: 300;
        }

        .jumbotron .container {
        max-width: 40rem;
        }

        footer {
        padding-top: 3rem;
        padding-bottom: 3rem;
        }

        footer p {
        margin-bottom: .25rem;
        }
    </style>
  </head>
  <body>
    <header>
      <div class="navbar navbar-blue bg-dark shadow-sm">
        <div class="container d-flex justify-content-between">
          <a href="{{route('estates.index')}}" class="navbar-brand d-flex align-items-center">
            <strong>Stephi Place</strong>
          
              <a class="text-muted" href="{{route('cart.index')}}">Favoris<span class="badge badge-pill badge-dark">{{Cart::count()}}</span></a>
              @include('partials.search')
              @include('partials.auth')</a>
        </div>
      </div>
</header>

<main role="main">
  @if(session('success'))
  <div class="alert alert-success">
      {{session('success')}}
  </div>

  @endif


  @if(session('error'))
  <div class="alert alert-danger">
      {{session('error')}}
  </div>
  @endif

  @if(count($errors)>0)
  <div class="alert alert-danger">
    <ul class="mb-0 mt-0">
      @foreach($errors->all() as $error)
       <li> {{ $error}}</li>
      @endforeach
    </ul>
  </div>
  @endif

  <section class="jumbotron text-center">
    <div class="container">
      <h1>Bienvenue</h1>
      <p class="lead text-muted">sur le site de Stephi Place, ici vous pouvez voir les propriétés misent à la vente.</p>
    </div>
  </section>



  <div class="album py-5 bg-light">  
    <div class="container"> 
      <div class="nav-scroller py-1 mb-2">      
        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Agences
        </a>

        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
        @foreach(App\Agence::all() as $agence)
          <a class="p-2 text-muted" href="{{route('estates.index', ['agence' => $agence->slug])}}">{{$agence->name}}</a>
        @endforeach
        </div>
      </div>

      <div class="nav-scroller py-1 mb-1">      
        <a class="btn btn-secondary dropdown-toggle 2" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Category
        </a>
        <div class="dropdown-menu 2" aria-labelledby="dropdownMenuLink">
        @foreach(App\Category::all() as $category)
          <a class="p-2 text-muted" href="{{route('estates.index', ['categorie' => $category->slug])}}">{{$category->name}}</a>
         @endforeach
        </div>
      </div>
      <hr>

      @if(request()->input('q'))
        <h6>{{ $estates->total()}} bien(s) trouvé(s) pour la recherche "{{request()->q}}"</h6>
      @endif
      <div class="row">
        @yield('content')
      </div>
    </div>
  </div>

</main>

<footer class="text-muted">
  <div class="container">
    <p class="float-right">
      <a href="#">Revenir au haut</a>
    </p>
    <p>Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
    <p>New to Bootstrap? <a href="https://getbootstrap.com/">Visit the homepage</a> or read our <a href="/docs/4.5/getting-started/introduction/">getting started guide</a>.</p>
  </div>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="/docs/4.5/assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/docs/4.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-1CmrxMRARb6aLqgBO7yyAxTOQE2AKb9GfXnEo760AUcUmFx3ibVJJAzGytlQcNXd" crossorigin="anonymous"></script></body>
</html>
