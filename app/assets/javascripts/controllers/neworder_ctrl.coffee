angular.module 'EatingApp'
 .controller 'NewOrderCtrl', ($http, $scope)->

    $http.get("/restaurants").success (data)->
      console.log(data)
      $scope.restaurants = data
      $scope.index = 0


    $scope.addTodo = (index) ->
      $scope.index = index
      $scope.selectedRestaurant = $scope.restaurants[$scope.index].id

        #kawalek pięknej pętli Norberta - kazał zostawić
        #for i in [0...$scope.restaurants[0].meals.length]
        #    $scope.arr[i] = $scope.restaurants[0].meals[i].name
