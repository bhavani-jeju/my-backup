mymodule.config(["$routeProvider",function($routeProvider){
				$routeProvider.
				when("/register",{
					templateUrl:"register.html",
					controller:"registerController"
				}).
				when("/login",{
					templateUrl:"login.html",
					controller:"loginController"
				}).
				otherwise({redirectTo:"/defaultview"});				
}]);						
var controllers={};
controllers.registerController=function($scope){
	$scope.type="Angular JS Registration Form";
	$scope.validate=function(){
		$scope.message="You have Successfully Registered";
	}
};
controllers.loginController=function($scope){
	$scope.type="Angular JS Login Form";
	$scope.validate=function(){
		$scope.message="Login Successful";
	}				
};			
mymodule.controller(controllers);