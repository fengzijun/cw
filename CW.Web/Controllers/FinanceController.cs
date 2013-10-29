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
    public class FinanceController : BaseController
    {
        //
        // GET: /Finance/
        /// <summary>
        /// 项目支出记账
        /// </summary>
        /// <returns></returns>
        public ActionResult Payment_jz()
        {
            return View();
        }


        public JsonResult GetPayments(int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IPaymentRequest>();
                PaginationInfo paging = new PaginationInfo();
                IList<PaymentRequest> payments = ds.Get(null, null, null, null, null, null, false, 1, page.HasValue ? page.Value : 1, null, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = payments
                };

                return Json(jsonobject, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult GetPaymentsDetail(string id, int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IPaymentRequestDetail>();
                PaginationInfo paging = new PaginationInfo();
                IList<PaymentRequestDetail> paydetails = ds.Get(new Guid(id), 1, page.HasValue ? page.Value : 1, null, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = paydetails
                };

                return Json(jsonobject, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult jz(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                string str = string.Empty;
                var ds = DataServiceContainer.Self.GetService<IPaymentRequest>();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        PaymentRequest payment = ds.Get(new Guid(id));
                        payment.isjz = true;
                        ds.Update(payment);
                        str += id + ",";
                    }
                }

                WriteLog(UserName + "项目支出编号:" + str + ",被" + UserName + "记账", "info");
                CWResponse res = new CWResponse { Msg = "记账成功", Result = true };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "创建失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult ddsz()
        {
            return View();
        }

        [HttpPost]
        public JsonResult ddszpost(ReceiveMoney data)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IReceiveMoney>();
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                data.ID = Guid.NewGuid();
                data.Statues = 1;

                Order order = orderds.GetByOrderno(data.orderno);
                if (order == null)
                {
                    return Json(new CWResponse { Msg = "找不到订单号", Result = false }, JsonRequestBehavior.AllowGet);
                }

                Guid id = ds.Create(data);
                CWResponse res = null;
                if (id == data.ID)
                {
                    order.shouldmoney = order.shouldmoney.Value - data.money.Value;
                    order.havemoney = order.havemoney.Value + data.money.Value;
                    order.havemoneypercentage = order.havemoney.Value >= order.shouldmoney.Value ? "100%" : (order.havemoney.Value / order.shouldmoney.Value).ToString("P");
                    orderds.Update(order);
                    if (!string.IsNullOrEmpty(order.parentorderno))
                    {
                        Order parentorder = orderds.GetByOrderno(order.parentorderno);
                        if (parentorder != null)
                        {
                            parentorder.shouldmoney += order.shouldmoney;
                            parentorder.havemoney += order.havemoney;
                            parentorder.havemoneypercentage = parentorder.havemoney.Value >= parentorder.shouldmoney.Value ? "100%" : (parentorder.havemoney.Value / parentorder.shouldmoney.Value).ToString("P");

                            orderds.Update(parentorder);
                        }

                    }
                    WriteLog("订单编号为:" + order.ID.ToString() + ",被" + UserName + "销帐" + data.money.Value.ToString(), "info");
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

        //日常支出模块
        public ActionResult rczc_input()
        {
            return View();
        }

        [HttpPost]
        public JsonResult rczc_inputpost(CommonPaymentViewmodel data)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<ICommonPayment>();
                var detailds = DataServiceContainer.Self.GetService<ICommonPaymentDetail>();

                data.commonpayment.ID = Guid.NewGuid();
                data.commonpayment.Statues = 1;
                data.commonpayment.orderuser = string.IsNullOrEmpty(data.commonpayment.orderuser) ? UserName : data.commonpayment.orderuser;
                decimal money = 0;
                if (data.commonpaymentdetails != null)
                {
                    foreach (CommonPaymentDetail detail in data.commonpaymentdetails)
                    {
                        money += (detail.money.HasValue ? detail.money.Value : 0);
                    }

                }
                data.commonpayment.money = money;

                data.commonpayment.isjz = false;
                data.commonpayment.ismanagercheck = false;
                data.commonpayment.istopmanagercheck = false;
                data.commonpayment.iscwcheck = false;


                Guid result = ds.Create(data.commonpayment);
                CWResponse res = null;
                if (result == data.commonpayment.ID)
                {
                    if (data.commonpaymentdetails != null)
                    {
                        foreach (CommonPaymentDetail detail in data.commonpaymentdetails)
                        {
                            detail.ID = Guid.NewGuid();
                            detail.commonpaymentid = result;
                            detail.Statues = 1;
                            detailds.Create(detail);
                        }
                    }
                    WriteLog(UserName + "创建日常费用:" + data.commonpayment.money.ToString(), "info");
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

        //业务绩效考核
        public ActionResult ywjxkh()
        {
            return View();
        }


        public JsonResult ywjxkhget(int? page)
        {
            try
            {
                var jxds = DataServiceContainer.Self.GetService<IUserJx>();
                PaginationInfo paging = new PaginationInfo();

                IList<UserJx> jxs = jxds.Get(null, null, null, 1, page.HasValue ? page.Value : 1, null, out  paging);


                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = jxs
                };

                return Json(jsonobject, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult ordersearch()
        {
            return View();
        }

        /// <summary>
        /// 营业报表
        /// </summary>
        /// <returns></returns>
        public ActionResult ReportSearch()
        {
            return View();
        }

        /// <summary>
        /// 月报表
        /// </summary>
        /// <returns></returns>
        public ActionResult yereportsearch()
        {
            return View();
        }

        /// <summary>
        /// 费用报报表
        /// </summary>
        /// <returns></returns>
        public ActionResult systemreportsearch()
        {
            return View();
        }

        /// <summary>
        /// 开票信息导入
        /// </summary>
        /// <returns></returns>
        public ActionResult kpinput()
        {
            return View();
        }


        public JsonResult GetCwKps(int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IKp>();
                PaginationInfo paging = new PaginationInfo();
                IList<Kp> kps = ds.GetManagerKps(null, null, null, null, null, null, true, 1, page.HasValue ? page.Value : 1, null, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = kps
                };

                return Json(jsonobject, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult GetCYYReport(int? page,string startime,string endtime)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IYYReport>();
                PaginationInfo paging = new PaginationInfo();
                IList<YYReport> kps = ds.Get(startime, endtime, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = kps
                };

                return Json(jsonobject, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult YYreportsearch(int? page, string time)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IMoneyReport>();
                PaginationInfo paging = new PaginationInfo();
                IList<MoneyReport> kps = ds.GetCompany(time, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = kps
                };

                return Json(jsonobject, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult YYreportusersearch(int? page, string time)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IMoneyReport>();
                PaginationInfo paging = new PaginationInfo();
                IList<MoneyReportUser> kps = ds.GetUser(time, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = kps
                };

                return Json(jsonobject, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult sysreportsearch(int? page, string time)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<ISystemReport>();
                PaginationInfo paging = new PaginationInfo();
                IList<SystemReport> kps = ds.Get(time, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = kps
                };

                return Json(jsonobject, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }
    }
}
