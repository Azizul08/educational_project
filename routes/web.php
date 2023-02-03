<?php

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
    return view('index');
});

Route::get('/contact','DashboardController@contact');
Route::get('/blog-archive','DashboardController@BlogArchive');
Route::get('/blog-single','DashboardController@BlogSingle');
Route::get('/course-archive','DashboardController@CourseArchive');
Route::get('/course-detail','DashboardController@CourseDetail');
Route::get('/gallery','DashboardController@Gallery');

Route::get('/student-add','DashboardController@StudentAdd');
Route::post('/student-add','DashboardController@postStudentAdd');

Route::get('/student-view','DashboardController@StudentView');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
