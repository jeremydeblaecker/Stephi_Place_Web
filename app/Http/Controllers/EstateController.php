<?php

namespace App\Http\Controllers;

use App\estate;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class EstateController extends Controller
{
    public function index()
    {
        if(request()->categorie){
            $estates =estate::with('categories')->whereHas('categories', function ($query){
                $query->where('slug', request()->categorie);
            })->orderBy('created_at', 'DESC')->paginate(6);
        } elseif (request()->agence){
            $estates =estate::with('agences')->whereHas('agences', function ($query){
                $query->where('slug', request()->agence);
            })->orderBy('created_at', 'DESC')->paginate(6);        
        }else{
            $estates = estate::with('agences')->paginate(9);
        }
        return view('estates.index')->with('estates', $estates);
        
    }

    public function show($slug)
    {
        $estate = estate::where('slug', $slug)->firstorFail();

        return view('estates.show')->with('estate', $estate);
    }
    public function search()
    {
        request()->validate([
            'q' => 'required|min:3'
        ]);
        $q = request()->input('q');
        
        $estates = estate::where('title', 'like', "%$q%")
            ->orWhere('description', 'like', "%$q%")
            ->paginate(6);

            return view('estates.search')->with('estates', $estates);
    }
}
