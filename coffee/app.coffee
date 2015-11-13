angular.module('starter', ['ionic'])
.run ($ionicPlatform)->
  $ionicPlatform.ready ->
    console.log 'App Started'
    if window.cordova && window.cordova.plugins.Keyboard
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true)
    if window.StatusBar
      StatusBar.styleDefault()
.config ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise('/')
  $stateProvider
    .state('index',
      url: '/'
      templateUrl: 'templates/index.html'
    )
    .state('/twelve',
      url: '/twelve'
      templateUrl: 'templates/twelve.html'
    )
