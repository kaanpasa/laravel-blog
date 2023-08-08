<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Backend Routes
|--------------------------------------------------------------------------
*/

Route::get('admin/panel', 'App\Http\Controllers\Back\Dashboard@index')->name('admin.dashboard');
Route::get('admin/giris', 'App\Http\Controllers\Back\AuthController@login')->name('admin.login');
Route::post('admin/giris', 'App\Http\Controllers\Back\AuthController@loginPost')->name('admin.login.post');
Route::get('admin/cikis', 'App\Http\Controllers\Back\AuthController@logout')->name('admin.logout');


/*
|--------------------------------------------------------------------------
| Frontend Routes
|--------------------------------------------------------------------------
*/

Route::get('/', 'App\Http\Controllers\Front\Homepage@index')->name('homepage');
Route::get('/kategori/{category}', 'App\Http\Controllers\Front\Homepage@category')->name('category');
Route::get('/iletisim', 'App\Http\Controllers\Front\Homepage@contact')->name('contact');
Route::post('/iletisim', 'App\Http\Controllers\Front\Homepage@contactpost')->name('contact.post');
Route::get('/{category}/{slug}', 'App\Http\Controllers\Front\Homepage@single')->name('single');
Route::get('/{slug}', 'App\Http\Controllers\Front\Homepage@page')->name('page');