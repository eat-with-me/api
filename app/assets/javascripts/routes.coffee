angular.module 'EatingApp'
  .config ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise('home')

    $stateProvider
      .state('home', {
        url: '/home',
        templateUrl: 'home.html',
        controller: 'HomeCtrl'
      })
      .state('events', {
        url: '/events',
        templateUrl: 'events.html',
        controller: 'EventCtrl'
      })
      .state('newevent', {
        url: '/newevent',
        templateUrl: 'newevent.html',
        controller: 'NewEventCtrl'
      })
      .state('groups', {
        url: '/groups',
        templateUrl: 'groups.html',
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
      .state('meals',{
        url: '/groups/:groupid/orders/:orderid',
        templateUrl: 'meals.html'
        controller: 'MealsCtrl'
        })

