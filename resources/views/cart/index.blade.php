@extends('layouts.master')

@section('content')
 @if(Cart::count() > 0)
    <section>

    <!--Grid row-->
    <div class="row">

        <!--Grid column-->
        <div class="col-lg-7">

        <!-- Card -->
        <div class="card wish-list mb-3">
            <div class="card-body">
                    @foreach(Cart::content() as $estate)
                    <div class="row mb-4">
                        <div class="col-md-5 col-lg-3 col-xl-3">
                        <div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
                            <img class="img-fluid w-100"
                            src="{{ asset('storage/' . $estate->model->image) }}" alt="Sample">
                        </div>
                        </div>
                        <div class="col-md-7 col-lg-9 col-xl-9">
                        <div>
                            <div class="d-flex justify-content-between">
                            <div>
                                <h5>{{$estate->model->title}}</h5>
                            </div>
                            </div>
                            <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <form action="{{route('cart.destroy', $estate->rowId)}}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                        <button type="submit" class="text-dark"><i class="fa fa-trash">Supprimer article</i>
                                </form>
                            </div>
                            <p class="mb-0"><span><strong>{{$estate->model->getFormatedPrice()}}</strong></span></p>
                            </div>
                        </div>
                        </div>
                    </div>
                    <hr class="mb-4">
                    @endforeach
            </div>
        </div>
        <!-- Card -->

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-5">

        <!-- Card -->
        <div class="card mb-4">
            <div class="card-body">

            <h5 class="mb-4">Coût des biens</h5>

            <ul class="list-group list-group-flush">
                <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                Prix
                <span>{{getPrice(Cart::subtotal())}}</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                Taxe et frais d'agence
                <span>{{getPrice(Cart::tax())}}</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                <div>
                    <strong>Total</strong>
                    <strong>
                    <p class="mb-0">(avec frais d'agence et taxe)</p>
                    </strong>
                </div>
                <span><strong>{{getPrice(Cart::total())}}</strong></span>
                </li>
            </ul>
            </div>
        </div>
        </div>
        <!--Grid column-->

    </div>
    <!--Grid row-->

    </section>
 @else
    <p>Votre panier est vide </p>
 @endif
@endsection