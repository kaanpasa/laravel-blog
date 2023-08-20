<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Backend Routes
|--------------------------------------------------------------------------
*/
Route::prefix('admin')->name('admin.')->middleware('isLogin')->group(function(){
    Route::get('giris', 'App\Http\Controllers\Back\AuthController@login')->name('login');
    Route::post('giris', 'App\Http\Controllers\Back\AuthController@loginPost')->name('login.post');
});

Route::prefix('admin')->name('admin.')->middleware('isAdmin')->group(function(){
    Route::get('panel', 'App\Http\Controllers\Back\Dashboard@index')->name('dashboard');
    //MAKALE ROUTES
    Route::get('/makaleler/silinenler','App\Http\Controllers\Back\ArticleController@trashed')->name('trashed.article');
    Route::resource('makaleler','App\Http\Controllers\Back\ArticleController');
    Route::get('/status','App\Http\Controllers\Back\ArticleController@status')->name('status');
    Route::get('/makalesil/{id}','App\Http\Controllers\Back\ArticleController@delete')->name('delete.article');
    Route::get('/makalekesinsil/{id}','App\Http\Controllers\Back\ArticleController@hardDelete')->name('hard.delete.article');
    Route::get('/makalekurtar/{id}','App\Http\Controllers\Back\ArticleController@recover')->name('recover.article');
    //CATEGORY ROUTES
    Route::get('/kategoriler','App\Http\Controllers\Back\CategoryController@index')->name("category.index");
    Route::get('/kategori/status','App\Http\Controllers\Back\CategoryController@status')->name("category.status");
    Route::post('/kategori/olustur','App\Http\Controllers\Back\CategoryController@create')->name("category.create");
    Route::get('cikis', 'App\Http\Controllers\Back\AuthController@logout')->name('logout');    
});


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