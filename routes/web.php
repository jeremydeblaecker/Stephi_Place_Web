<?php

use Illuminate\Support\Facades\Route;
use Gloudemans\Shoppingcart\Facades\Cart;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\VoyagerController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/boutique', 'EstateController@index')->name('estates.index');
Route::get('/boutique/{slug}', 'EstateController@show')->name('estates.show');

Route::get('/videpanier', function(){
    Cart::destroy();
});
Route::group(['middleware' => ['auth']], function(){
    Route::post('/panier/ajouter', 'CartController@store')->name('cart.store');
    Route::get('/panier', 'CartController@index')->name('cart.index');
    Route::delete('/panier/{rowId}', 'CartController@destroy')->name('cart.destroy');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/search', 'EstateController@search')->name('estates.search');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
