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
    public class ManagerController : BaseController
    {
        //
        // GET: /Manager/

        public ActionResult Custommanager()
        {
            return View();
        }

        
        public JsonResult GetCustomers(int? page)
        {
            try
            {
                var customerds = DataServiceContainer.Self.GetService<ICustomer>();
                PaginationInfo paging = new PaginationInfo();
                IList<Customer> customers = customerds.Get(null, null, null, null, null, null, null, null, 1, page.HasValue ? page.Value : 1, null, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = customers
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

        public JsonResult GetAllCustomers()
        {
            try
            {
                var customerds = DataServiceContainer.Self.GetService<ICustomer>();
                PaginationInfo paging = new PaginationInfo();
                IList<Customer> customers = customerds.Get(null, null, null, null, null, null, null, null, 1, 0, null, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = customers
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
        public JsonResult AddCustomer(Customer data)
        {
            try
            {
                var customerds = DataServiceContainer.Self.GetService<ICustomer>();
                data.ID = Guid.NewGuid();
                data.Statues = 1;
                bool result = customerds.Create(data);
                CWResponse res = new CWResponse { Msg = result ? "创建成功" : "创建失败", Result = result };
                WriteLog(UserName + "创建客户:" + data.name , "info");
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "创建失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult EditCustomer(Customer data)
        {
            try
            {
                var customerds = DataServiceContainer.Self.GetService<ICustomer>();
                PaginationInfo paging = new PaginationInfo();
                data.Statues = 1;
                bool result = customerds.Update(data);
                CWResponse res = new CWResponse { Msg = result ? "修改成功" : "修改失败", Result = result };
                WriteLog(UserName + "编辑客户:" + data.name, "info");
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "创建失败", Result = false }, JsonRequestBehavior.AllowGet);
            }

           
        }

        [HttpPost]
        public JsonResult DelCustomer(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var customerds = DataServiceContainer.Self.GetService<ICustomer>();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        customerds.Delete(new Customer { ID = Guid.Parse(id) });
                    }
                }
                WriteLog(UserName + "删除客户，编号为:" + ids, "info");

                CWResponse res = new CWResponse { Msg = "删除成功", Result = true };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "创建失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult ordersearch()
        {
            return View();
        }


        public ActionResult ordercheck()
        {
            return View();
        }

        public JsonResult ManagerOrderSearch(int? page)
        {
            try
            {
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                PaginationInfo paging = new PaginationInfo();

                IList<Order> orders = orderds.GetMangerCheck(null, null, false, null, null, null, 1, page.HasValue ? page.Value : 1, null, out  paging);


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

        [HttpPost]
        public JsonResult checkedorder(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        Order order = orderds.Get(new Guid(id));
                        order.managercheck = true;
                        orderds.Update(order);
                    }
                }
                WriteLog(UserName + "审核通过订单编号为:" + ids, "info");
                CWResponse res = new CWResponse { Msg = "审核成功", Result = true };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "创建失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        /// <summary>
        /// 项目支出申请
        /// </summary>
        /// <returns></returns>
        public ActionResult xmzccheck()
        {
            return View();
        }

        public JsonResult GetPaymentRequests(int? page)
        {
            var ds = DataServiceContainer.Self.GetService<IPaymentRequest>();
            PaginationInfo paging = new PaginationInfo();

            IList<PaymentRequest> payments = ds.Get(null, null, null, null, false, null, null, 1, page.HasValue ? page.Value : 1, null, out  paging);


            var jsonobject = new
            {
                page = paging.Current,
                total = paging.TotalRecords,

                rows = payments
            };

            return Json(jsonobject, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetPaymentRequestDetail(int? page, string paymentid)
        {
            var ds = DataServiceContainer.Self.GetService<IPaymentRequestDetail>();
            PaginationInfo paging = new PaginationInfo();

            IList<PaymentRequestDetail> payments = ds.Get(new Guid(paymentid), 1, page.HasValue ? page.Value : 1, null, out  paging);


            var jsonobject = new
            {
                page = paging.Current,
                total = paging.TotalRecords,

                rows = payments
            };

            return Json(jsonobject, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult CheckedPaymentRequest(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var ds = DataServiceContainer.Self.GetService<IPaymentRequest>();
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        PaymentRequest model = ds.Get(new Guid(id));
                        model.ismanagerusercheck = true;
                        ds.Update(model);
                        Order order = orderds.GetByOrderno(model.orderno);
                        if (order != null)
                        {
                            order.actualmoney += model.money.Value;
                            order.lrmoney = order.money.Value - order.actualmoney.Value;
                            order.lr = order.money.Value - order.actualmoney.Value > 0 ? ((order.money.Value - order.actualmoney.Value) / order.money.Value).ToString("P") : "0%";
                            orderds.Update(order);
                        }
                        if(!string.IsNullOrEmpty(order.parentorderno))
                        {
                            Order parentorder = orderds.GetByOrderno(order.parentorderno);
                            if (parentorder != null)
                            {
                                parentorder.actualmoney += order.actualmoney;
                                parentorder.lrmoney += order.lrmoney;
                                parentorder.lr = parentorder.money.Value - parentorder.actualmoney.Value > 0 ? ((parentorder.money.Value - parentorder.actualmoney.Value) / parentorder.money.Value).ToString("P") : "0%";
                                orderds.Update(parentorder);
                            }
                        }
                    }
                }

                WriteLog(UserName + "审核通过项目支出编号为:" + ids, "info");
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

        /// <summary>
        /// 日常支出审核
        /// </summary>
        public ActionResult rczccheck()
        {
            return View();
        }


        public JsonResult GetCommonPayment(int? page)
        {
            var ds = DataServiceContainer.Self.GetService<ICommonPayment>();
            PaginationInfo paging = new PaginationInfo();

            IList<CommonPayment> payments = ds.Get(false,null,null,null, 1, page.HasValue ? page.Value : 1, null, out  paging);


            var jsonobject = new
            {
                page = paging.Current,
                total = paging.TotalRecords,

                rows = payments
            };

            return Json(jsonobject, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetCommonPaymentDetail(int? page, string commonpaymentid)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<ICommonPaymentDetail>();
                PaginationInfo paging = new PaginationInfo();

                IList<CommonPaymentDetail> payments = ds.Get(new Guid(commonpaymentid), 1, page.HasValue ? page.Value : 1, null, out  paging);


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
                        model.ismanagercheck = true;
                        ds.Update(model);
                    }
                }

                WriteLog(UserName + "审核通过日常支出编号为:" + ids, "info");
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


        public ActionResult mainorder()
        {
            return View();
        }

        [HttpPost]
        public JsonResult Input(FormCollection data)
        {

            var orderds = DataServiceContainer.Self.GetService<IOrder>();
            CWResponse res = new CWResponse { Msg = "创建失败", Result = false };
            try
            {
                Order order = new Order
                {
                    ID = Guid.NewGuid(),
                    balance = 0,
                    projectcontent = data["projectcontent"],
                    company = data["company"],
                    time = ParseStr(data["time"]),
                    Statues = 1,
                    remark = data["remark"],
                    iskp = ParseNBool(data["iskp"]),
                    isht = ParseNBool(data["isht"]),
                    other = data["other"],
                    managercheck = false,
                    cwcheck = false,
                    iszd = true,
                    balancereduce = 0,
                    jsz = 0,
                    ml = 0,
                    zk = 0,
                    kpce = 0,
                    lrmoney = 0,
                    hxmoney = 0,
                    havemoney = 0,
                    nothavemoney = 0,
                  
                    actualmoney = 0,
                    havemoneypercentage = "0%",
                    lr = "0%",
                    shouldmoney = 0,
                    money = 0,
                    orderno = data["orderno"],
                    customershortname = data["customershortname"],
                    customername = data["customername"],
                    name = data["name"]
                };
                Guid id = orderds.Create(order);

                if (id == order.ID)
                {
                    WriteLog(UserName + "创建订单，订单编号为:" + id.ToString(), "info");
                    res.Msg = "创建成功";
                    res.Result = true;
                    return Json(res, JsonRequestBehavior.AllowGet);
                }


                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(res, JsonRequestBehavior.AllowGet);
            }
        }


        public ActionResult jxsetting()
        {
            return View();
        }

        public JsonResult GetTarget(int? page)
        {
            var ds = DataServiceContainer.Self.GetService<ITargetAward>();
            PaginationInfo paging = new PaginationInfo();
            IList<TargetAward> targets = ds.Get(1, page.HasValue ? page.Value : 1, null, out paging);

            var jsonobject = new
            {
                page = paging.Current,
                total = paging.TotalRecords,

                rows = targets
            };

            return Json(jsonobject, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult AddTarget(TargetAward data)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<ITargetAward>();
                data.ID = Guid.NewGuid();
                data.Statues = 1;
                Guid id = ds.Create(data);
                if (id == data.ID)
                {
                    
                    return Json(new CWResponse { Msg = "创建成功", Result = true }, JsonRequestBehavior.AllowGet);
                }

                return Json(new CWResponse { Msg = "创建失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "创建失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult EditTarget(TargetAward data)
        {
            var ds = DataServiceContainer.Self.GetService<ITargetAward>();
            data.Statues = 1;
            bool isupdate = ds.Update(data);
            if (isupdate)
            {
                return Json(new CWResponse { Msg = "更新成功", Result = true }, JsonRequestBehavior.AllowGet);
            }

            return Json(new CWResponse { Msg = "更新失败", Result = false }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult deltarget(string ids)
        {
            string[] idsarr = ids.Split(new char[] { ',' });
            var ds = DataServiceContainer.Self.GetService<ITargetAward>();
            foreach (string id in idsarr)
            {
                if (!string.IsNullOrEmpty(id))
                {

                    ds.Delete(new TargetAward { ID = new Guid(id) });
                }
            }
            CWResponse res = new CWResponse { Msg = "删除成功", Result = true };
            return Json(res, JsonRequestBehavior.AllowGet);
        }

        public ActionResult kpcheck()
        {
            return View();
        }

        public JsonResult GetMangerKps(int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IKp>();
                PaginationInfo paging = new PaginationInfo();
                IList<Kp> kps = ds.GetManagerKps(null, null, null, null, null, null, false, 1, page.HasValue ? page.Value : 1, null, out paging);
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

        [HttpPost]
        public JsonResult CheckedKp(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var ds = DataServiceContainer.Self.GetService<IKp>();
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                PaginationInfo paging = new PaginationInfo();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        Kp kp = ds.Get(new Guid(id));
                        kp.managercheck = true;
                        ds.Update(kp);
                        IList<Order> orders = orderds.Get(null, kp.orderid, null, null, null, null, null, 1, 1, null, out paging);

                        if (orders != null && orders.Count > 0)
                        {
                            Order order = orders[0];
                            order.kpce = kp.bcmoney;
                            orderds.Update(order);

                            if (!string.IsNullOrEmpty(order.parentorderno))
                            {
                                Order parentorder = orderds.GetByOrderno(order.parentorderno);
                                if (parentorder != null)
                                {
                                    parentorder.kpce += order.kpce;
                                    orderds.Update(parentorder);
                                }
                            }
                        }

                      
                    }
                }
                WriteLog(UserName + "审核通过开票，编号为:" + ids.ToString(), "info");
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

        [HttpPost]
        public JsonResult UnChecked(string id, string reason, string msg)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IKp>();
                Kp kp = ds.Get(new Guid(id));
                kp.mangeridea = msg;
                kp.mangerreason = reason;
                bool isupdate = ds.Update(kp);
                if (isupdate)
                {
                    WriteLog(UserName + "审核不通过开票，编号为:" + id.ToString(), "info");
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


        public ActionResult ordertz_jz()
        {
            return View();
        }


        public JsonResult GetOrdertzs(int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IOrderTzRequest>();
                PaginationInfo paging = new PaginationInfo();
                IList<OrderTzRequest> ordertzs = ds.Get(null, null, false, false, 1, page.HasValue ? page.Value : 1, null, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = ordertzs
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
        public JsonResult CheckedOrderTzRequest(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var ds = DataServiceContainer.Self.GetService<IOrderTzRequest>();
                var orderds  = DataServiceContainer.Self.GetService<IOrder>();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        OrderTzRequest model = ds.Get(new Guid(id));
                        model.ismanagercheck = true;
                        ds.Update(model);

                        Order order = orderds.Get(new Guid(model.orderno));
                        if (order != null)
                        {
                            order.balancereduce = model.balancereduce;
                            order.jsz = order.money - order.balance + order.balancereduce;
                            orderds.Update(order);

                            if (!string.IsNullOrEmpty(order.parentorderno))
                            {
                                Order parentorder = orderds.GetByOrderno(order.parentorderno);
                                if (parentorder != null)
                                {
                                    parentorder.balancereduce += order.balancereduce;
                                    parentorder.jsz = parentorder.money - parentorder.balance + parentorder.balancereduce;
                                    orderds.Update(parentorder);
                                }
                            }
                        }
                    }
                }
                WriteLog(UserName + "审核通过订单调整，编号为:" + ids.ToString(), "info");
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

        public ActionResult ywfcheck()
        {
            return View();
        }

        public JsonResult Getywfs(int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IBusinessPayRequest>();
                PaginationInfo paging = new PaginationInfo();
                IList<BusinessPayRequest> ordertzs = ds.Get(null, null, false, false, null, 1, page.HasValue ? page.Value : 1, null, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = ordertzs
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
        public JsonResult CheckedywfRequest(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var ds = DataServiceContainer.Self.GetService<IBusinessPayRequest>();
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        BusinessPayRequest model = ds.Get(new Guid(id));
                        model.ismanagercheck = true;
                        ds.Update(model);

                        Order order = orderds.GetByOrderno(model.orderno);
                        if (order != null)
                        {
                            order.actualmoney += model.hxbalance.Value;
                            order.lrmoney = order.money.Value - order.actualmoney.Value;
                            order.lr = order.money.Value - order.actualmoney.Value > 0 ? ((order.money.Value - order.actualmoney.Value) / order.money.Value).ToString("P") : "0%";
                            orderds.Update(order);
                        }

                        if (!string.IsNullOrEmpty(order.parentorderno))
                        {
                            Order parentorder = orderds.GetByOrderno(order.parentorderno);
                            if (parentorder != null)
                            {
                                parentorder.actualmoney += order.actualmoney;
                                parentorder.lrmoney += order.lrmoney;
                                parentorder.lr = parentorder.money.Value - parentorder.actualmoney.Value > 0 ? ((parentorder.money.Value - parentorder.actualmoney.Value) / parentorder.money.Value).ToString("P") : "0%";
                                orderds.Update(parentorder);
                            }
                        }
                    }
                }
                WriteLog(UserName + "审核通过业务费申请，编号为:" + ids.ToString(), "info");

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

        public ActionResult ywtc_check()
        {
            return View();
        }

        public JsonResult Getywtcs(int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IBusinessMoneyRequest>();
                PaginationInfo paging = new PaginationInfo();
                IList<BusinessMoneyRequest> ordertzs = ds.Get(null, null, false, false, null, 1, page.HasValue ? page.Value : 1, null, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = ordertzs
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
        public JsonResult CheckedywtcRequest(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var ds = DataServiceContainer.Self.GetService<IBusinessMoneyRequest>();
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        BusinessMoneyRequest model = ds.Get(new Guid(id));
                        model.ismanagecheck = true;
                        ds.Update(model);
                    }
                }

                WriteLog(UserName + "审核通过业务提成申请，编号为:" + ids.ToString(), "info");
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
    }
}
