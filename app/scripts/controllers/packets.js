'use strict';

/**
 * @ngdoc function
 * @name linuxUbuntuDevStackInstallerApp.controller:PacketsCtrl
 * @description
 * # PacketsCtrl
 * Controller of the linuxUbuntuDevStackInstallerApp
 */
angular.module('linuxUbuntuDevStackInstallerApp')
  .controller('PacketsCtrl', ['$scope' , '$http' , function ($scope, $http) {
  	$http.get('./scripts/statics.json').then(function(json){
  		$scope.packets = json.data;	
  	});

  	$scope.nodeChecked = [];

  	$scope.mark = function(childscope){
  		if ($scope.nodeChecked.indexOf(childscope.value) < 0){
  			$scope.nodeChecked.push(childscope.value);	
  		}else{
  			$scope.nodeChecked.splice($scope.nodeChecked.indexOf(childscope.value),1);
  		} 
  	};

  	$scope.checkout = function(){
  		var str = "npm install -g " + $scope.nodeChecked.join().replace("," ," ");
  		return str;
  	};

  }]);
