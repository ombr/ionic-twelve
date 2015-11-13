angular.module('starter', ['ionic'])
.run ($ionicPlatform)->
  $ionicPlatform.ready ->
    console.log 'App Started'
    if window.cordova && window.cordova.plugins.Keyboard
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true)
    if window.StatusBar
      StatusBar.styleDefault()
