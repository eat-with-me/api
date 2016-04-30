angular.module 'EatingApp'
  .controller 'GroupsCtrl', ($http, $scope, $state)->
    $http.get("/groups").success (data)->
    	console.log(data)
    	$scope.groups = data

    $scope.addGroup = ->

    	swal
    		title: "Wprowadź nazwę grupy"
    		type: "input"
    		showCancelButton: true
    		closeOnConfirm: false
    		confirmButtonColor: "#00FF33"
    		inputPlaceholder: "Write something"
    		(inputValue) ->
    			if (inputValue == false)
    				return false
    			if (inputValue =="")
    				swal.showInputError("Musisz coś wpisać!")
    				return false
    			console.log(inputValue)
    			data1 = {name : inputValue}
    			$http.post("/groups", data1).success (data2, status) ->
            $scope.groupid = data2.id
            $scope.groups.push(data2)
            swal
              title: "Dodałeś grupę"
              type: "success"
              confirmButtonColor: "#00FF33"
              ->
                $state.go("groups",{groupid:$scope.groupid})
              