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
    public class TopmanagerController : BaseController
    {
        //
        // GET: /Topmanager/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ordercheck()
        {
            return View();
        }


        public JsonResult TopManagerOrderSearch(int? page)
        {
            try
            {
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                PaginationInfo paging = new PaginationInfo();

                IList<Order> orders = orderds.GetTopMangerCheck(null, null, false, null, null, null, 1, page.HasValue ? page.Value : 1, null, out  paging);


                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = orders
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

        public ActionResult xmzccheck()
        {
            return View();
        }

        public JsonResult GetPaymentRequests(int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IPaymentRequest>();
                PaginationInfo paging = new PaginationInfo();

                IList<PaymentRequest> payments = ds.Get(null, null, null, null, true, false, null, 1, page.HasValue ? page.Value : 1, null, out  paging);


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

        [HttpPost]
        public JsonResult CheckedPaymentRequest(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var ds = DataServiceContainer.Self.GetService<IPaymentRequest>();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        PaymentRequest model = ds.Get(new Guid(id));
                        model.istopmanagerusercheck = true;
                        ds.Update(model);
                    }
                }

                WriteLog(UserName + "审核通过项目支出请求，编号为:" + ids.ToString(), "info");   

                CWResponse res = new CWResponse { Msg = "审核成功", Result = true };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "审核失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult rczccheck()
        {
            return View();
        }

        public JsonResult GetCommonPayment(int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<ICommonPayment>();
                PaginationInfo paging = new PaginationInfo();

                IList<CommonPayment> payments = ds.Get(true, false, null, null, 1, page.HasValue ? page.Value : 1, null, out  paging);


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

        [HttpPost]
        public JsonResult CheckedCommonPayment(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var ds = DataServiceContainer.Self.GetService<ICommonPayment>();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        CommonPayment model = ds.Get(new Guid(id));
                        model.istopmanagercheck = true;
                        ds.Update(model);
                    }
                }

                WriteLog(UserName + "审核通过日常支出请求，编号为:" + ids.ToString(), "info");
                CWResponse res = new CWResponse { Msg = "审核成功", Result = true };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "审核失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult kpcheck()
        {
            return View();
        }

        public JsonResult GetTopMangerKps(int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IKp>();
                PaginationInfo paging = new PaginationInfo();
                IList<Kp> kps = ds.GetTopManagerKps(null, null, null, null, null, null, false, 1, page.HasValue ? page.Value : 1, null, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = kps
                };

                return Json(jsonobject, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }

   

        [HttpPost]
        public JsonResult UnChecked(string id, string reason, string msg)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IKp>();
                Kp kp = ds.Get(new Guid(id));
                kp.topmanageridea = msg;
                kp.topmanagerreason = reason;
                bool isupdate = ds.Update(kp);
                if (isupdate)
                {
                    WriteLog(UserName + "审核不通过日常支出请求，编号为:" + id.ToString(), "info");
                    return Json(new CWResponse { Msg = "提交成功", Result = true }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new CWResponse { Msg = "提交失败", Result = false }, JsonRequestBehavior.AllowGet);
                }
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "提交失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }




    }
}
