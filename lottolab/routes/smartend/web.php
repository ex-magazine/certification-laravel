<?php

use App\Http\Controllers\Auth\SocialAuthController;
use App\Http\Controllers\Smartend\HomeController;
use App\Http\Controllers\Smartend\LanguageController;
use App\Http\Controllers\Smartend\SiteMapController;
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

// Language Route
Route::post('/smartend/lang', [LanguageController::class, 'index'])->middleware('LanguageSwitcher')->name('lang');
// For Language direct URL link
Route::get('/smartend/lang/{lang}', [LanguageController::class, 'change'])->middleware('LanguageSwitcher')->name('langChange');
Route::get('/smartend/locale/{lang}', [LanguageController::class, 'locale'])->middleware('LanguageSwitcher')->name('localeChange');
// .. End of Language Route

// Backend Routes
Route::get('/smartend/login', function () {
    return redirect('/');
});
Route::get('/smartend/register', function () {
    return redirect('/');
});

// Social Auth
Route::get('/smartend/oauth/{driver}', [SocialAuthController::class, 'redirectToProvider'])->name('social.oauth');
Route::get('/smartend/oauth/{driver}/callback', [SocialAuthController::class, 'handleProviderCallback'])->name('social.callback');

Route::Group(['prefix' => env('BACKEND_PATH')], function () {
    Auth::routes();
});
Route::get('/smartend/logout', function () {
    Auth::logout();
    return redirect('/');
})->name('logout');

// Start of Frontend Routes
// ../site map
Route::get('/smartend/sitemap.xml', [SiteMapController::class, 'siteMap'])->name('siteMap');
Route::get('/smartend/{lang}/sitemap', [SiteMapController::class, 'siteMap'])->name('siteMapByLang');


Route::get('/smartend/', [HomeController::class, 'HomePage'])->name('SmartendHome');
// ../home url
Route::get('/smartend/home', [HomeController::class, 'HomePage'])->name('SmartendHomePage');

Route::get('/smartend/{lang?}/home', [HomeController::class, 'HomePageByLang'])->name('HomePageByLang');
// ../subscribe to newsletter submit  (ajax url)
Route::post('/smartend/subscribe', [HomeController::class, 'subscribeSubmit'])->name('subscribeSubmit');
// ../Comment submit  (ajax url)
Route::post('/smartend/comment', [HomeController::class, 'commentSubmit'])->name('commentSubmit');
// ../Order submit  (ajax url)
Route::post('/smartend/order', [HomeController::class, 'orderSubmit'])->name('orderSubmit');
// ..Custom URL for contact us page ( www.site.com/contact )
Route::get('/smartend/contact', [HomeController::class, 'ContactPage'])->name('contactPage');
Route::get('/smartend/{lang?}/contact', [HomeController::class, 'ContactPageByLang'])->name('contactPageByLang');
// ../contact message submit  (ajax url)
Route::post('/smartend/contact/submit', [HomeController::class, 'ContactPageSubmit'])->name('contactPageSubmit');
// ..if page by name ( ex: www.site.com/about )
Route::get('/smartend/topic/{id}', [HomeController::class, 'topic'])->name('FrontendPage');
// ..if page by user id ( ex: www.site.com/user )
Route::get('/smartend/user/{id}', [HomeController::class, 'userTopics'])->name('FrontendUserTopics');
Route::get('/smartend/{lang?}/user/{id}', [HomeController::class, 'userTopicsByLang'])->name('FrontendUserTopicsByLang');
// ../search
Route::post('/smartend/search', [HomeController::class, 'searchTopics'])->name('searchTopics');

// ..Topics url  ( ex: www.site.com/news/topic/32 )
Route::get('/smartend/{section}/topic/{id}', [HomeController::class, 'topic'])->name('FrontendTopic');
Route::get('/smartend/{lang?}/{section}/topic/{id}', [HomeController::class, 'topicByLang'])->name('FrontendTopicByLang');


// ..Sub category url for Section  ( ex: www.site.com/products/2 )
Route::get('/smartend/{section}/{cat}', [HomeController::class, 'topics'])->name('FrontendTopicsByCat');
Route::get('/smartend/{lang?}/{section}/{cat}', [HomeController::class, 'topicsByLang'])->name('FrontendTopicsByCatWithLang');


// ..Section url by name  ( ex: www.site.com/news )
Route::get('/smartend/{section}', [HomeController::class, 'topics'])->name('FrontendTopics');
Route::get('/smartend/{lang?}/{section}', [HomeController::class, 'topicsByLang'])->name('FrontendTopicsByLang');


// ..SEO url  ( ex: www.site.com/title-here )
Route::get('/smartend/{seo_url_slug}', [HomeController::class, 'SEO'])->name('FrontendSEO');
Route::get('/smartend/{lang?}/{seo_url_slug}', [HomeController::class, 'SEOByLang'])->name('FrontendSEOByLang');

// ..if page by name and language( ex: www.site.com/ar/about )
Route::get('/smartend/{lang?}/topic/{id}', [HomeController::class, 'topicByLang'])->name('FrontendPageByLang');
// .. End of Frontend Route

