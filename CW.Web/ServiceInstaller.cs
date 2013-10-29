using Castle.MicroKernel.Registration;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CW.Web
{
    using CW.InterFace;
    using CW.Service;

    public class ServiceInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {

            container.Register(
                Component.For<IMenu>().ImplementedBy<menmenuvice>().LifeStyle.Transient,
                Component.For<IRole>().ImplementedBy<roleservice>().LifeStyle.Transient,
                Component.For<IOrder>().ImplementedBy<OrderService>().LifeStyle.Transient,
                Component.For<IUser>().ImplementedBy<userservice>().LifeStyle.Transient,
                Component.For<ICustomer>().ImplementedBy<CustomerService>().LifeStyle.Transient,
                Component.For<IKpType>().ImplementedBy<KpTypeService>().LifeStyle.Transient,
                Component.For<IPushMoneySetting>().ImplementedBy<PushMoneySettingService>().LifeStyle.Transient,
                Component.For<IKp>().ImplementedBy<KpService>().LifeStyle.Transient,
                Component.For<IJxTarget>().ImplementedBy<jxtargetService>().LifeStyle.Transient,
                Component.For<IBusinessMoneyRequest>().ImplementedBy<BusinessMoneyRequestService>().LifeStyle.Transient,
                Component.For<IBusinessMoneyRequestDetail>().ImplementedBy<BusinessMoneyRequestDetailService>().LifeStyle.Transient,
                Component.For<IBusinessPayRequest>().ImplementedBy<BusinessPayRequestService>().LifeStyle.Transient,
                Component.For<IBudget>().ImplementedBy<BudgetService>().LifeStyle.Transient,
                Component.For<IBudgetDetail>().ImplementedBy<BudgetDetailService>().LifeStyle.Transient,
                Component.For<IPaymentRequest>().ImplementedBy<PaymentRequestService>().LifeStyle.Transient,
                Component.For<IPaymentRequestDetail>().ImplementedBy<PaymentRequestDetailService>().LifeStyle.Transient,
                Component.For<IReceiveMoney>().ImplementedBy<ReceiveMoneyService>().LifeStyle.Transient,
                Component.For<ICommonPayment>().ImplementedBy<CommonPaymentService>().LifeStyle.Transient,
                Component.For<ICommonPaymentDetail>().ImplementedBy<CommonPaymentDetailService>().LifeStyle.Transient,
                Component.For<IUserJx>().ImplementedBy<UserJxService>().LifeStyle.Transient,
                Component.For<ITargetAward>().ImplementedBy<TargetAwardService>().LifeStyle.Transient,
                Component.For<IOrderTzRequest>().ImplementedBy<OrderTzRequestService>().LifeStyle.Transient,
                Component.For<ISystemReport>().ImplementedBy<SystemReportService>().LifeStyle.Transient,
                Component.For<IYYReport>().ImplementedBy<YYReportService>().LifeStyle.Transient,
                Component.For<IMoneyReport>().ImplementedBy<MoneyReportService>().LifeStyle.Transient,
                 Component.For<ILog>().ImplementedBy<LogService>().LifeStyle.Transient
                );

        }
    }
}