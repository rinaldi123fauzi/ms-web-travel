<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])
    ->name('home');

Route::get('/detail/{slug}', [App\Http\Controllers\DetailController::class, 'index'])
    ->name('detail');

Route::post('/checkout/{id}', [App\Http\Controllers\CheckoutController::class, 'process'])
    ->name('checkout-process')
    ->middleware('auth', 'verified');

Route::post('/checkout/create/{detail_id}', [App\Http\Controllers\CheckoutController::class, 'create'])
    ->name('checkout-create')
    ->middleware('auth', 'verified');

Route::get('/checkout/remove/{detail_id}', [App\Http\Controllers\CheckoutController::class, 'remove'])
    ->name('checkout-remove')
    ->middleware('auth', 'verified');

Route::get('/checkout/{id}', [App\Http\Controllers\CheckoutController::class, 'index'])
    ->name('checkout')
    ->middleware('auth', 'verified');

Route::get('/checkout/confirm/{id}', [App\Http\Controllers\CheckoutController::class, 'success'])
    ->name('checkout-success')
    ->middleware('auth', 'verified');

Route::prefix('admin')
    ->middleware(['auth', 'admin'])
    ->group(function(){
        Route::get('/', [App\Http\Controllers\Admin\DashboardController::class, 'index'])
        ->name('dashboard');

        Route::resource('travel-package', 'App\Http\Controllers\Admin\TravelPackageController');
        Route::resource('gallery', 'App\Http\Controllers\Admin\GalleryController');
        Route::resource('transaction', 'App\Http\Controllers\Admin\TransactionController');
    });


Auth::routes(['verify' => true]);


