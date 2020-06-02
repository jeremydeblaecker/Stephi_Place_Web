@extends('layouts.master')

@section('content')
<div class="col-md-6">
    <div class="card mb-4 shadow-sm">
        <img src="{{asset('storage/'. $estate->image)}}">

        <div class="card-body">
            <strong class="d-inline-block mb-2 text-primary">World</strong>
            <h3 class="mb-0">{{$estate->title}}</h3>
            <div class="mb-1 text-muted">{{$estate->created_at->format('d/M/Y')}}</div>
                <p class="card-text">{{$estate->description}}</p>
                <strong class="card-text">{{$estate->getFormatedPrice()}}</strong>
                <form action="{{route ('cart.store')}}" method="POST">
                    @csrf
                    <input type="hidden" name="estate_id" value="{{ $estate->id}}">
                    <button type="submit" class="btn btn-light">Ajouter aux favoris</button>
                </form>
        </div>
    </div>
</div>
@endsection