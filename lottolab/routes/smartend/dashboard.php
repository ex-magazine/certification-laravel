<?php

use App\Http\Controllers\Dashboard\DashboardController;
use App\Http\Controllers\Dashboard\UsersController;
use App\Http\Controllers\Dashboard\WebmasterSettingsController;
use App\Http\Controllers\Dashboard\WebmasterBannersController;
use App\Http\Controllers\Dashboard\WebmasterSectionsController;
use App\Http\Controllers\Dashboard\SettingsController;
use App\Http\Controllers\Dashboard\BannersController;
use App\Http\Controllers\Dashboard\CategoriesController;
use App\Http\Controllers\Dashboard\TopicsController;
use App\Http\Controllers\Dashboard\ContactsController;
use App\Http\Controllers\Dashboard\WebmailsController;
use App\Http\Controllers\Dashboard\EventsController;
use App\Http\Controllers\Dashboard\AnalyticsController;
use App\Http\Controllers\Dashboard\MenusController;
use Illuminate\Support\Facades\Route;


// No Permission
Route::get('/smartend/403', function () {
    return view('errors.403');
})->name('NoPermission');

// Not Found
Route::get('/smartend/404', function () {
    return view('errors.404');
})->name('NotFound');

// Admin Home
Route::get('/smartend/admin/', [DashboardController::class, 'index'])->name('adminHome');
//Search
Route::get('/smartend/admin/search', [DashboardController::class, 'search'])->name('adminSearch');
Route::post('/smartend/admin/find', [DashboardController::class, 'find'])->name('adminFind');

// Webmaster
Route::get('/smartend/admin/webmaster', [WebmasterSettingsController::class, 'edit'])->name('webmasterSettings');
Route::post('/smartend/admin/webmaster', [WebmasterSettingsController::class, 'update'])->name('webmasterSettingsUpdate');
Route::post('/smartend/admin/webmaster/languages/store', [WebmasterSettingsController::class, 'language_store'])->name('webmasterLanguageStore');
Route::post('/smartend/admin/webmaster/languages/store', [WebmasterSettingsController::class, 'language_store'])->name('webmasterLanguageStore');
Route::post('/smartend/admin/webmaster/languages/update', [WebmasterSettingsController::class, 'language_update'])->name('webmasterLanguageUpdate');
Route::get('/smartend/admin/webmaster/languages/destroy/{id}', [WebmasterSettingsController::class, 'language_destroy'])->name('webmasterLanguageDestroy');
Route::get('/smartend/admin/webmaster/seo/repair', [WebmasterSettingsController::class, 'seo_repair'])->name('webmasterSEORepair');

Route::post('/smartend/admin/webmaster/mail/smtp', [WebmasterSettingsController::class, 'mail_smtp_check'])->name('mailSMTPCheck');
Route::post('/smartend/admin/webmaster/mail/test', [WebmasterSettingsController::class, 'mail_test'])->name('mailTest');

// Webmaster Banners
Route::get('/smartend/admin/webmaster/banners', [WebmasterBannersController::class, 'index'])->name('WebmasterBanners');
Route::get('/smartend/admin/webmaster/banners/create', [WebmasterBannersController::class, 'create'])->name('WebmasterBannersCreate');
Route::post('/smartend/admin/webmaster/banners/store', [WebmasterBannersController::class, 'store'])->name('WebmasterBannersStore');
Route::get('/smartend/admin/webmaster/banners/{id}/edit', [WebmasterBannersController::class, 'edit'])->name('WebmasterBannersEdit');
Route::post('/smartend/admin/webmaster/banners/{id}/update', [WebmasterBannersController::class, 'update'])->name('WebmasterBannersUpdate');
Route::get('/smartend/admin/webmaster/banners/destroy/{id}',
    [WebmasterBannersController::class, 'destroy'])->name('WebmasterBannersDestroy');
Route::post('/smartend/admin/webmaster/banners/updateAll',
    [WebmasterBannersController::class, 'updateAll'])->name('WebmasterBannersUpdateAll');

