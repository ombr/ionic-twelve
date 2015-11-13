angular.module('starter', ['ionic'])
.run ($ionicPlatform)->
  alert 'Coffee? '
  $ionicPlatform.ready ()->
    if window.cordova && window.cordova.plugins.Keyboard
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true)
    if window.StatusBar
      StatusBar.styleDefault()
