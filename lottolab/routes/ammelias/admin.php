<?php

Route::group(['middleware' => ['auth','admin', 'lang'], 'namespace' => 'Admin'], function() {
    Route::get('/ammelias/', 'AdminController@adminDashboard')->name('adminDashboard');
    Route::get('/ammelias/search', 'AdminController@qsSearch')->name('qsSearch');
    Route::get('/ammelias/contact-list', 'AdminController@contactList')->name('contactList');
    Route::get('/ammelias/contact-{id}', 'AdminController@contactDetails')->name('contactDetails');
    Route::get('/ammelias/subscriber-list', 'AdminController@subscriberList')->name('subscriberList');

    //profile setting
    Route::get('/ammelias/profile','ProfileController@userProfile')->name('userProfile');
    Route::get('/ammelias/password-change','ProfileController@passwordChange')->name('passwordChange');
    Route::post('/ammelias/update-profile','ProfileController@updateProfile')->name('updateProfile');
    Route::post('/ammelias/change-password','ProfileController@changePassword')->name('changePassword');

    // Setting
    Route::get('/ammelias/general-setting', 'SettingController@adminSettings')->name('adminSettings');
    Route::get('/ammelias/website-settings', 'SettingController@webSettings')->name('webSettings');
    Route::get('/ammelias/about-us', 'SettingController@aboutSettings')->name('aboutSettings');
    Route::post('/ammelias/about-us-setting-save', 'SettingController@adminAboutSettingsSave')->name('adminAboutSettingsSave');
    Route::post('/ammelias/save-setting', 'SettingController@saveSettings')->name('saveSettings');
    Route::post('/ammelias/save-image-setting', 'SettingController@adminImageUploadSave')->name('adminImageUploadSave');
    Route::post('/ammelias/save-web-setting', 'SettingController@saveWebSettings')->name('saveWebSettings');
    Route::post('/ammelias/save-achievement-setting', 'SettingController@saveAchievementSettings')->name('saveAchievementSettings');

    //User Management
    Route::get('/ammelias/user-list', 'UserController@userList')->name('userList');
    Route::get('/ammelias/add-user', 'UserController@addUser')->name('addUser');
    Route::get('/ammelias/user-details/{id}', 'UserController@userDetails')->name('userDetails');
    Route::get('/ammelias/user-edit/{id}', 'UserController@editUser')->name('editUser');
    Route::get('/ammelias/user-delete/{id}', 'UserController@userDelete')->name('userDelete');
    Route::get('/ammelias/user-active/{id}', 'UserController@userActivate')->name('userActivate');
    Route::get('/ammelias/verify-user-email/{id}', 'UserController@userEmailVerify')->name('userEmailVerify');
    Route::post('/ammelias/user-add-process', 'UserController@userAddProcess')->name('userAddProcess');
    Route::post('/ammelias/user-update-process', 'UserController@userUpdateProcess')->name('userUpdateProcess');

    //Team Category
    Route::get('/ammelias/team-category-list', 'TeamController@teamCategoryList')->name('teamCategoryList');
    Route::get('/ammelias/team-category-create', 'TeamController@teamCategoryCreate')->name('teamCategoryCreate');
    Route::post('/ammelias/team-category-save', 'TeamController@teamCategorySave')->name('teamCategorySave');
    Route::get('/ammelias/team-category-edit/{id}', 'TeamController@teamCategoryEdit')->name('teamCategoryEdit');
    Route::get('/ammelias/team-category-delete/{id}', 'TeamController@teamCategoryDelete')->name('teamCategoryDelete');

    //Team
    Route::get('/ammelias/team-list', 'TeamController@teamList')->name('teamList');
    Route::get('/ammelias/team-create', 'TeamController@teamCreate')->name('teamCreate');
    Route::post('/ammelias/team-save', 'TeamController@teamSave')->name('teamSave');
    Route::get('/ammelias/team-edit/{id}', 'TeamController@teamEdit')->name('teamEdit');
    Route::get('/ammelias/team-delete/{id}', 'TeamController@teamDelete')->name('teamDelete');

    // Service
    Route::get('/ammelias/service-list', 'ServiceController@serviceList')->name('serviceList');
    Route::get('/ammelias/service-create', 'ServiceController@serviceCreate')->name('serviceCreate');
    Route::post('/ammelias/service-save', 'ServiceController@serviceSave')->name('serviceSave');
    Route::get('/ammelias/service-edit/{id}', 'ServiceController@serviceEdit')->name('serviceEdit');
    Route::get('/ammelias/service-delete/{id}', 'ServiceController@serviceDelete')->name('serviceDelete');

    // testimonial
    Route::get('/ammelias/testimonial-list', 'TestimonialController@testimonialList')->name('testimonialList');
    Route::get('/ammelias/testimonial-create', 'TestimonialController@testimonialCreate')->name('testimonialCreate');
    Route::post('/ammelias/testimonial-save', 'TestimonialController@testimonialSave')->name('testimonialSave');
    Route::get('/ammelias/testimonial-edit/{id}', 'TestimonialController@testimonialEdit')->name('testimonialEdit');
    Route::get('/ammelias/testimonial-delete/{id}', 'TestimonialController@testimonialDelete')->name('testimonialDelete');

    // Portfolio Category
    Route::get('/ammelias/portfolio-category-list', 'PortfolioController@portfolioCategoryList')->name('portfolioCategoryList');
    Route::get('/ammelias/portfolio-category-create', 'PortfolioController@portfolioCategoryCreate')->name('portfolioCategoryCreate');
    Route::post('/ammelias/portfolio-category-save', 'PortfolioController@portfolioCategorySave')->name('portfolioCategorySave');
    Route::get('/ammelias/portfolio-category-edit/{id}', 'PortfolioController@portfolioCategoryEdit')->name('portfolioCategoryEdit');
    Route::get('/ammelias/portfolio-category-delete/{id}', 'PortfolioController@portfolioCategoryDelete')->name('portfolioCategoryDelete');

    // Portfolio
    Route::get('/ammelias/portfolio-list', 'PortfolioController@portfolioList')->name('portfolioList');
    Route::get('/ammelias/portfolio-create', 'PortfolioController@portfolioCreate')->name('portfolioCreate');
    Route::post('/ammelias/portfolio-save', 'PortfolioController@portfolioSave')->name('portfolioSave');
    Route::get('/ammelias/portfolio-edit/{id}', 'PortfolioController@portfolioEdit')->name('portfolioEdit');
    Route::get('/ammelias/portfolio-delete/{id}', 'PortfolioController@portfolioDelete')->name('portfolioDelete');
    Route::get('/ammelias/portfolio-img-delete', 'PortfolioController@deleteUploadedImage')->name('deleteUploadedImage');

    // Gallery Category
    Route::get('/ammelias/gallery-category-list', 'GalleryController@galleryCategoryList')->name('galleryCategoryList');
    Route::get('/ammelias/gallery-category-create', 'GalleryController@galleryCategoryCreate')->name('galleryCategoryCreate');
    Route::post('/ammelias/gallery-category-save', 'GalleryController@galleryCategorySave')->name('galleryCategorySave');
    Route::get('/ammelias/gallery-category-edit/{id}', 'GalleryController@galleryCategoryEdit')->name('galleryCategoryEdit');
    Route::get('/ammelias/gallery-category-delete/{id}', 'GalleryController@galleryCategoryDelete')->name('galleryCategoryDelete');

    // Gallery
    Route::get('/ammelias/gallery-list', 'GalleryController@galleryList')->name('galleryList');
    Route::get('/ammelias/gallery-create', 'GalleryController@galleryCreate')->name('galleryCreate');
    Route::post('/ammelias/gallery-save', 'GalleryController@gallerySave')->name('gallerySave');
    Route::get('/ammelias/gallery-edit/{id}', 'GalleryController@galleryEdit')->name('galleryEdit');
    Route::get('/ammelias/gallery-delete/{id}', 'GalleryController@galleryDelete')->name('galleryDelete');

    // Pricing plan
    Route::get('/ammelias/plan-list', 'PlanController@planList')->name('planList');
    Route::get('/ammelias/plan-create', 'PlanController@planCreate')->name('planCreate');
    Route::post('/ammelias/plan-save', 'PlanController@planSave')->name('planSave');
    Route::get('/ammelias/plan-edit/{id}', 'PlanController@planEdit')->name('planEdit');
    Route::get('/ammelias/plan-delete/{id}', 'PlanController@planDelete')->name('planDelete');

    // blog Category
    Route::get('/ammelias/blog-category-list', 'BlogController@blogCategoryList')->name('blogCategoryList');
    Route::get('/ammelias/blog-category-create', 'BlogController@blogCategoryCreate')->name('blogCategoryCreate');
    Route::post('/ammelias/blog-category-save', 'BlogController@blogCategorySave')->name('blogCategorySave');
    Route::get('/ammelias/blog-category-edit/{id}', 'BlogController@blogCategoryEdit')->name('blogCategoryEdit');
    Route::get('/ammelias/blog-category-delete/{id}', 'BlogController@blogCategoryDelete')->name('blogCategoryDelete');

    // blog
    Route::get('/ammelias/blog-list', 'BlogController@blogList')->name('blogList');
    Route::get('/ammelias/blog-create', 'BlogController@blogCreate')->name('blogCreate');
    Route::post('/ammelias/blog-save', 'BlogController@blogSave')->name('blogSave');
    Route::get('/ammelias/blog-edit/{id}', 'BlogController@blogEdit')->name('blogEdit');
    Route::get('/ammelias/blog-delete/{id}', 'BlogController@blogDelete')->name('blogDelete');

    Route::get('/ammelias/comment-list/{id}', 'BlogController@commentList')->name('commentList');
    Route::get('/ammelias/comment-details/{id}', 'BlogController@commentDetails')->name('commentDetails');
    Route::get('/ammelias/comment-approve', 'BlogController@commentApprove')->name('commentApprove');

    // menu
    Route::get('/ammelias/menu-list', 'MenuController@menuList')->name('menuList');
    Route::get('/ammelias/menu-create', 'MenuController@menuCreate')->name('menuCreate');
    Route::post('/ammelias/menu-save', 'MenuController@menuSave')->name('menuSave');
    Route::get('/ammelias/menu-edit/{id}', 'MenuController@menuEdit')->name('menuEdit');
    Route::get('/ammelias/menu-delete/{id}', 'MenuController@menuDelete')->name('menuDelete');
    Route::get('/ammelias/change-menu-order', 'MenuController@customMenuOrder')->name('customMenuOrder');
});