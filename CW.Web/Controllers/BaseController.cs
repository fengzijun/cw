using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Nodus.Authentication;
using CW.InterFace;
using CW.Core;
using CW.Model;
using CW.Web.Models;

namespace CW.Web.Controllers
{
    [Authorize]
    public class BaseController : Controller
    {
        //
        // GET: /Base/


        public string GetClientIP()
        {
            string IPAddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (String.IsNullOrEmpty(IPAddress))
                IPAddress = Request.ServerVariables["REMOTE_ADDR"];

            return IPAddress;
        }

        public string UserId
        {
            get
            {
                if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    HttpCookie cookie = Request.Cookies[FormsAuthentication.FormsCookieName];
                    if (cookie != null)
                    {
                        FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(cookie.Value);
                        //{"ID":"35115182-635c-4ee1-9618-3c76e708d1c8","IsAuthenticated":true,"Name":"admin","Roles":"Administrator"}

                        ICustomIdentity customidentity = CustomIdentity.FromJson(ticket.UserData);
                        if (customidentity != null)
                        {
                            return customidentity.Id;
                        }
                    }

                }
                throw new Exception("userid is reqired");
            }
        }

        public string UserName
        {
            get
            {
                if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    return System.Web.HttpContext.Current.User.Identity.Name;
                }
                throw new Exception("username is reqired");
            }
        }

        public string RoleName
        {
            get
            {

                HttpCookie cookie = Request.Cookies[FormsAuthentication.FormsCookieName];
                if (cookie != null)
                {
                    FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(cookie.Value);
                    ICustomIdentity customidentity = CustomIdentity.FromJson(ticket.UserData);
                    if (customidentity != null && customidentity.Roles != null && customidentity.Roles.Length > 0)
                    {
                        return customidentity.Roles[0];
                    }
                }

                return string.Empty;
            }
        }


        public decimal ParseDecimal(object value)
        {
            if (value == null)
            {
                return decimal.MinusOne;
            }
            else
            {
                decimal d;
                if (decimal.TryParse(value.ToString(), out d))
                {
                    return d;
                }
                else
                {
                    return decimal.MinusOne;
                }
            }
        }

        public int ParseInt(object value)
        {
            if (value == null)
            {
                return int.MinValue;
            }
            else
            {
                int i;
                if (int.TryParse(value.ToString(), out i))
                {
                    return i;
                }
                else
                {
                    return int.MinValue;
                }
            }
        }

        public float ParseFloat(object value)
        {
            if (value == null)
            {
                return float.MinValue;
            }
            else
            {
                float f;
                if (float.TryParse(value.ToString(), out f))
                {
                    return f;
                }
                else
                {
                    return float.MinValue;
                }
            }
        }

        public long ParseLong(object value)
        {
            if (value == null)
            {
                return 0;
            }
            else
            {
                long f;
                if (long.TryParse(value.ToString(), out f))
                {
                    return f;
                }
                else
                {
                    return 0;
                }
            }
        }

        public DateTime ParseDate(object value)
        {
            try
            {
                if (value == null)
                {
                    return DateTime.MinValue;
                }
                else
                {
                    DateTime time = (DateTime)value;
                    return time;
                }
            }
            catch
            {
                return DateTime.MinValue;
            }
        }

        /// <summary>
        /// Convert object to a nullable datetime
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public DateTime? ParseNDate(object value)
        {
            if (value == null || string.IsNullOrEmpty(value.ToString()))
            {
                return null;
            }
            else
            {
                return DateTime.Parse(value.ToString());
            }
        }

        public Guid? ParseNGuid(object value)
        {
            if (value == null || string.IsNullOrEmpty(value.ToString()))
            {
                return null;
            }
            else
            {
                return Guid.Parse(value.ToString());
            }
        }

        public Decimal? ParseNDecimal(object value)
        {
            if (value == null || string.IsNullOrEmpty(value.ToString()))
            {
                return null;
            }
            else
            {
                decimal d;
                if (decimal.TryParse(value.ToString(), out d))
                {
                    return d;
                }
                else
                {
                    return null;
                }
            }
        }

        /// <summary>
        /// Convert object to a nullable bool
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public bool? ParseNBool(object value)
        {
            if (value == null || string.IsNullOrEmpty(value.ToString()))
            {
                return null;
            }
            else
            {
                return bool.Parse(value.ToString());
            }
        }

        /// <summary>
        /// Convert object to a nullable int
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public int? ParseNInt(object value)
        {
            if (value == null || string.IsNullOrEmpty(value.ToString()))
            {
                return null;
            }
            else
            {
                return int.Parse(value.ToString());
            }
        }

        public string ParseStr(object value)
        {
            if (value == null)
            {
                return string.Empty;
            }
            else
            {
                return value.ToString();
            }
        }


        public JsonResult GetOrderDetail(string orderno)
        {
            var orderds = DataServiceContainer.Self.GetService<IOrder>();
            var pushmoneyds = DataServiceContainer.Self.GetService<IPushMoneySetting>();
            Order order = orderds.GetByOrderno(orderno);
            if (order != null)
            {
                PushMoneySetting pushmoneysetting = pushmoneyds.GetByName(order.name);
                OrdrViewModel orderdetail = new OrdrViewModel { order = order, pushmoneysetting = pushmoneysetting };
                return Json(orderdetail, JsonRequestBehavior.AllowGet);
            }
            return Json(new OrdrViewModel { }, JsonRequestBehavior.AllowGet);
            
        }

        public JsonResult GetChildOrders(string parentno,int? page)
        {
            var orderds = DataServiceContainer.Self.GetService<IOrder>();
            PaginationInfo paging = new PaginationInfo();
            IList<Order> orders = orderds.Get(null, null, null, null, null, null, parentno, 1, page.HasValue ? page.Value : 1, null, out paging);

            var jsonobject = new
            {
                page = paging.Current,
                total = paging.TotalRecords,

                rows = orders
            };

            return Json(jsonobject, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult GetOrder(string orderno)
        {
            var orderds = DataServiceContainer.Self.GetService<IOrder>();
  
            Order order = orderds.GetByOrderno(orderno);

            return Json(order, JsonRequestBehavior.AllowGet);

        }


        public JsonResult GetOrders(string orderno)
        {
            var orderds = DataServiceContainer.Self.GetService<IOrder>();
            PaginationInfo paging = new PaginationInfo();
            IList<Order> orders = orderds.Get(null, orderno, null, null, null, null, null, 1, 1, null, out paging);

            var jsonobject = new
            {
                page = paging.Current,
                total = paging.TotalRecords,

                rows = orders
            };

            return Json(jsonobject, JsonRequestBehavior.AllowGet);

        }


        public JsonResult GetUserOrder(int? page)
        {
            var orderds = DataServiceContainer.Self.GetService<IOrder>();
            PaginationInfo paging = new PaginationInfo();
           IList< Order> orders = orderds.Get(null, null, UserName, null, null, null, null, 1, page.HasValue ? page.Value : 1, null, out paging);

           var jsonobject = new
           {
               page = paging.Current,
               total = paging.TotalRecords,

               rows = orders
           };

           return Json(jsonobject, JsonRequestBehavior.AllowGet);
     
        }

        public void WriteLog(string msg, string type)
        {
            var ds = DataServiceContainer.Self.GetService<ILog>();
            Log log = new Log
            {
                ID = Guid.NewGuid(),
                msgcontent = msg,
                 type = type,
                Statues = 1
            };

            new System.Threading.Tasks.Task(() => ds.Create(log)).Start();
        }
       
    }
}