// Webmaster Sections
Route::get('/smartend/admin/webmaster/sections', [WebmasterSectionsController::class, 'index'])->name('WebmasterSections');
Route::get('/smartend/admin/webmaster/sections/create', [WebmasterSectionsController::class, 'create'])->name('WebmasterSectionsCreate');
Route::post('/smartend/admin/webmaster/sections/store', [WebmasterSectionsController::class, 'store'])->name('WebmasterSectionsStore');
Route::get('/smartend/admin/webmaster/sections/{id}/edit', [WebmasterSectionsController::class, 'edit'])->name('WebmasterSectionsEdit');
Route::post('/smartend/admin/webmaster/sections/{id}/update',
    [WebmasterSectionsController::class, 'update'])->name('WebmasterSectionsUpdate');

Route::post('/smartend/admin/webmaster/sections/{id}/seo', [WebmasterSectionsController::class, 'seo'])->name('WebmasterSectionsSEOUpdate');

Route::get('/smartend/admin/webmaster/sections/destroy/{id}',
    [WebmasterSectionsController::class, 'destroy'])->name('WebmasterSectionsDestroy');
Route::post('/smartend/admin/webmaster/sections/updateAll',
    [WebmasterSectionsController::class, 'updateAll'])->name('WebmasterSectionsUpdateAll');

// Webmaster Sections :Custom Fields
Route::get('/smartend/admin/webmaster/{webmasterId}/fields', [WebmasterSectionsController::class, 'webmasterFields'])->name('webmasterFields');
Route::get('/smartend/admin/{webmasterId}/fields/create', [WebmasterSectionsController::class, 'fieldsCreate'])->name('webmasterFieldsCreate');
Route::post('/smartend/admin/webmaster/{webmasterId}/fields/store', [WebmasterSectionsController::class, 'fieldsStore'])->name('webmasterFieldsStore');
Route::get('/smartend/admin/webmaster/{webmasterId}/fields/{field_id}/edit', [WebmasterSectionsController::class, 'fieldsEdit'])->name('webmasterFieldsEdit');
Route::post('/smartend/admin/webmaster/{webmasterId}/fields/{field_id}/update', [WebmasterSectionsController::class, 'fieldsUpdate'])->name('webmasterFieldsUpdate');
Route::get('/smartend/admin/webmaster/{webmasterId}/fields/destroy/{field_id}', [WebmasterSectionsController::class, 'fieldsDestroy'])->name('webmasterFieldsDestroy');
Route::post('/smartend/admin/webmaster/{webmasterId}/fields/updateAll', [WebmasterSectionsController::class, 'fieldsUpdateAll'])->name('webmasterFieldsUpdateAll');

// Settings
Route::get('/smartend/admin/settings', [SettingsController::class, 'edit'])->name('settings');
Route::post('/smartend/admin/settings', [SettingsController::class, 'updateSiteInfo'])->name('settingsUpdateSiteInfo');

// Ad. Banners
Route::get('/smartend/admin/banners', [BannersController::class, 'index'])->name('Banners');
Route::get('/smartend/admin/banners/create/{sectionId}', [BannersController::class, 'create'])->name('BannersCreate');
Route::post('/smartend/admin/banners/store', [BannersController::class, 'store'])->name('BannersStore');
Route::get('/smartend/admin/banners/{id}/edit', [BannersController::class, 'edit'])->name('BannersEdit');
Route::post('/smartend/admin/banners/{id}/update', [BannersController::class, 'update'])->name('BannersUpdate');
Route::get('/smartend/admin/banners/destroy/{id}', [BannersController::class, 'destroy'])->name('BannersDestroy');
Route::post('/smartend/admin/banners/updateAll', [BannersController::class, 'updateAll'])->name('BannersUpdateAll');

