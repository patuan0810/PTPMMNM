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
//Frontend
Route::get('/','HomeController@index');

Route::get('/trang-chu','HomeController@index');

//San pham
Route::get('/san-pham','ProductController@show_product');

//Danh muc san pham trang chu
Route::get('/thuong-hieu-san-pham/{category_id}','CategoryController@show_category_');

Route::get('/chi-tiet-san-pham/{product_id}','ProductController@details_product');