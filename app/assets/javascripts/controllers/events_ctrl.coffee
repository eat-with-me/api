angular.module 'EatingApp'
	.controller 'EventCtrl', ($scope)->

		$scope.eventJoin = ->
			swal
				title: "Dołączyłeś do spotkania"
				type: "success"
				confirmButtonColor: "#62cb31"