// Sections
Route::get('/smartend/admin/{webmasterId}/categories', [CategoriesController::class, 'index'])->name('categories');
Route::get('/smartend/admin/{webmasterId}/categories/create', [CategoriesController::class, 'create'])->name('categoriesCreate');
Route::post('/smartend/admin/{webmasterId}/categories/store', [CategoriesController::class, 'store'])->name('categoriesStore');
Route::get('/smartend/admin/{webmasterId}/categories/{id}/edit', [CategoriesController::class, 'edit'])->name('categoriesEdit');
Route::post('/smartend/admin/{webmasterId}/categories/{id}/update', [CategoriesController::class, 'update'])->name('categoriesUpdate');
Route::post('/smartend/admin/{webmasterId}/categories/{id}/seo', [CategoriesController::class, 'seo'])->name('categoriesSEOUpdate');
Route::get('/smartend/admin/{webmasterId}/categories/destroy/{id?}', [CategoriesController::class, 'destroy'])->name('categoriesDestroy');
Route::post('/smartend/admin/{webmasterId}/categories/updateAll', [CategoriesController::class, 'updateAll'])->name('categoriesUpdateAll');

// Topics
Route::get('/smartend/admin/{webmasterId}/topics', [TopicsController::class, 'index'])->name('topics');
Route::post('/smartend/admin/topics-list', [TopicsController::class, 'list'])->name('topicsList');
Route::get('/smartend/admin/{webmasterId}/view/{id}', [TopicsController::class, 'view'])->name('topicView');
Route::get('/smartend/admin/{webmasterId}/topics/create', [TopicsController::class, 'create'])->name('topicsCreate');
Route::post('/smartend/admin/{webmasterId}/topics/store', [TopicsController::class, 'store'])->name('topicsStore');
Route::get('/smartend/admin/{webmasterId}/topics/{id}/edit', [TopicsController::class, 'edit'])->name('topicsEdit');
Route::post('/smartend/admin/{webmasterId}/topics/{id}/update', [TopicsController::class, 'update'])->name('topicsUpdate');
Route::get('/smartend/admin/{webmasterId}/topics/destroy/{id?}', [TopicsController::class, 'destroy'])->name('topicsDestroy');
Route::post('/smartend/admin/{webmasterId}/topics/updateAll', [TopicsController::class, 'updateAll'])->name('topicsUpdateAll');
// Topics :SEO
Route::post('/smartend/admin/{webmasterId}/topics/{id}/seo', [TopicsController::class, 'seo'])->name('topicsSEOUpdate');
// Topics :Photos
Route::post('/smartend/admin/topics/upload', [TopicsController::class, 'upload'])->name('topicsPhotosUpload');
Route::post('/smartend/admin/{webmasterId}/topics/{id}/photos', [TopicsController::class, 'photos'])->name('topicsPhotosEdit');
Route::get('/smartend/admin/{webmasterId}/topics/{id}/photos/{photo_id}/destroy',
    [TopicsController::class, 'photosDestroy'])->name('topicsPhotosDestroy');
Route::post('/smartend/admin/{webmasterId}/topics/{id}/photos/updateAll',
    [TopicsController::class, 'photosUpdateAll'])->name('topicsPhotosUpdateAll');

// Topics :Files
Route::get('/smartend/admin/{webmasterId}/topics/{id}/files', [TopicsController::class, 'topicsFiles'])->name('topicsFiles');
Route::get('/smartend/admin/{webmasterId}/topics/{id}/files/create',
    [TopicsController::class, 'filesCreate'])->name('topicsFilesCreate');
Route::post('/smartend/admin/{webmasterId}/topics/{id}/files/store',
    [TopicsController::class, 'filesStore'])->name('topicsFilesStore');
Route::get('/smartend/admin/{webmasterId}/topics/{id}/files/{file_id}/edit',
    [TopicsController::class, 'filesEdit'])->name('topicsFilesEdit');
Route::post('/smartend/admin/{webmasterId}/topics/{id}/files/{file_id}/update',
    [TopicsController::class, 'filesUpdate'])->name('topicsFilesUpdate');
Route::get('/smartend/admin/{webmasterId}/topics/{id}/files/destroy/{file_id}',
    [TopicsController::class, 'filesDestroy'])->name('topicsFilesDestroy');
Route::post('/smartend/admin/{webmasterId}/topics/{id}/files/updateAll',
    [TopicsController::class, 'filesUpdateAll'])->name('topicsFilesUpdateAll');


