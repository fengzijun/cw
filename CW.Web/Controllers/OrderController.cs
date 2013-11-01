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
    public class OrderController : BaseController
    {
        //
        // GET: /Order/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Input()
        {
            return View();
        }

        public ActionResult childinput()
        {
            return View();
        }



        [HttpPost]
        public JsonResult getchildorderno(string parentorderno)
        {
            try
            {
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                PaginationInfo paging = new PaginationInfo();
                IList<Order> orders = orderds.Get(null, null, null, null, null, null, parentorderno, 1, 0, null, out paging);
                string result = parentorderno + (orders.Count() + 1).ToString().PadLeft(2, '0');
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(null, JsonRequestBehavior.AllowGet);
            }
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
                    balance = ParseNDecimal(data["balance"]),
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
                    iszd = false,
                    balancereduce = 0,
                    jsz = ParseNDecimal(data["money"]) - ParseNDecimal(data["balance"]),
                    ml = 0,
                    zk = 0,
                    hxmoney = 0,
                    havemoney = 0,
                    nothavemoney = 0,
                    actualmoney = ParseNDecimal(data["balance"]),
                    havemoneypercentage = "0%",
                    lr = "0%",
                    shouldmoney = ParseNDecimal(data["money"]),
                    money = ParseNDecimal(data["money"]),
                    orderno = data["orderno"],
                    customershortname = data["customershortname"],
                    customername = data["customername"],
                    name = data["name"],
                    kpce = 0,
                    lrmoney = 0
                      
                };
                Guid id = orderds.Create(order);

                if (id == order.ID)
                {
                    res.Msg = "创建成功";
                    res.Result = true;
                    WriteLog(UserName + "创建订单，编号为:" + id.ToString(), "info");
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

        [HttpPost]
        public JsonResult editorder(Order order)
        {
            try
            {
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                Order myorder = orderds.Get(order.ID);
                myorder.isht = order.isht;
                myorder.name = order.name;
                myorder.time = order.time;
                myorder.remark = order.remark;
                myorder.other = order.other;
                myorder.money = order.money;
                myorder.customername = order.customername;
                myorder.customershortname = order.customershortname;
                myorder.projectcontent = order.projectcontent;
                myorder.balance = order.balance;
                myorder.iskp = order.iskp;

                bool isupdate = orderds.Update(myorder);
                if (isupdate)
                {
                    WriteLog(UserName + "编辑订单，编号为:" + myorder.ID.ToString(), "info");
                    return Json(new CWResponse { Msg = "更新成功", Result = true }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new CWResponse { Msg = "更新失败", Result = false }, JsonRequestBehavior.AllowGet);
                }
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "更新失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult deleteorder(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                PaginationInfo paging = new PaginationInfo();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        Order order = orderds.Get(new Guid(id));
                        if (order != null)
                        {
                            order.Statues = 0;
                            orderds.Update(order);
                        }

                    }
                }

                WriteLog(UserName + "删除订单，编号为:" + ids.ToString(), "info");
                CWResponse res = new CWResponse { Msg = "删除成功", Result = true };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "删除失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult ChildInput(FormCollection data)
        {

            var orderds = DataServiceContainer.Self.GetService<IOrder>();
            CWResponse res = new CWResponse { Msg = "创建失败", Result = false };
            try
            {
                Order parentorder = orderds.GetByOrderno(data["parentorderno"]);
                if (parentorder == null)
                {
                    return Json(new CWResponse { Msg = "不存在该主单编号", Result = false }, JsonRequestBehavior.AllowGet);
                }
                
                Order order = new Order
                {
                    ID = Guid.NewGuid(),
                    balance = ParseNDecimal(data["balance"]),
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
                    iszd = false,
                    parentorderno = data["parentorderno"],
                    balancereduce = 0,
                    jsz = ParseNDecimal(data["money"]) - ParseNDecimal(data["balance"]),
                    ml = 0,
                    zk = 0,
                    hxmoney = 0,
                    havemoney = 0,
                    nothavemoney = 0,
                    actualmoney = ParseNDecimal(data["balance"]),
                    havemoneypercentage = "0%",
                    lr = "0%",
                    shouldmoney = 0,
                    money = ParseNDecimal(data["money"]),
                    orderno = data["orderno"],
                    customershortname = data["customershortname"],
                    customername = data["customername"],
                    name = data["name"]
                };
                Guid id = orderds.Create(order);

                if (id == order.ID)
                {
                    
                    if (parentorder != null)
                    {
                        parentorder.money += order.money.Value;
                        parentorder.balance += order.balance.Value;
                        parentorder.jsz = parentorder.money - parentorder.balance;
                        orderds.Update(parentorder);
                    }
                    WriteLog(UserName + "创建子订单，编号为:" + id.ToString(), "info");
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


        public ActionResult Kp()
        {
            return View();
        }

        #region 开票
        [HttpPost]
        public JsonResult Kp(Kp data)
        {
            try
            {
                var kpds = DataServiceContainer.Self.GetService<IKp>();
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                PaginationInfo paging = new PaginationInfo();
                IList<Order> orderlist = orderds.Get(null, data.orderid, null, null, null, null, null, 1, 0, null, out paging);
                if (orderlist == null || orderlist.Count == 0)
                {
                    return Json(new CWResponse { Result = false, Msg = "不存在该订单号" }, JsonRequestBehavior.AllowGet);
                }
                Order order = orderlist[0];
                IList<Kp> kps = kpds.Get(null, order.orderno, null, null, null, null, null, null, 1, 0, null, out paging);
                decimal kpmoney = 0;
                foreach (Kp k in kps)
                {
                    kpmoney += k.money.Value;
                }

                if (order.customername == data.kptt && order.money.Value == (kpmoney + data.money.Value))
                {
                    data.managercheck = true;
                }
                else
                {
                    data.managercheck = false;
                }

                if (data.money.Value > (order.money.HasValue ? order.money.Value * (decimal)1.2 : 0))
                {
                    data.topmanageridea = "1";
                }
                else
                {
                    data.mangeridea = "1";
                }

                data.ID = Guid.NewGuid();
                data.Statues = 1;
                data.customershortname = order.customershortname;
                data.customername = order.customername;
                data.ywuser = UserName;
                data.bcmoney = (order.money.Value - (kpmoney + data.money.Value)) > 0 ? 0 : (order.money.Value - (kpmoney + data.money.Value));//补差金额 =  合同金额减去所有的开票金额
                data.bjsj = data.bcmoney * (decimal)0.17;
                Guid result = kpds.Create(data);
                 CWResponse res  = null;
                if (result == data.ID)
                {
                    WriteLog(UserName + "创建开票，编号为:" + data.ID.ToString(), "info");
                    res = new CWResponse { Msg = (result == data.ID ? "创建成功" : "创建失败"), Result = (result == data.ID ? true : false) };
                }
                else
                {
                     res = new CWResponse { Msg = (result == data.ID ? "创建成功" : "创建失败"), Result = (result == data.ID ? true : false) };
                }
             

             

                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse {  Msg ="创建失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult GetKpBcAndBj(string orderno,decimal money)
        {
            try
            {
                if (string.IsNullOrEmpty(orderno))
                {
                    return Json(new CWResponse { Result = false, Msg = "不存在该订单号" }, JsonRequestBehavior.AllowGet);
                }

                var kpds = DataServiceContainer.Self.GetService<IKp>();
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                PaginationInfo paging = new PaginationInfo();

                IList<Order> orderlist = orderds.Get(null, orderno, null, null, null, null, null, 1, 0, null, out paging);
                if (orderlist == null || orderlist.Count == 0)
                {
                    return Json(new CWResponse { Result = false, Msg = "不存在该订单号" }, JsonRequestBehavior.AllowGet);
                }
                Order order = orderlist[0];
                IList<Kp> kps = kpds.Get(null, order.orderno, null, null, null, null, null, null, 1, 0, null, out paging);
                decimal kpmoney = 0;
                foreach (Kp k in kps)
                {
                    kpmoney += k.money.Value;
                }

                decimal bcmoney = (order.money.Value - (kpmoney + money)) > 0 ? 0 : (order.money.Value - (kpmoney + money));
                decimal bjsj = bcmoney * (decimal)0.17;

                return Json(new { bjsj = bjsj, bcmoney = bcmoney, Result = true }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new CWResponse { Result = false, Msg = "输入格式错误" }, JsonRequestBehavior.AllowGet);
            }
        }


        public JsonResult GetKpDetail(string orderno,int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IKp>();
                PaginationInfo paging = new PaginationInfo();
                IList<Kp> kps = ds.Get(null, orderno, null, null, null, null, null, null, 1, page.HasValue ? page.Value : 1, null, out paging);

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

        public JsonResult GetUserkp(int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IKp>();
                PaginationInfo paging = new PaginationInfo();
                IList<Kp> kps = ds.Get(UserName, null, null, null, null, null, null, null, 1, page.HasValue ? page.Value : 1, null, out paging);

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
        public JsonResult editkp(Kp data)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IKp>();
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                PaginationInfo paging = new PaginationInfo();
                Kp mykp = ds.Get(data.ID);
                mykp.company = data.company;
                mykp.kptt = data.kptt;

                mykp.remark = data.remark;
                mykp.other = data.other;
                mykp.project = data.project;
                mykp.type = data.type;

                IList<Kp> kps = ds.Get(null, mykp.orderid, null, null, null, null, null, null, 1, 0, null, out paging);
                IList<Order> orderlist = orderds.Get(null, data.orderid, null, null, null, null, null, 1, 0, null, out paging);
                decimal kpmoney = 0;
                foreach (Kp k in kps)
                {
                    kpmoney += k.money.Value;
                }

                mykp.bcmoney = orderlist[0].money - (kpmoney - mykp.money.Value + data.money.Value);

                mykp.money = data.money;
                mykp.bjsj = mykp.bcmoney * (decimal)0.17;
                bool isupdate = ds.Update(mykp);
                if (isupdate)
                {
                    WriteLog(UserName + "更新开票，编号为:" + mykp.ID.ToString(), "info");
                    return Json(new CWResponse { Msg = "更新成功", Result = true }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new CWResponse { Msg = "更新失败", Result = false }, JsonRequestBehavior.AllowGet);
                }
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "创建失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult deletekp(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var ds = DataServiceContainer.Self.GetService<IKp>();
                PaginationInfo paging = new PaginationInfo();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        Kp kp = ds.Get(new Guid(id));
                        if (kp != null)
                        {
                            ds.Delete(kp);
                        }

                    }
                }
                WriteLog(UserName + "删除开票，编号为:" + ids.ToString(), "info");
                CWResponse res = new CWResponse { Msg = "删除成功", Result = true };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex )
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "创建失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }
        #endregion

        public ActionResult Search()
        {
            return View();
        }

        public JsonResult OrderSearch(string startime, string endtime, string orderno, string iskp, string issk, string customershortname, string projectname, string company, int? page)
        {
            try
            {
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                PaginationInfo paging = new PaginationInfo();

                IList<Order> orders = orderds.Get(startime, endtime, orderno, iskp == "0" ? false : true, issk == "0" ? false : true, customershortname, projectname, company, 1, page.HasValue ? page.Value : 1, null, out  paging);


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

        public ActionResult jxsearch()
        {
            return View();
        }


        public JsonResult GetJx(int? page)
        {
            try
            {
                var jxds = DataServiceContainer.Self.GetService<IJxTarget>();
                PaginationInfo paging = new PaginationInfo();

                IList<jxtarget> jxs = jxds.Get(null, null, 1, page.HasValue ? page.Value : 1, null, out  paging);


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

        #region 业务提现申请
        /// <summary>
        /// 业务提现申请
        /// </summary>
        /// <returns></returns>
        public ActionResult ywtc_ask()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ywtc_requireinfo(string orderno)
        {
            var ds = DataServiceContainer.Self.GetService<IBusinessMoneyRequest>();
            var detailds = DataServiceContainer.Self.GetService<IBusinessMoneyRequestDetail>();
            var orderds = DataServiceContainer.Self.GetService<IOrder>();
            var pushmoneysettingds = DataServiceContainer.Self.GetService<IPushMoneySetting>();
            var szds = DataServiceContainer.Self.GetService<IReceiveMoney>();
            PaginationInfo paging = new PaginationInfo();
            Order order = orderds.GetByOrderno(orderno);
            if (order == null)
            {
                return Json(new CWResponse { Msg = "找不到订单号", Result = false }, JsonRequestBehavior.AllowGet);
            }
            IList<ReceiveMoney> szlist = szds.Get(orderno, 1, 0, null, out paging);
            decimal revemoney = 0;
            DateTime? sktime = null;
            foreach (ReceiveMoney sz in szlist)
            {
                revemoney += sz.money.Value;
                if (!sktime.HasValue || DateTime.Parse(sz.time) > sktime.Value)
                {
                    sktime = DateTime.Parse(sz.time);
                }
            }
          
            PushMoneySetting pushmoneysetting = pushmoneysettingds.GetByName(order.name);
            int overday = DateTime.Now.Subtract(DateTime.Parse(order.time)).Days;
            decimal businessmoney = 0;
            if (overday > 180)
            {
                businessmoney = 0;
            }
            else if (overday > 90 && overday <=180 )
            {
                businessmoney = order.money.Value * Convert.ToDecimal(pushmoneysetting.percentage.Replace("%", "")) * (decimal)0.01 * (decimal)0.8;
            }
            else 
            {
                businessmoney = order.money.Value * Convert.ToDecimal(pushmoneysetting.percentage.Replace("%", "")) * (decimal)0.01;
            }

            return Json(new { customername = order.customername, company = order.company, projectcontent = order.projectcontent, time = order.time, money = order.money, revemoney = revemoney, recetime = sktime.HasValue ? sktime.Value.ToString() : null, overday = overday, tc = pushmoneysetting.percentage, businessmoney = businessmoney,Result=true }, JsonRequestBehavior.AllowGet);

        }

        [HttpPost]
        public JsonResult ywtc_askpost(BuesinessRequestViewModel data)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IBusinessMoneyRequest>();
                var detailds = DataServiceContainer.Self.GetService<IBusinessMoneyRequestDetail>();
                var orderds = DataServiceContainer.Self.GetService<IOrder>();
                var pushmoneysettingds = DataServiceContainer.Self.GetService<IPushMoneySetting>();
                Order order = orderds.GetByOrderno(data.businessrequst.orderno);
                if (order == null)
                {
                    return Json(new CWResponse { Msg = "找不到订单号", Result = false }, JsonRequestBehavior.AllowGet);
                }

                PushMoneySetting pushmoneysetting = pushmoneysettingds.GetByName(order.name);
                data.businessrequst.ID = Guid.NewGuid();
                data.businessrequst.Statues = 1;
                data.businessrequst.orderuser = string.IsNullOrEmpty(data.businessrequst.orderuser) ? UserName : data.businessrequst.orderuser;
                data.businessrequst.money = order.money;
                data.businessrequst.moneypercentage = pushmoneysetting.percentage;
                data.businessrequst.isjz = false;
                data.businessrequst.ismanagecheck = false;
                data.businessrequst.istopmanagercheck = false;
                if (data.businessrequst.overday > 180)
                {
                    data.businessrequst.businessmoney = 0;
                }
                else if (data.businessrequst.overday > 90)
                {
                    data.businessrequst.businessmoney = order.money * Convert.ToDecimal(pushmoneysetting.percentage.Replace("%", "")) * (decimal)0.01 * (decimal)0.8;
                }
                else
                {
                    data.businessrequst.businessmoney = order.money * Convert.ToDecimal(pushmoneysetting.percentage.Replace("%", "")) * (decimal)0.01;
                }

                Guid result = ds.Create(data.businessrequst);
                CWResponse res = null;
                if (result == data.businessrequst.ID)
                {
                    if (data.businessrequestdetails != null)
                    {
                        foreach (BusinessMoneyRequestDetail detail in data.businessrequestdetails)
                        {
                            detail.ID = Guid.NewGuid();
                            detail.businessid = result;
                            detail.Statues = 1;
                            detailds.Create(detail);
                        }
                    }

                    WriteLog(UserName + "创建业务提成请求，编号为:" + data.businessrequst.ID.ToString(), "info");
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

        public JsonResult Getordertzs(int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IBusinessMoneyRequest>();
                PaginationInfo paging = new PaginationInfo();
                IList<BusinessMoneyRequest> ordertzs = ds.Get(null, UserName, null, null, null, 1, page.HasValue ? page.Value : 1, null, out paging);
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
        public JsonResult editordertz(BusinessMoneyRequest data)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IBusinessMoneyRequest>();
                BusinessMoneyRequest model = ds.Get(data.ID);
                model.company = data.company;
                model.customername = data.customername;
                model.projectcontent = data.projectcontent;
                model.time = data.time;
                model.receivetime = data.receivetime;
                model.overday = data.overday;
                model.receivemoney = data.receivemoney;
                model.orderuser = data.orderuser;

                bool isupdate = ds.Update(model);
                if (isupdate)
                {
                    WriteLog(UserName + "编辑业务提成请求，编号为:" + data.ID.ToString(), "info");
                    return Json(new CWResponse { Msg = "更新成功", Result = true }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new CWResponse { Msg = "更新失败", Result = false }, JsonRequestBehavior.AllowGet);
                }
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "更新失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult deleteordertz(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var ds = DataServiceContainer.Self.GetService<IBusinessMoneyRequest>();
                PaginationInfo paging = new PaginationInfo();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        BusinessMoneyRequest order = ds.Get(new Guid(id));
                        if (order != null)
                        {

                            ds.Delete(order);
                        }

                    }
                }
                WriteLog(UserName + "删除业务提成请求，编号为:" + ids.ToString(), "info");
                CWResponse res = new CWResponse { Msg = "删除成功", Result = true };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "删除失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        #endregion

        #region 订单调整
        /// <summary>
        /// 订单调整
        /// </summary>
        /// <returns></returns>
        public ActionResult ddtz_ask()
        {
            return View();
        }

        [HttpPost]
        public JsonResult ddtz_askpost(string orderno, string balancereduce, string balancereducereason)
        {
            var orderds = DataServiceContainer.Self.GetService<IOrder>();
            var ordertzds = DataServiceContainer.Self.GetService<IOrderTzRequest>();
            Order order = orderds.GetByOrderno(orderno);
            if (order == null)
            {
                return Json(new CWResponse { Msg = "找不到订单号", Result = false }, JsonRequestBehavior.AllowGet);
            }
            //order.balancereducereason = balancereducereason;
            //order.balancereduce = ParseNDecimal(balancereduce);
            //order.jsz = order.money - order.balance - order.balancereduce;
            OrderTzRequest model = new OrderTzRequest
            {
                ID = Guid.NewGuid(),
                Statues = 1,
                istopmanagercheck = false,
                ismanagercheck = false,
                remark = balancereducereason,
                balancereduce = ParseDecimal(balancereduce),
                balance = order.balance.Value,
                money = order.money.Value,
                name = order.name,
                time = order.time,
                company = order.name,
                orderno = orderno,
                projectcontent = order.projectcontent,
                customershortname = order.customershortname

            };
            CWResponse res = null;
            Guid id = ordertzds.Create(model);
            if (id == model.ID)
            {
                res = new CWResponse { Msg = "提交成功", Result = true };
            }
            else
            {
                res = new CWResponse { Msg = "提交失败", Result = false };
            }

            return Json(res, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Getusertzs(int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IOrderTzRequest>();
                PaginationInfo paging = new PaginationInfo();
                IList<OrderTzRequest> ordertzs = ds.Get(null, UserName, false, false, 1, page.HasValue ? page.Value : 1, null, out paging);
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
        public JsonResult edittz(OrderTzRequest data)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IOrderTzRequest>();
                OrderTzRequest model = ds.Get(data.ID);
                model.balancereduce = data.balancereduce;
                model.remark = data.remark;

                bool isupdate = ds.Update(model);
                if (isupdate)
                {
                    WriteLog(UserName + "编辑订单调整请求，编号为:" + data.ID.ToString(), "info");
                    return Json(new CWResponse { Msg = "更新成功", Result = true }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new CWResponse { Msg = "更新失败", Result = false }, JsonRequestBehavior.AllowGet);
                }
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "删除失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult deletetz(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var ds = DataServiceContainer.Self.GetService<IOrderTzRequest>();
                PaginationInfo paging = new PaginationInfo();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        OrderTzRequest order = ds.Get(new Guid(id));
                        if (order != null)
                        {

                            ds.Delete(order);
                        }

                    }
                }
                WriteLog(UserName + "删除订单调整请求，编号为:" + ids.ToString(), "info");
                CWResponse res = new CWResponse { Msg = "删除成功", Result = true };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "删除失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }


        #endregion

        #region 业务费
        public ActionResult ywf_ask()
        {
            return View();
        }

        [HttpPost]
        public JsonResult ywf_askpost(BusinessPayRequest data)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IBusinessPayRequest>();
                var orderds = DataServiceContainer.Self.GetService<IOrder>();

                Order order = orderds.GetByOrderno(data.orderno);
                if (order == null)
                {
                    return Json(new CWResponse { Msg = "找不到订单号", Result = false }, JsonRequestBehavior.AllowGet);
                }

                order.hxmoney = data.hxbalance;
               // order.balance = data.balance;
               // order.money = data.money;

                data.ID = Guid.NewGuid();
                data.Statues = 1;
                data.iscwcheck = false;
                data.ismanagercheck = false;
                data.istopmanagercheck = false;

                Guid id = ds.Create(data);
                CWResponse res = null;
                if (id == data.ID)
                {
                    WriteLog(UserName + "创建业务费请求，编号为:" + id.ToString(), "info");
                    orderds.Update(order);
                    if (!string.IsNullOrEmpty(order.parentorderno))
                    {
                        Order parentorder = orderds.GetByOrderno(order.parentorderno);
                        if (parentorder != null)
                        {
                            parentorder.hxmoney += order.hxmoney;
                            orderds.Update(parentorder);
                        }
                    }
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

        public JsonResult Getuserywfs(int? page)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IBusinessPayRequest>();
                PaginationInfo paging = new PaginationInfo();
                IList<BusinessPayRequest> ordertzs = ds.Get(null, UserName, false, false, null, 1, page.HasValue ? page.Value : 1, null, out paging);
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
        public JsonResult editywf(BusinessPayRequest data)
        {
            try
            {
                var ds = DataServiceContainer.Self.GetService<IBusinessPayRequest>();
                BusinessPayRequest model = ds.Get(data.ID);
                model.other = data.other;
                model.payway = data.payway;
                model.receivename = data.receivename;
                model.hxbalance = data.hxbalance;
                model.customername = data.customername;
                model.account = data.account;
                model.company = data.company;
                model.bank = data.bank;
                bool isupdate = ds.Update(model);
                if (isupdate)
                {
                    WriteLog(UserName + "编辑业务费请求，编号为:" + data.ID.ToString(), "info");
                    return Json(new CWResponse { Msg = "更新成功", Result = true }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new CWResponse { Msg = "更新失败", Result = false }, JsonRequestBehavior.AllowGet);
                }
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "更新失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult deleteywf(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var ds = DataServiceContainer.Self.GetService<IBusinessPayRequest>();
                PaginationInfo paging = new PaginationInfo();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        BusinessPayRequest order = ds.Get(new Guid(id));
                        if (order != null)
                        {

                            ds.Delete(order);
                        }

                    }
                }
                WriteLog(UserName + "删除业务费请求，编号为:" + ids.ToString(), "info");
                CWResponse res = new CWResponse { Msg = "删除成功", Result = true };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Msg = "删除失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
        }

        #endregion
    }
}
