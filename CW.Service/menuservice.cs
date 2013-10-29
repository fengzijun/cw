using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.InterFace;
using CW.Core;
using System.Data;

namespace CW.Service
{
    public class menmenuvice:BaseService,IMenu
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for menud by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<menu> Getmenus(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<menu> menus = new List<menu>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        menu menu = new menu()
                        {
                            ID = ParseInt(dr["id"].ToString()),
                            name = ParseStr(dr["name"]),
                            url = ParseStr(dr["url"]),
                            parentid = ParseNInt(dr["parentid"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        menus.Add(menu);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return menus;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new menu
        /// </summary>
        /// <param name="newmenu">new menu</param>
        /// <returns>new menu id</returns>
        public bool Create(menu newmenu)
        {
            string sql = string.Format("EXEC sp_menu_c {0},{1},{2},{3},{4},{5}"
                                        , ToQuote(newmenu.name)
                                        , ToQuote(newmenu.url)
                                       
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newmenu.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return true;
                }
                else
                {
                    throw new Exception("SQL execution failed");
                }

            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Update an existing menu
        /// </summary>
        /// <param name="thismenu">menu</param>
        /// <returns>bool</returns>
        public bool Update(menu thismenu)
        {
            string sql = string.Format("EXEC sp_menu_u {0},{1},{2},{3}"
                                        , ToQuote(thismenu.name)
                                        , ToQuote(thismenu.url)


                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(thismenu.Statues)
                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount >= 1)
                {
                    return true;
                }
                else
                {
                    throw new Exception("SQL execution failed");
                }

            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Delete an existing menu
        /// </summary>
        /// <param name="thismenu">menu</param>
        /// <returns>bool</returns>
        public bool Delete(menu thismenu)
        {
            string sql = string.Format("EXEC sp_menu_d {0}"
                                       , ToQuote(thismenu.ID)


                                   );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount >= 1)
                {
                    return true;
                }
                else
                {
                    throw new Exception("SQL execution failed");
                }

            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }


        /// <summary>
        /// Check if a menu already exists
        /// </summary>
        /// <param name="name">menu Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a menu by id
        /// </summary>
        /// <param name="id">menu id</param>
        /// <returns>menu</returns>
        public menu Get(int id)
        {
            string sql = string.Format("EXEC sp_menu_g {0},{1},{2},{3},{4}"
                             , ToQuote(id)
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"


                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<menu> menus = Getmenus(sql, 0, null, out paing);
                if (menus.Count > 0)
                    return menus[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all menus
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="menu">current menu</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<menu> Get(string menuname,int? parentid, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_menu_g {0},{1},{2},{3},{4},{5}"
                            , "NULL"
                            , ToQuote(menuname)
                            , parentid.HasValue ? ToQuote(parentid) : "NULL"
                            , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                            , ToQuote(Page)
                            , ToQuote(sortKey)


                         );

            try
            {

                IList<menu> menus = Getmenus(sql, Page, null, out paing);

                return menus;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        public IList<menu> GetMenu(string roleidstr)
        {
            PaginationInfo paing = new PaginationInfo();

            IList<menu> menus = Get(null, 0, 1, 0, null, out paing);
            foreach (menu m in menus)
            {
                m.submenus = Get(null, m.ID, 1, 0, null, out paing);
            }

            IList<menu> menus2 = new List<menu>();
            for (int i = 0; i < menus.Count; i++)
            {
                if (checkinroleid(roleidstr, menus[i].ID.ToString()))
                {
                    menu tempmenu = new menu { ID = menus[i].ID, submenus = null, name = menus[i].name, parentid = menus[i].parentid, Statues = 1, url = menus[i].url };

                    if (menus[i].submenus != null)
                    {
                        for (int y = 0; y < menus[i].submenus.Count; y++)
                        {
                            menu childmenu = new menu { ID = menus[i].submenus[y].ID, submenus = null, name = menus[i].submenus[y].name, parentid = menus[i].submenus[y].parentid, Statues = 1, url = menus[i].submenus[y].url };
                            if (checkinroleid(roleidstr, menus[i].submenus[y].ID.ToString()))
                            {
                                if (tempmenu.submenus == null)
                                {
                                    tempmenu.submenus = new List<menu>();
                                }

                                tempmenu.submenus.Add(childmenu);
                            }
                        }
                    }

                    menus2.Add(tempmenu);
                }

                
            }

           
            return menus2;
        }

        public IList<menu> GetAdminMenu()
        {
            PaginationInfo paing = new PaginationInfo();

            IList<menu> menus = Get(null, 0, 1, 0, null, out paing);
            foreach (menu m in menus)
            {
                m.submenus = Get(null, m.ID, 1, 0, null, out paing);
            }

            return menus;
        }

        public bool checkinroleid(string roleidstr, string id)
        {
            string[] idstr = roleidstr.Split(new char[] {',' });
            foreach (string s in idstr)
            {
                if (!string.IsNullOrEmpty(s))
                {
                    if (s == id)
                    {
                        return true;
                    }
                }
            }

            return false;
        }

        #endregion
    }
}
