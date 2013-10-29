﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Web;
using System.Web.Security;
using Nodus.Authentication;

namespace CW.Core
{
    public class BaseService
    {
        public string ToQuote(object parameter)
        {
            if (parameter == null)
            {
                return "NULL";
            }
            else if (string.IsNullOrEmpty(parameter.ToString()))
            {
                return "NULL";
            }
            else if (parameter.GetType() == typeof(bool))
            {
                bool val = bool.Parse(parameter.ToString());
                return val ? "1" : "0";     //BIT in SQL DATABASE
            }
           
            else
            {
                return "N'" + parameter.ToString().Trim().Replace("'", "''") + "'";
            }
        }

        public string ConnectStr
        {
            get { return System.Configuration.ConfigurationManager.ConnectionStrings["ConnectStr"].ToString(); }
        }

        public string CurrentUserName
        {
            get
            {
                if (System.Web.HttpContext.Current != null && System.Web.HttpContext.Current.User != null && System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    return System.Web.HttpContext.Current.User.Identity.Name;
                }
                else if (System.Threading.Thread.CurrentPrincipal != null)
                {
                    return System.Threading.Thread.CurrentPrincipal.Identity.Name;
                }
                
                throw new Exception("username is reqired");
            }
        }

        public string CurrentuserID
        {
            get
            {
                if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    HttpCookie cookie = System.Web.HttpContext.Current.Request.Cookies[FormsAuthentication.FormsCookieName];
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

        public Guid Guidcheck(object obj)
        {
            if (obj == null || obj == DBNull.Value)
            {
                return Guid.Empty;
            }
            return new Guid(obj.ToString());
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

        
    }
}