// Topics :Related
Route::get('/smartend/admin/{webmasterId}/topics/{id}/related', [TopicsController::class, 'topicsRelated'])->name('topicsRelated');
Route::get('/smartend/admin/relatedLoad/{id}', [TopicsController::class, 'topicsRelatedLoad'])->name('topicsRelatedLoad');
Route::get('/smartend/admin/{webmasterId}/topics/{id}/related/create',
    [TopicsController::class, 'relatedCreate'])->name('topicsRelatedCreate');
Route::post('/smartend/admin/smartend/admin/{webmasterId}/topics/{id}/related/store',
    [TopicsController::class, 'relatedStore'])->name('topicsRelatedStore');
Route::get('/smartend/admin/{webmasterId}/topics/{id}/related/destroy/{related_id}',
    [TopicsController::class, 'relatedDestroy'])->name('topicsRelatedDestroy');
Route::post('/smartend/admin/{webmasterId}/topics/{id}/related/updateAll',
    [TopicsController::class, 'relatedUpdateAll'])->name('topicsRelatedUpdateAll');
// Topics :Comments
Route::get('/smartend/admin/{webmasterId}/topics/{id}/comments', [TopicsController::class, 'topicsComments'])->name('topicsComments');
Route::get('/smartend/admin/{webmasterId}/topics/{id}/comments/create',
    [TopicsController::class, 'commentsCreate'])->name('topicsCommentsCreate');
Route::post('/smartend/admin/{webmasterId}/topics/{id}/comments/store',
    [TopicsController::class, 'commentsStore'])->name('topicsCommentsStore');
Route::get('/smartend/admin/{webmasterId}/topics/{id}/comments/{comment_id}/edit',
    [TopicsController::class, 'commentsEdit'])->name('topicsCommentsEdit');
Route::post('/smartend/admin/{webmasterId}/topics/{id}/comments/{comment_id}/update',
    [TopicsController::class, 'commentsUpdate'])->name('topicsCommentsUpdate');
Route::get('/smartend/admin/{webmasterId}/topics/{id}/comments/destroy/{comment_id}',
    [TopicsController::class, 'commentsDestroy'])->name('topicsCommentsDestroy');
Route::post('/smartend/admin/{webmasterId}/topics/{id}/comments/updateAll',
    [TopicsController::class, 'commentsUpdateAll'])->name('topicsCommentsUpdateAll');
// Topics :Maps
Route::get('/smartend/admin/{webmasterId}/topics/{id}/maps', [TopicsController::class, 'topicsMaps'])->name('topicsMaps');
Route::get('/smartend/admin/{webmasterId}/topics/{id}/maps/create', [TopicsController::class, 'mapsCreate'])->name('topicsMapsCreate');
Route::post('/smartend/admin/{webmasterId}/topics/{id}/maps/store', [TopicsController::class, 'mapsStore'])->name('topicsMapsStore');
Route::get('/smartend/admin/{webmasterId}/topics/{id}/maps/{map_id}/edit', [TopicsController::class, 'mapsEdit'])->name('topicsMapsEdit');
Route::post('/smartend/admin/{webmasterId}/topics/{id}/maps/{map_id}/update',
    [TopicsController::class, 'mapsUpdate'])->name('topicsMapsUpdate');
Route::get('/smartend/admin/{webmasterId}/topics/{id}/maps/destroy/{map_id}',
    [TopicsController::class, 'mapsDestroy'])->name('topicsMapsDestroy');
Route::post('/smartend/admin/{webmasterId}/topics/{id}/maps/updateAll',
    [TopicsController::class, 'mapsUpdateAll'])->name('topicsMapsUpdateAll');

