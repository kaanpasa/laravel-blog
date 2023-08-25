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
    //ARTICLE ROUTES
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
    Route::post('/kategori/guncelle','App\Http\Controllers\Back\CategoryController@update')->name("category.update");
    Route::get('/kategori/sil','App\Http\Controllers\Back\CategoryController@delete')->name("category.delete");
    Route::get('/kategori/getData','App\Http\Controllers\Back\CategoryController@getData')->name("category.getdata");
    //Page ROUTES
    Route::get('sayfalar','App\Http\Controllers\Back\PageController@index')->name('page.index');
    Route::get('sayfalar/status','App\Http\Controllers\Back\PageController@status')->name('page.status');
    Route::get('sayfalar/sil','App\Http\Controllers\Back\PageController@delete')->name('page.delete');
    Route::get('sayfalar/olustur','App\Http\Controllers\Back\PageController@create')->name('page.create');
    Route::post('sayfalar/olustur','App\Http\Controllers\Back\PageController@post')->name('page.post');
    Route::get('sayfalar/guncelle/{id}','App\Http\Controllers\Back\PageController@update')->name('page.update');
    Route::post('sayfalar/guncelle/{id}','App\Http\Controllers\Back\PageController@updatePost')->name('page.update.post');
    //LOGOUT ROUTE
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