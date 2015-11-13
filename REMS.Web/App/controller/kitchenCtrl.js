
(function () {
    'use strict';
    var controllerId = 'KitchenController';
    angular.module('app').controller(controllerId,
        ['$scope', '$http', '$q', 'LanguageService', ContentController]);
    function ContentController($scope, $http, $q, LanguageService) {
        // Using 'Controller As' syntax, so we assign this to the pos variable .
        var lid = LanguageService.GetLanguageShort();
        $scope.LanguageShort = lid;
        var serverBaseUrl = "http://abcd.com";
        // Bindable properties and functions are placed on pos.
        // Tables View.
        $scope.HubOrdersInit = HubOrdersInit;

        function HubOrdersInit() {
            alert('h9i')
            // GetCitySetting();
            $('#loading').hide();

        }

    }
})();