// Contacts Groups
Route::post('/smartend/admin/contacts/storeGroup', [ContactsController::class, 'storeGroup'])->name('contactsStoreGroup');
Route::get('/smartend/admin/contacts/{id}/editGroup', [ContactsController::class, 'editGroup'])->name('contactsEditGroup');
Route::post('/smartend/admin/contacts/{id}/updateGroup', [ContactsController::class, 'updateGroup'])->name('contactsUpdateGroup');
Route::get('/smartend/admin/contacts/destroyGroup/{id}', [ContactsController::class, 'destroyGroup'])->name('contactsDestroyGroup');
// Contacts
Route::get('/smartend/admin/contacts/{group_id?}', [ContactsController::class, 'index'])->name('contacts');
Route::post('/smartend/admin/contacts/store', [ContactsController::class, 'store'])->name('contactsStore');
Route::post('/smartend/admin/contacts/search', [ContactsController::class, 'search'])->name('contactsSearch');
Route::get('/smartend/admin/contacts/{id}/edit', [ContactsController::class, 'edit'])->name('contactsEdit');
Route::post('/smartend/admin/contacts/{id}/update', [ContactsController::class, 'update'])->name('contactsUpdate');
Route::get('/smartend/admin/contacts/destroy/{id}', [ContactsController::class, 'destroy'])->name('contactsDestroy');
Route::post('/smartend/admin/contacts/updateAll', [ContactsController::class, 'updateAll'])->name('contactsUpdateAll');

// WebMails Groups
Route::post('/smartend/admin/webmails/storeGroup', [WebmailsController::class, 'storeGroup'])->name('webmailsStoreGroup');
Route::get('/smartend/admin/webmails/{id}/editGroup', [WebmailsController::class, 'editGroup'])->name('webmailsEditGroup');
Route::post('/smartend/admin/webmails/{id}/updateGroup', [WebmailsController::class, 'updateGroup'])->name('webmailsUpdateGroup');
Route::get('/smartend/admin/webmails/destroyGroup/{id}', [WebmailsController::class, 'destroyGroup'])->name('webmailsDestroyGroup');
// WebMails
Route::post('/smartend/admin/webmails/store', [WebmailsController::class, 'store'])->name('webmailsStore');
Route::post('/smartend/admin/webmails/search', [WebmailsController::class, 'search'])->name('webmailsSearch');
Route::get('/smartend/admin/webmails/{id}/edit', [WebmailsController::class, 'edit'])->name('webmailsEdit');
Route::get('/smartend/admin/webmails/{group_id?}/{wid?}/{stat?}/{contact_email?}', [WebmailsController::class, 'index'])->name('webmails');
Route::post('/smartend/admin/webmails/{id}/update', [WebmailsController::class, 'update'])->name('webmailsUpdate');
Route::get('/smartend/admin/webmails/destroy/{id}', [WebmailsController::class, 'destroy'])->name('webmailsDestroy');
Route::post('/smartend/admin/webmails/updateAll', [WebmailsController::class, 'updateAll'])->name('webmailsUpdateAll');

// Calendar
Route::get('/smartend/admin/calendar', [EventsController::class, 'index'])->name('calendar');
Route::get('/smartend/admin/calendar/create', [EventsController::class, 'create'])->name('calendarCreate');
Route::post('/smartend/admin/calendar/store', [EventsController::class, 'store'])->name('calendarStore');
Route::get('/smartend/admin/calendar/{id}/edit', [EventsController::class, 'edit'])->name('calendarEdit');
Route::post('/smartend/admin/calendar/{id}/update', [EventsController::class, 'update'])->name('calendarUpdate');
Route::get('/smartend/admin/calendar/destroy/{id}', [EventsController::class, 'destroy'])->name('calendarDestroy');
Route::get('/smartend/admin/calendar/updateAll', [EventsController::class, 'updateAll'])->name('calendarUpdateAll');
Route::post('/smartend/admin/calendar/{id}/extend', [EventsController::class, 'extend'])->name('calendarExtend');

// Analytics
Route::get('/smartend/admin/ip/{ip_code?}', [AnalyticsController::class, 'ip'])->name('visitorsIP');
Route::post('/smartend/admin/ip/search', [AnalyticsController::class, 'search'])->name('visitorsSearch');
Route::post('/smartend/admin/analytics/{stat}', [AnalyticsController::class, 'filter'])->name('analyticsFilter');
Route::get('/smartend/admin/analytics/{stat?}', [AnalyticsController::class, 'index'])->name('analytics');
Route::get('/smartend/admin/visitors', [AnalyticsController::class, 'visitors'])->name('visitors');

