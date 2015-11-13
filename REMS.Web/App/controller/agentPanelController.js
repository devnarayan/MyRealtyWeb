(function () {
    'use strict';
    var controllerId = 'agentPanelController';
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
        $scope.MyFreeTrailInit = MyFreeTrailInit;
        $scope.MyTemplateInit = MyTemplateInit;
        $scope.MyPaymentInit = MyPaymentInit;
        $scope.MySubscriptionInit = MySubscriptionInit;

        $scope.ViewFreeTrailClick = ViewFreeTrailClick;
        $scope.ViewPaymentClick = ViewPaymentClick;
        $scope.ViewSubscriptionClick = ViewSubscriptionClick;
        $scope.ViewAgentTemplateClick = ViewAgentTemplateClick;

        function MyFreeTrailInit() {
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
        function MyTemplateInit() {
            $("#loading").show();

            $http({
                method: 'Get',
                url: '/Agent/AgentPanel/GetAgentTemplates',
                params: { userName: $("#hidUserName").val() }
            }).success(function (data) {
                $scope.TemplateList = data;
                $("#loading").hide();
            })
        }
        function MyPaymentInit() {
            $("#loading").show();

            $http({
                method: 'Get',
                url: '/Agent/AgentPanel/GetAgentPayment',
                params: { userName: $("#hidUserName").val() }
            }).success(function (data) {
                $scope.PaymentList = data;
                $("#loading").hide();
            })
        }
        function MySubscriptionInit() {
            $("#loading").show();

            $http({
                method: 'Get',
                url: '/Agent/AgentPanel/GetAgentSubscription',
                params: { userName: $("#hidUserName").val() }
            }).success(function (data) {
                $scope.SubscriptionList = data;
                $("#loading").hide();
            })
        }

        function ViewFreeTrailClick(obj) {
            $scope.FreeTrail = obj;
        }
        function ViewPaymentClick(obj) {
            $scope.Payment = obj;
        }
        function ViewSubscriptionClick(obj) {
            $scope.Subscription = obj;
        }
        function ViewAgentTemplateClick(obj) {
            $scope.Template = obj;
        }
        //Email, Print and Export 
        $scope.ReportSendMail = function () {
            var vli = ValidateBackupReceiptEmail();
            if (vli == false) {
                $('#myModal').modal('show');
            }
            else {
                $('#loading').show();
                $scope.ReportContent = $("#rptTableContent").html();
                $http({
                    method: 'Post',
                    url: '/BI/Report/MailReport',
                    data: { ReportContent: $scope.ReportContent, emailid: $("#reportmail").val() }
                }).success(function (data) {
                    alert("Report mailed successfully!")
                    $('#loading').hide();
                })
            }
        }
        $scope.ReportExport = function () {
            $('#loading').show();
            $scope.ReportContent = $("#rptTableContent").html();
            $http({
                method: 'Post',
                url: '/BI/Report/ExportReport',
                data: { ReportContent: $scope.ReportContent }
            }).success(function (data) {
                alert(data);
                $('#loading').hide();
                window.open(data, "_blank");

            })
        }

        $scope.ReportPrint = function () {
            localStorage.setItem("ReportContent", $("#rptTableContent").html());
            //alert($("#rptTableContent").html());
            window.open("/BI/Report/PrintReport", "_blank");
        }

        $scope.PrintReportInint = function () {

            $("#PrintReportdata").html(localStorage.getItem("ReportContent"))
            window.print();
        }
        function ValidateBackupReceiptEmail() {
            var vl = true;
            var message = "";

            if ($("#reportmail").val() == "") {
                vl = false;
                message += "Please insert Email ID.<br/>";
            }
            if ($("#reportmail").val() != "") {
                var emailReg = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
                var valid = emailReg.test($("#reportmail").val());

                if (!valid) {
                    vl = false;
                    message += "Invalid Email ID.<br/>";
                }
            }
            $("#ErrorMessage").html(message);
            return vl;
        }
    };
})();