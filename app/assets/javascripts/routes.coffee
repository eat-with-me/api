angular.module 'EatingApp'
  .config ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise('home')

    $stateProvider
      .state('home', {
        url: '/home',
        controller: 'ChujCiwDupe',
        controller: 'HomeCtrl'
        templateUrl: 'home.html'
      })
      .state('groups', {
        url: '/groups',
        templateUrl: 'grupy.html'
      })