angular.module 'EatingApp'
  .config ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise('groups')

    $stateProvider
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
      .state('meals',{
        url: '/restaurants/:restaurantid',
        templateUrl: 'meals.html'
        controller: 'MealsCtrl'
        })
