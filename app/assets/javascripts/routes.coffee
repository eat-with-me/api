angular.module 'EatingApp'
  .config ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise('home')

    $stateProvider
      .state('home', {
        url: '/home',
        controller: 'HomeCtrl'
        templateUrl: 'home.html'
      })
      .state('groups', {
        url: '/groups',
        templateUrl: 'grupy.html'
        controller: 'GroupsCtrl'
      })
      .state('orders',{
      	url: '/orders/:groupid',
      	templateUrl: 'orders.html'
      	controller: 'OrdersCtrl'
      	})

      