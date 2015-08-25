'use strict';

describe('Controller: PacketsCtrl', function () {

  // load the controller's module
  beforeEach(module('linuxUbuntuDevStackInstallerApp'));

  var PacketsCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    PacketsCtrl = $controller('PacketsCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(typeof scope.nodeChecked).toBe('object');
  });

  it('should add an string to nodeChecked array', function(done) {
    scope.mark({value : 'name'});
    expect(scope.nodeChecked.length).toBe(1);
    done();
  });

  it('should return a string matches the npm install pattern', function(done) {
    scope.mark({value : 'test'});
    expect(scope.checkout()).toBe("npm install -g test");
    done();
  });
});
