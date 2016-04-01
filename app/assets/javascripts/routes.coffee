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
        templateUrl: 'groups.html'
        controller: 'GroupsCtrl'
      })
      .state('orders',{
      	url: '/orders/:groupid',
      	templateUrl: 'orders.html'
      	controller: 'OrdersCtrl'
      	})
      .state('neworder',{
        url: '/orders/:groupid/new',
        templateUrl: 'neworder.html'
        controller: 'NewOrderCtrl'
        })
        

      