angular.module('starter',
  [
    'ionic',
    'ionic.service.core',
    'ionic.service.analytics'
  ]
)
.run ($ionicPlatform, $ionicAnalytics)->
  $ionicPlatform.ready ->
    $ionicAnalytics.register()
    console.log 'App Started'
    if window.cordova && window.cordova.plugins.Keyboard
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true)
    if window.StatusBar
      StatusBar.styleDefault()
.run ($ionicAnalytics)->
  $ionicAnalytics.track('App Started', {})
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
