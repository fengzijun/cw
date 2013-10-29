using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CW.Model;

namespace CW.Web.Models
{
    public class OrdrViewModel
    {
        public Order order { get; set; }
        public PushMoneySetting pushmoneysetting { get; set; }
    }

    public class BuesinessRequestViewModel
    {
        public BusinessMoneyRequest businessrequst { get; set; }
        public IList<BusinessMoneyRequestDetail> businessrequestdetails { get; set; }
    }

    public class BudgetViewModel
    {
        public Budget budget { get; set; }
        public IList<BudgetDetail> budgetdetails { get; set; }
    }

    public class PaymentrequestViewmodel
    {

        public PaymentRequest paymentrequest { get; set; }
        public IList<PaymentRequestDetail> paymentrequestdetail { get; set; }
    }

    public class CommonPaymentViewmodel
    {
        public CommonPayment commonpayment { get; set; }
        public IList<CommonPaymentDetail> commonpaymentdetails { get; set; }
    }
}