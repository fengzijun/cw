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
    public class SystemManagerController : BaseController
    {
        //
        // GET: /SystemManager/

        public ActionResult Role()
        {
            return View();
        }

        public JsonResult GetRoles(int? page)
        {
            try
            {
                var roleds = DataServiceContainer.Self.GetService<IRole>();
                PaginationInfo paging = new PaginationInfo();
                IList<role> roles = roleds.Get(null, 1, page.HasValue ? page.Value : 1, null, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = roles
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

        public JsonResult GetAllRoles()
        {
            try
            {
                var roleds = DataServiceContainer.Self.GetService<IRole>();
                PaginationInfo paging = new PaginationInfo();
                IList<role> roles = roleds.Get(null, 1, 0, null, out paging);
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = roles
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
        public JsonResult AddRole(string rolename,string ids)
        {
            try
            {
                var roleds = DataServiceContainer.Self.GetService<IRole>();
                role role = new role
                {
                    menu = ids,
                    rolename = rolename,
                    Statues = 1
                };
                bool result = roleds.Create(role);
                CWResponse res = new CWResponse { Msg = result ? "创建成功" : "创建失败", Result = result };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Result = false, Msg = "创建失败" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult EditRole(string id,string rolename, string ids)
        {
            try
            {
                var roleds = DataServiceContainer.Self.GetService<IRole>();
                PaginationInfo paging = new PaginationInfo();
                IList<role> roles = roleds.Get(rolename, 1, 0, null, out paging);
                if (roles != null && roles.Count > 0)
                {
                    role role = roles[0];
                    role.menu = ids;
                    bool result = roleds.Update(role);
                    CWResponse res = new CWResponse { Msg = result ? "修改成功" : "修改失败", Result = result };
                    return Json(res, JsonRequestBehavior.AllowGet);
                }

                return Json(new CWResponse { Msg = "修改失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Result = false, Msg = "修改失败" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult DelRole(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var roleds = DataServiceContainer.Self.GetService<IRole>();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        roleds.Delete(new role { ID = int.Parse(id) });
                    }
                }
                CWResponse res = new CWResponse { Msg = "删除成功", Result = true };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Result = false, Msg = "删除失败" }, JsonRequestBehavior.AllowGet);
            }

        }

        public ActionResult User()
        {
            return View();
        }

        public JsonResult GetUsers(int? page)
        {
            try
            {
                var userds = DataServiceContainer.Self.GetService<IUser>();
                var roleds = DataServiceContainer.Self.GetService<IRole>();
                PaginationInfo paging = new PaginationInfo();
                IList<user> users = userds.Get(null, null, 1, page.HasValue ? page.Value : 1, null, out paging);
                foreach (user user in users)
                {
                    user.role = roleds.Get(user.role.ID);
                }
                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = users
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
        public JsonResult Adduser(FormCollection data)
        {
            try
            {
                var userds = DataServiceContainer.Self.GetService<IUser>();
                string username = data["username"];
                PaginationInfo paging = new PaginationInfo();
                IList<user> users = userds.Get(username, null, 1, 1, null, out paging);
                if (users != null && users.Count > 0)
                {

                    return Json(new CWResponse { Msg = "用户名已经存在，创建失败", Result = false }, JsonRequestBehavior.AllowGet);
                }

                string password = data["password"];
                int roleid = int.Parse(data["roleid"]);
                string company = data["company"];
                user user = new user
                {
                    password = password,
                    username = username,
                    Statues = 1,
                    Company = company,
                    role = new role { ID = roleid }

                };
                bool result = userds.Create(user);
                CWResponse res = new CWResponse { Msg = result ? "创建成功" : "创建失败", Result = result };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Result = false, Msg = "创建失败" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult Edituser(FormCollection data)
        {
            try
            {
                var userds = DataServiceContainer.Self.GetService<IUser>();
                string username = data["username"];
                string password = data["password"];
                int roleid = int.Parse(data["roleid"]);
                string company = data["company"];
                PaginationInfo paging = new PaginationInfo();
                IList<user> users = userds.Get(username, null, 1, 1, null, out paging);
                if (users != null && users.Count > 0)
                {
                    user user = users[0];
                    user.username = username;
                    user.password = password;
                    user.Company = company;
                    user.role = new role { ID = roleid };
                    bool result = userds.Update(user);

                    return Json(new CWResponse { Msg = result ? "修改成功" : "修改失败", Result = result }, JsonRequestBehavior.AllowGet);
                }

                return Json(new CWResponse { Msg = "找不到用户，修改失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Result = false, Msg = "修改失败" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult Deluser(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var userds = DataServiceContainer.Self.GetService<IUser>();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        userds.Delete(new user { ID = int.Parse(id) });
                    }
                }

                CWResponse res = new CWResponse { Msg = "删除成功", Result = true };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Result = false, Msg = "删除失败" }, JsonRequestBehavior.AllowGet);
            }

        }

        public ActionResult KpTypeSetting()
        {
            return View();
        }

        public JsonResult GetKpTypes(int? page)
        {
            try
            {
                var kptypeds = DataServiceContainer.Self.GetService<IKpType>();

                PaginationInfo paging = new PaginationInfo();
                IList<KpType> kptypes = kptypeds.Get(null, null, 1, page.HasValue ? page.Value : 1, null, out paging);

                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = kptypes
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

        public JsonResult GetKpTypesByType(string type)
        {
            try
            {
                var kptypeds = DataServiceContainer.Self.GetService<IKpType>();

                PaginationInfo paging = new PaginationInfo();
                IList<KpType> kptypes = kptypeds.Get(null, type, 1, 0, null, out paging);

                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = kptypes
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

        public JsonResult GetAllKpTypes()
        {
            try
            {
                var kptypeds = DataServiceContainer.Self.GetService<IKpType>();

                PaginationInfo paging = new PaginationInfo();
                IList<KpType> kptypes = kptypeds.Get(null, null, 1, 0, null, out paging);

                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = kptypes
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
        public JsonResult AddKpType(FormCollection data)
        {
            try
            {
                var kptypeds = DataServiceContainer.Self.GetService<IKpType>();
                string name = data["name"];
                string type = data["type"];
                string projectname = data["projectname"];
                PaginationInfo paging = new PaginationInfo();
                IList<KpType> kptypes = kptypeds.Get(name, null, 1, 1, null, out paging);
                if (kptypes != null && kptypes.Count > 0)
                {

                    return Json(new CWResponse { Msg = "该名字已经存在，创建失败", Result = false }, JsonRequestBehavior.AllowGet);
                }

                KpType kptype = new KpType
                {
                    ID = Guid.NewGuid(),
                    Statues = 1,
                    type = type,
                    name = name,
                     projectname = projectname

                };
                Guid id = kptypeds.Create(kptype);
                CWResponse res = new CWResponse { Msg = (id == kptype.ID ? "创建成功" : "创建失败"), Result = (id == kptype.ID ? true : false) };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Result = false, Msg = "创建失败" }, JsonRequestBehavior.AllowGet);
            }
        }


        [HttpPost]
        public JsonResult EditKpType(FormCollection data)
        {
            try
            {
                var kptypeds = DataServiceContainer.Self.GetService<IKpType>();
                string name = data["name"];
                string type = data["type"];
                string projectname = data["projectname"];
                Guid id = Guid.Parse(data["id"]);
                PaginationInfo paging = new PaginationInfo();
                KpType kptype = kptypeds.Get(id);
                if (kptype != null)
                {
                    kptype.name = name;
                    kptype.type = type;
                    kptype.projectname = projectname;
                    bool isupdate = kptypeds.Update(kptype);
                    if (isupdate)
                    {
                        return Json(new CWResponse { Msg = "修改成功", Result = true }, JsonRequestBehavior.AllowGet);
                    }
                    return Json(new CWResponse { Msg = "修改失败", Result = false }, JsonRequestBehavior.AllowGet);
                }

                return Json(new CWResponse { Msg = "找不到数据，修改失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Result = false, Msg = "修改失败" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult DelKptype(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var kptypeds = DataServiceContainer.Self.GetService<IKpType>();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        kptypeds.Delete(new KpType { ID = Guid.Parse(id) });
                    }
                }

                CWResponse res = new CWResponse { Msg = "删除成功", Result = true };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Result = false, Msg = "删除失败" }, JsonRequestBehavior.AllowGet);
            }

        }

        public ActionResult PushMoneySetting()
        {
            return View();
        }

        public JsonResult GetPushMoneySettings(int? page)
        {
            try
            {
                var pushmoneysettingds = DataServiceContainer.Self.GetService<IPushMoneySetting>();

                PaginationInfo paging = new PaginationInfo();
                IList<PushMoneySetting> pushmoneysettings = pushmoneysettingds.Get(null, 1, 1, null, out paging);

                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = pushmoneysettings
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

        public JsonResult GetALLPushMoneySettings()
        {
            try
            {
                var pushmoneysettingds = DataServiceContainer.Self.GetService<IPushMoneySetting>();

                PaginationInfo paging = new PaginationInfo();
                IList<PushMoneySetting> pushmoneysettings = pushmoneysettingds.Get(null, 1, 0, null, out paging);

                var jsonobject = new
                {
                    page = paging.Current,
                    total = paging.TotalRecords,

                    rows = pushmoneysettings
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
        public JsonResult AddPushMoneySetting(FormCollection data)
        {
            try
            {
                var pushmoneysettingds = DataServiceContainer.Self.GetService<IPushMoneySetting>();
                string name = data["name"];
                string percentage = data["percentage"];
                PaginationInfo paging = new PaginationInfo();
                IList<PushMoneySetting> pushmoneysettings = pushmoneysettingds.Get(name, 1, 1, null, out paging);
                if (pushmoneysettings != null && pushmoneysettings.Count > 0)
                {

                    return Json(new CWResponse { Msg = "该名字已经存在，创建失败", Result = false }, JsonRequestBehavior.AllowGet);
                }

                PushMoneySetting kptype = new PushMoneySetting
                {
                    ID = Guid.NewGuid(),
                    Statues = 1,
                    percentage = percentage,
                    name = name

                };
                Guid id = pushmoneysettingds.Create(kptype);
                CWResponse res = new CWResponse { Msg = (id == kptype.ID ? "创建成功" : "创建失败"), Result = (id == kptype.ID ? true : false) };
                return Json(res, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Result = false, Msg = "创建失败" }, JsonRequestBehavior.AllowGet);
            }
        }


        [HttpPost]
        public JsonResult EditPushMoneySetting(FormCollection data)
        {
            try
            {
                var pushmoneysettingds = DataServiceContainer.Self.GetService<IPushMoneySetting>();
                string name = data["name"];
                string percentage = data["percentage"];
                Guid id = Guid.Parse(data["id"]);
                PaginationInfo paging = new PaginationInfo();
                PushMoneySetting pushmoneysetting = pushmoneysettingds.Get(id);
                if (pushmoneysetting != null)
                {
                    pushmoneysetting.name = name;
                    pushmoneysetting.percentage = percentage;
                    bool isupdate = pushmoneysettingds.Update(pushmoneysetting);
                    if (isupdate)
                    {
                        return Json(new CWResponse { Msg = "修改成功", Result = true }, JsonRequestBehavior.AllowGet);
                    }
                    return Json(new CWResponse { Msg = "修改失败", Result = false }, JsonRequestBehavior.AllowGet);
                }

                return Json(new CWResponse { Msg = "找不到数据，修改失败", Result = false }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Result = false, Msg = "修改失败" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult DelPushMoneySetting(string ids)
        {
            try
            {
                string[] idsarr = ids.Split(new char[] { ',' });
                var pushmoneysettingds = DataServiceContainer.Self.GetService<IPushMoneySetting>();
                foreach (string id in idsarr)
                {
                    if (!string.IsNullOrEmpty(id))
                    {
                        pushmoneysettingds.Delete(new PushMoneySetting { ID = Guid.Parse(id) });
                    }
                }

                CWResponse res = new CWResponse { Msg = "删除成功", Result = true };
                return Json(res, JsonRequestBehavior.AllowGet);
            }

            catch (Exception ex)
            {
                string errormsg = "Message:" + ex.Message + "| Source:" + ex.Source + "|StackTrace " + ex.StackTrace;
                WriteLog(errormsg, "error");
                return Json(new CWResponse { Result = false, Msg = "删除失败" }, JsonRequestBehavior.AllowGet);
            }

        }
    }
}
