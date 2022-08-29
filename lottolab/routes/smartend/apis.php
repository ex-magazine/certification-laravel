<?php

Route::get('/smartend/', 'APIsController@api')->name('apiURL');
// general
Route::get('/smartend/website/status', 'APIsController@website_status');
Route::get('/smartend/website/info/{lang?}', 'APIsController@website_info');
Route::get('/smartend/website/contacts/{lang?}', 'APIsController@website_contacts');
Route::get('/smartend/website/style/{lang?}', 'APIsController@website_style');
Route::get('/smartend/website/social', 'APIsController@website_social');
Route::get('/smartend/website/settings', 'APIsController@website_settings');
Route::get('/smartend/menu/{menu_id}/{lang?}', 'APIsController@menu');
Route::get('/smartend/banners/{group_id}/{lang?}', 'APIsController@banners');
// section & topics
Route::get('/smartend/section/{section_id}/{lang?}', 'APIsController@section');
Route::get('/smartend/categories/{section_id}/{lang?}', 'APIsController@categories');
Route::get('/smartend/topics/{section_id}/page/{page_number?}/count/{topics_count?}/{lang?}', 'APIsController@topics');
Route::get('/smartend/category/{cat_id}/page/{page_number?}/count/{topics_count?}/{lang?}', 'APIsController@category');
// topic sub details
Route::get('/smartend/topic/fields/{topic_id}/{lang?}', 'APIsController@topic_fields');
Route::get('/smartend/topic/photos/{topic_id}/{lang?}', 'APIsController@topic_photos');
Route::get('/smartend/topic/photo/{photo_id}/{lang?}', 'APIsController@topic_photo');
Route::get('/smartend/topic/maps/{topic_id}/{lang?}', 'APIsController@topic_maps');
Route::get('/smartend/topic/map/{map_id}/{lang?}', 'APIsController@topic_map');
Route::get('/smartend/topic/files/{topic_id}/{lang?}', 'APIsController@topic_files');
Route::get('/smartend/topic/file/{file_id}/{lang?}', 'APIsController@topic_file');
Route::get('/smartend/topic/comments/{topic_id}/{lang?}', 'APIsController@topic_comments');
Route::get('/smartend/topic/comment/{comment_id}/{lang?}', 'APIsController@topic_comment');
Route::get('/smartend/topic/related/{topic_id}/{lang?}', 'APIsController@topic_related');
// topic page
Route::get('/smartend/topic/{topic_id}/{lang?}', 'APIsController@topic');
// user topics
Route::get('/smartend/user/{user_id}/topics/page/{page_number?}/count/{topics_count?}/{lang?}', 'APIsController@user_topics');
// Forms Submit
Route::post('/smartend/subscribe', 'APIsController@subscribeSubmit');
Route::post('/smartend/comment', 'APIsController@commentSubmit');
Route::post('/smartend/order', 'APIsController@orderSubmit');
Route::post('/smartend/contact', 'APIsController@ContactPageSubmit');
