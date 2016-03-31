angular.module 'EatingApp'
  .controller 'GroupsCtrl', ($http, $scope)->

    $http.get("/groups").success (data)->
    	console.log(data)
    	$scope.groups = data
    	
