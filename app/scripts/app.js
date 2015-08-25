'use strict';

/**
 * @ngdoc overview
 * @name linuxUbuntuDevStackInstallerApp
 * @description
 * # linuxUbuntuDevStackInstallerApp
 *
 * Main module of the application.
 */
angular
  .module('linuxUbuntuDevStackInstallerApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl',
        controllerAs: 'main'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl',
        controllerAs: 'about'
      })
      .when('/packets', {
        templateUrl: 'views/packets.html',
        controller: 'PacketsCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
