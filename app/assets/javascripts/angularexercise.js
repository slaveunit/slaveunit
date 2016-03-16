var app = angular.module('shop', []);

// So ANGULAR will work despite turbolinks
$(document).on('ready page:load', function() {
		angular.bootstrap(document.body, ['shop'])
});
// So ANGULAR will work despite turbolinks

app.controller('OrdersCtrl', ['$scope', function($scope){
	$scope.orders =[
		{id: 1, total: 24, product_id: 1, user_id: 1},
		{id: 2, total: 7, product_id: 1},
		{id: 3, total: 42, product_id: 1, user_id: 1},		
	];
	$scope.addOrder = function(){
		if(!$scope.newOrder.product_id || $scope.newOrder.total ===''){ return; }
		$scope.orders.push(@scope.newOrder);
	};
	$scope.deleteOrder = function(order){
		$scope.orders.splice($scope.orders.indexOf(order), 1);
	};
}]);





