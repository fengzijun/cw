using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CW.InterFace;
using CW.Core;
using CW.Model;

namespace CW.Web.Controllers
{
    public class HomeController : BaseController
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Welcome to ASP.NET MVC!";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ContentResult GetFunctionTree()
        {
          
           
            var menuds = DataServiceContainer.Self.GetService<IMenu>();
            var roleds = DataServiceContainer.Self.GetService<IRole>();
            var userds = DataServiceContainer.Self.GetService<IUser>();
            PaginationInfo paging =  new PaginationInfo();
            IList<user> users =   userds.Get(UserName, null, 1, 1, null, out paging);
            user tempuser = users[0];
            role temprole = roleds.Get(tempuser.role.ID);

            IList<menu> menus = menuds.GetMenu(temprole.menu);
            string str = "[";
            foreach (menu m in menus)
            {
                string nodestr = string.Empty;
                nodestr = "{text:'" + m.name + "',iconCls:'Folder',id:'" + m.ID.ToString() + "'";
                if (m.submenus != null && m.submenus.Count > 0)
                {
                    nodestr += ",children:[";
                    string childnodestr = string.Empty;
                    foreach (menu clildmenu in m.submenus)
                    {
                        childnodestr += "{text:'" + clildmenu.name + "',iconCls:'Applicationxp',id:'" + clildmenu.ID.ToString() + "',leaf:true,url:'" + clildmenu.url + "'},";
                    }
                    childnodestr = childnodestr.Substring(0, childnodestr.Length - 1);
                    nodestr += childnodestr + "]";
                }
                nodestr += "}";
                str += nodestr+",";
            }
            str = str.Substring(0, str.Length - 1);
            str += "]";

            return Content(str);
        }

        public ContentResult GetFunctionCheckTree()
        {
            var menuds = DataServiceContainer.Self.GetService<IMenu>();
            IList<menu> menus = menuds.GetAdminMenu();
            string str = "[";
            foreach (menu m in menus)
            {
                string nodestr = string.Empty;
                nodestr = "{text:'" + m.name + "',id:'" + m.ID.ToString() + "',checked:false";
                if (m.submenus != null && m.submenus.Count > 0)
                {
                    nodestr += ",children:[";
                    string childnodestr = string.Empty;
                    foreach (menu clildmenu in m.submenus)
                    {
                        childnodestr += "{text:'" + clildmenu.name + "',id:'" + clildmenu.ID.ToString() + "',leaf:true,checked:false,url:'" + clildmenu.url + "'},";
                    }
                    childnodestr = childnodestr.Substring(0, childnodestr.Length - 1);
                    nodestr += childnodestr + "]";
                }
                nodestr += "}";
                str += nodestr + ",";
            }
            str = str.Substring(0, str.Length - 1);
            str += "]";

            return Content(str);
        }

        public ContentResult GetUserFunctionCheckTree(string rolename)
        {
            var menuds = DataServiceContainer.Self.GetService<IMenu>();
            var roleds = DataServiceContainer.Self.GetService<IRole>();
            PaginationInfo paging = new PaginationInfo();
            IList<role> roles = roleds.Get(rolename, 1, 0, null, out paging);
            string str = string.Empty;
            if (roles != null && roles.Count > 0)
            {
                role r = roles[0];
                IList<menu> menus = menuds.GetAdminMenu();
                str = "[";
                foreach (menu m in menus)
                {
                    string nodestr = string.Empty;
                    nodestr = "{text:'" + m.name + "',id:'" + m.ID.ToString() + "',checked:" + (checkhasmenu(r.menu, m.ID.ToString()) ? "true" : "false");
                    if (m.submenus != null && m.submenus.Count > 0)
                    {
                        nodestr += ",children:[";
                        string childnodestr = string.Empty;
                        foreach (menu clildmenu in m.submenus)
                        {
                            childnodestr += "{text:'" + clildmenu.name + "',id:'" + clildmenu.ID.ToString() + "',leaf:true,checked:" + (checkhasmenu(r.menu, clildmenu.ID.ToString()) ? "true" : "false") + ",url:'" + clildmenu.url + "'},";
                        }
                        childnodestr = childnodestr.Substring(0, childnodestr.Length - 1);
                        nodestr += childnodestr + "]";
                    }
                    nodestr += "}";
                    str += nodestr + ",";
                }
                str = str.Substring(0, str.Length - 1);
                str += "]";
            }

            return Content(str);
        }

        private bool checkhasmenu(string menuids, string currentid)
        {
            string[] ids = menuids.Split(new char[] {',' });
            foreach (string id in ids)
            {
                if (!string.IsNullOrEmpty(id))
                {
                    if (id == currentid)
                        return true;
                }
            }

            return false;
        }
    }
}
