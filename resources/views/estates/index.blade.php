@extends('layouts.master')

@section('content')
@foreach($estates as $estate)
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
              <img src="{{asset('storage/'. $estate->image)}}">
            <div class="card-body">
            <strong class="d-inline-block mb-2 text-primary">
              @foreach ($estate->categories as $category)
               {{$category->name}} 
              @endforeach
            </strong>
            <hr>
            <strong class="d-inline-block mb-2 text-primary">
              @foreach ($estate->agences as $agence)
               {{$agence->name}} 
              @endforeach
            </strong>
            <h3 class="mb-0">{{$estate->title}}</h3>
            <div class="mb-1 text-muted">{{$estate->created_at->format('d/M/Y')}}</div>
              <p class="card-text">{{$estate->soustitre}}</p>
              <strong class="card-text">{{$estate->getFormatedPrice()}}</strong>
              <div class="d-flex justify-content-between align-items-center">
                <a href="{{route ('estates.show', $estate->slug)}}" class="stretched-link btn btn-info">Voir</a>
              </div>
            </div>
          </div>
        </div>
        @endforeach
        {{$estates->appends(request()->input())->links()}}
@endsection