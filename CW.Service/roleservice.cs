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
    public class roleservice:BaseService,IRole
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for Userd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<role> GetRoles(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<role> roles = new List<role>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        role role = new role()
                        {
                            ID = ParseInt(dr["id"].ToString()),
                            menu = ParseStr(dr["menu"]),
                            rolename = ParseStr(dr["rolename"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        roles.Add(role);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return roles;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new role
        /// </summary>
        /// <param name="newrole">new role</param>
        /// <returns>new role id</returns>
        public bool Create(role newrole)
        {
            string sql = string.Format("EXEC sp_role_c {0},{1},{2},{3},{4},{5},{6}"
                                        , ToQuote(newrole.rolename)
                                        ,  ToQuote(newrole.menu)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newrole.Statues)

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
        /// Update an existing role
        /// </summary>
        /// <param name="thisrole">role</param>
        /// <returns>bool</returns>
        public bool Update(role thisrole)
        {
            string sql = string.Format("EXEC sp_role_u {0},{1},{2},{3},{4},{5}"
                                      , ToQuote(thisrole.ID)
                                        , ToQuote(thisrole.rolename)
                                        , ToQuote(thisrole.menu)
                                        
                                        , ToQuote(DateTime.Now)
                                       , ToQuote(CurrentUserName)
                                        , ToQuote(thisrole.Statues)

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
        /// Delete an existing role
        /// </summary>
        /// <param name="thisrole">role</param>
        /// <returns>bool</returns>
        public bool Delete(role thisrole)
        {
            string sql = string.Format("EXEC sp_role_d {0}"
                                       , ToQuote(thisrole.ID)


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
        /// Check if a role already exists
        /// </summary>
        /// <param name="name">role Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a role by id
        /// </summary>
        /// <param name="id">role id</param>
        /// <returns>role</returns>
        public role Get(int id)
        {
            string sql = string.Format("EXEC sp_role_g {0},{1},{2},{3},{4}"
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
                IList<role> roles = GetRoles(sql, 0, null, out paing);
                if (roles.Count > 0)
                    return roles[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all roles
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="role">current role</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
       public IList<role> Get(string rolename, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_role_g {0},{1},{2},{3},{4}"
                            , "NULL"
                            , ToQuote(rolename)
                            , statues.HasValue?ToQuote(statues.Value):"NULL"
                            , ToQuote(Page)
                            , ToQuote(sortKey)


                         );

            try
            {

                IList<role> roles = GetRoles(sql, Page, null, out paing);

                return roles;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