// Users & Permissions
Route::get('/smartend/admin/users', [UsersController::class, 'index'])->name('users');
Route::get('/smartend/admin/users/create/', [UsersController::class, 'create'])->name('usersCreate');
Route::post('/smartend/admin/users/store', [UsersController::class, 'store'])->name('usersStore');
Route::get('/smartend/admin/users/{id}/edit', [UsersController::class, 'edit'])->name('usersEdit');
Route::post('/smartend/admin/users/{id}/update', [UsersController::class, 'update'])->name('usersUpdate');
Route::get('/smartend/admin/users/destroy/{id}', [UsersController::class, 'destroy'])->name('usersDestroy');
Route::post('/smartend/admin/users/updateAll', [UsersController::class, 'updateAll'])->name('usersUpdateAll');

Route::get('/smartend/admin/users/permissions/create/', [UsersController::class, 'permissions_create'])->name('permissionsCreate');
Route::post('/smartend/admin/users/permissions/store', [UsersController::class, 'permissions_store'])->name('permissionsStore');
Route::get('/smartend/admin/users/permissions/{id}/edit', [UsersController::class, 'permissions_edit'])->name('permissionsEdit');
Route::post('/smartend/admin/users/permissions/{id}/update', [UsersController::class, 'permissions_update'])->name('permissionsUpdate');
Route::post('/smartend/admin/users/permissions/{id}/save', [UsersController::class, 'update_custom_home'])->name('permissionsHomePageUpdate');
Route::get('/smartend/admin/users/permissions/destroy/{id}', [UsersController::class, 'permissions_destroy'])->name('permissionsDestroy');

Route::post('/smartend/admin/permissions-links/store', [UsersController::class, 'links_store'])->name('customLinksStore');
Route::post('/smartend/admin/permissions-links/update', [UsersController::class, 'links_update'])->name('customLinksUpdate');
Route::get('/smartend/admin/permissions-links/edit/{id?}/{p_id?}', [UsersController::class, 'links_edit'])->name('customLinksEdit');
Route::get('/smartend/admin/permissions-links/destroy/{id?}/{p_id?}', [UsersController::class, 'links_destroy'])->name('customLinksDestroy');
Route::get('/smartend/admin/permissions-links/list/{p_id?}', [UsersController::class, 'links_list'])->name('customLinksList');


// Menus
Route::post('/smartend/admin/menus/store/parent', [MenusController::class, 'storeMenu'])->name('parentMenusStore');
Route::get('/smartend/admin/menus/parent/{id}/edit', [MenusController::class, 'editMenu'])->name('parentMenusEdit');
Route::post('/smartend/admin/menus/{id}/update/{ParentMenuId}', [MenusController::class, 'updateMenu'])->name('parentMenusUpdate');
Route::get('/smartend/admin/menus/parent/destroy/{id}', [MenusController::class, 'destroyMenu'])->name('parentMenusDestroy');

Route::get('/smartend/admin/menus/{ParentMenuId?}', [MenusController::class, 'index'])->name('menus');
Route::get('/smartend/admin/menus/create/{ParentMenuId?}', [MenusController::class, 'create'])->name('menusCreate');
Route::post('/smartend/admin/menus/store/{ParentMenuId?}', [MenusController::class, 'store'])->name('menusStore');
Route::get('/smartend/admin/menus/{id}/edit/{ParentMenuId?}', [MenusController::class, 'edit'])->name('menusEdit');
Route::post('/smartend/admin/menus/{id}/update', [MenusController::class, 'update'])->name('menusUpdate');
Route::get('/smartend/admin/menus/destroy/{id}', [MenusController::class, 'destroy'])->name('menusDestroy');
Route::post('/smartend/admin/menus/updateAll', [MenusController::class, 'updateAll'])->name('menusUpdateAll');


// Clear Cache
Route::get('/smartend/admin/cache-clear', function () {
    Artisan::call('cache:clear');
    Artisan::call('view:clear');
    return redirect()->back()->with('doneMessage', __('backend.cashClearDone'));
})->name('cacheClear');
