(function () {
    'use strict';
    var controllerId = 'agentPaymentController';
    angular.module('app', ['ui-notification']);
    angular.module('app').controller(controllerId,
        ['$scope', '$http', '$q', 'Notification', ContentController]);
    function ContentController($scope, $http, $q, Notification) {
        // Using 'Controller As' syntax, so we assign this to the pos variable .
        //var lid = LanguageService.GetLanguageShort();
        // $scope.LanguageShort = lid;
        $scope.en = true;
        var HubUrl = localStorage.getItem("HubUrl");
        // Bindable properties and functions are placed on pos.
        // Tables View.
        $scope.PaymentInit = PaymentInit;
        $scope.SavePayment = SavePayment;
        $scope.ClearPayment=ClearPayment;

        function PaymentInit() {
            $("#loading").show();
            
            $http({
                method: 'Get',
                url: '/Agent/AgentPanel/GetAgentFreeTrail',
                params: { userName: $("#hidUserName").val() }
            }).success(function (data) {
                $scope.FreeTrailList = data;
             $("#loading").hide();
            })
        }
        function SavePayment() {
            var $checkoutForm = $('#checkout-form').validate({
                // Rules for form validation
                rules: {
                    CardNo: {
                        required: true
                    },
                    //InstallmentNo: {
                    //    required: true,
                    //    digits: true
                    //},
                    Amount: {
                        required: true,
                    }
                },

                // Messages for form validation
                messages: {
                    CardNo: {
                        required: 'Please enter installment name'
                    },
                    //InstallmentNo: {
                    //    required: 'Please enter serial no of installment',
                    //    digits: 'Digits only please'
                    //},
                    Amount: {
                        required: 'Plase enter amount',
                    }
                },

                submitHandler: function (form) {
                    $(form).ajaxSubmit({
                        success: function () {
                            //  $scope.ads.ChargeType = $("#divChargeType input[type='radio']:checked").val();
                            $("#loading").show();
                            $http({
                                method: 'POST',
                                url: '/Agent/AgentPayment/SaveAmount',
                                data: JSON.stringify($scope.Pay),
                                headers: { 'Content-Type': 'application/JSON' }
                            }).success(function (data) {
                                if (status == "0") {
                                    $("#MessageArea").show();
                                    $scope.MessageTitle = "Error";
                                    $scope.MessageClass = "danger";
                                    $scope.Message = "Payment not submitted, Please try again.";
                                }
                                else {
                                    $("#MessageArea").show();
                                    $scope.MessageTitle = "Success";
                                    $scope.MessageClass = "success";
                                    $scope.Message = "Payment Submitted Successfully.";
                                }
                                $("#loading").hide();
                            });
                        }
                    });
                },

                // Do not change code below
                errorPlacement: function (error, element) {
                    error.insertAfter(element.parent());
                }
            });
        }
        function ClearPayment() {
            $scope.Pay = {};
        }
    };
})();