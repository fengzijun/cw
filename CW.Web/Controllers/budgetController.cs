using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CW.InterFace;
using CW.Core;
using CW.Model;
using CW.Web.Models;

namespace CW.Web.Controllers
{
    public class budgetController : BaseController
    {
        //
        // GET: /budget/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Input()
        {
            return View();
        }

        /// <summary>
        /// 预算输入
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult InputPost(BudgetViewModel data)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IBudget>();
                var detailds = DataServiceContainer.Self.GetService<IBudgetDetail>();
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                Order order = orderds.GetByOrderno(data.budget.orderno);
                if (order == null)
                {
                    return Json(new CWResponse { Msg = "找不到订单号", Result = false }, JsonRequestBehavior.AllowGet);
                }

                decimal money = 0;
                if (data.budgetdetails != null)
                {
                    foreach (BudgetDetail detail in data.budgetdetails)
                    {
                        money += detail.totalprice.HasValue ? detail.totalprice.Value : 0;
                    }
                }

                order.ml = order.money.Value - order.balance.Value - money;
                order.lr = order.ml.Value >= order.money.Value ? "0%" : (order.ml.Value / order.money.Value).ToString("P");
                data.budget.ID = Guid.NewGuid();
                data.budget.Statues = 1;
                Guid id = ds.Create(data.budget);
                CWResponse res = null;
                if (id == data.budget.ID)
                {
                    if (data.budgetdetails != null)
                    {
                        foreach (BudgetDetail detail in data.budgetdetails)
                        {
                            detail.ID = Guid.NewGuid();
                            detail.budgetid = id;
                            detail.Statues = 1;
                            detailds.Create(detail);
                        }
                    }
                    orderds.Update(order);
                    if (!string.IsNullOrEmpty(order.parentorderno))
                    {
                        Order parentorder = orderds.GetByOrderno(order.parentorderno);
                        if (parentorder != null)
                        {
                            parentorder.ml += order.ml;
                            parentorder.lr = parentorder.ml.Value >= parentorder.money.Value ? "0%" : (parentorder.ml.Value / parentorder.money.Value).ToString("P");

                            orderds.Update(parentorder);
                        }
                    }
                    WriteLog(UserName + "预算输入:" + money.ToString() + ",订单的毛利修改为" + order.ml.ToString() + ",利润修改为+" + order.lr, "info");
                    res = new CWResponse { Msg = "创建成功", Result = true };
                }
                else
                {
                    res = new CWResponse { Msg = "创建失败", Result = false };
                }

                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "创建失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult xmzc_ask()
        {
            return View();
        }

        [HttpPost]
        public JsonResult xmzc_askpost(PaymentrequestViewmodel data)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IPaymentRequest>();
                var detailds = DataServiceContainer.Self.GetService<IPaymentRequestDetail>();
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                Order order = orderds.GetByOrderno(data.paymentrequest.orderno);
                if (order == null)
                {
                    return Json(new CWResponse { Msg = "找不到订单号", Result = false }, JsonRequestBehavior.AllowGet);
                }


                data.paymentrequest.ID = Guid.NewGuid();
                data.paymentrequest.Statues = 1;
                data.paymentrequest.iscwcheck = false;
                data.paymentrequest.ismanagerusercheck = false;
                data.paymentrequest.istopmanagerusercheck = false;
                data.paymentrequest.isjz = false;
                data.paymentrequest.orderuser = string.IsNullOrEmpty(data.paymentrequest.orderuser) ? UserName : data.paymentrequest.orderuser;
                Guid id = ds.Create(data.paymentrequest);
                CWResponse res = null;
                if (id == data.paymentrequest.ID)
                {
                    if (data.paymentrequestdetail != null)
                    {
                        foreach (PaymentRequestDetail detail in data.paymentrequestdetail)
                        {
                            detail.ID = Guid.NewGuid();
                            detail.paymentid = id;
                            detail.Statues = 1;
                            detailds.Create(detail);
                        }
                    }

                    order.actualmoney += (data.paymentrequest.money.HasValue ? data.paymentrequest.money.Value : 0);
                    orderds.Update(order);
                    if (!string.IsNullOrEmpty(order.parentorderno))
                    {
                        Order parentorder = orderds.GetByOrderno(order.parentorderno);
                        if (parentorder != null)
                        {
                            parentorder.actualmoney += order.actualmoney.Value;


                            orderds.Update(parentorder);
                        }
                    }

                    WriteLog(UserName + "项目支出:" + data.paymentrequest.money.Value.ToString() + ",订单的实际费用修改为" + order.actualmoney.ToString(), "info");

                    res = new CWResponse { Msg = "创建成功", Result = true };
                }
                else
                {
                    res = new CWResponse { Msg = "创建失败", Result = false };
                }

                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "创建失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}
