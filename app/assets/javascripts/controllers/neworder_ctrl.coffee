angular.module 'EatingApp'
 .controller 'NewOrderCtrl', ($http, $scope)->

    $http.get("/restaurants").success (data)->
        console.log(data)
        $scope.restaurants = data

    
        $scope.addTodo = (war) ->
            $scope.arr = war
            $scope.col = $scope.restaurants[$scope.arr].meals
            #console.log("ty kurwa gnoju")
            #console.log($scope.restaurants[0].meals[0].name)
            #console.log($scope.col)
        
            #for i in [0...$scope.restaurants[0].meals.length]
            #    $scope.arr[i] = $scope.restaurants[0].meals[i].name
            #console.log($scope.arr)