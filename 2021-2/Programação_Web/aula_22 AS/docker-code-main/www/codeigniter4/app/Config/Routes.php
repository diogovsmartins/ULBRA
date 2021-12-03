<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Site');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Site::index');
$routes->get('/home', 'Site::view/home');
$routes->get('/about', 'Site::view/about');
$routes->get('/products', 'Site::view/products');
$routes->get('/contact', 'Site::view/contact');

$routes->get('/client', 'Client::ListClients');
$routes->get('/client/(:num)', 'Client::detailClient/$1');


///Área admnistrativa

$routes->get('/admin', 'Admin\Admin::index');
$routes->get('/admin/login', 'Admin\Admin::login');
$routes->get('/admin/logout', 'Admin\Admin::logout');

$routes->add('/admin/validate-login', 'Admin\User::validateLogin');
$routes->add('/admin/client', 'Admin\Client::listClients');
$routes->add('/admin/client/insert', 'Admin\Client::insertClient');
$routes->add('admin/client/insert-action', 'Admin\Client::insertClientAction');
$routes->add('admin/client/update/(:num)', 'Admin\Client::updateClient/$1');
$routes->add('admin/client/update-action/(:num)', 'Admin\Client::updateClientAction/$1');

$routes->add('admin/client/delete/(:num)', 'Admin\Client::deleteClient/$1');

$routes->add('Admin/client/searchClient','Admin\Client::searchClient');

////Rotas da API
$routes->get('/api/clients', 'Client::listClientsApi');

/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
