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
    public class userservice:BaseService,IUser
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for Userd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<user> GetUsers(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<user> users = new List<user>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        user user = new user()
                        {
                            ID = ParseInt(dr["id"].ToString()),
                            lastlogintime = ParseNDate(dr["lastlogintime"]),
                            ip = ParseStr(dr["ip"]),
                            username = ParseStr(dr["username"]),
                            role = new role{ ID = int.Parse(dr["roleid"].ToString())},
                            password = ParseStr(dr["password"]),
                            Company = ParseStr(dr["Company"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        users.Add(user);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return users;
                }
            }
        }

        #endregion
        
        #region * CRUD *

        /// <summary>
        /// Create a new user
        /// </summary>
        /// <param name="newuser">new user</param>
        /// <returns>new user id</returns>
        public bool Create(user newuser)
        {
            string sql = string.Format("EXEC sp_user_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10}"
                                        , ToQuote(newuser.username)
                                        , ToQuote(newuser.password)
                                        , ToQuote(newuser.role.ID)
                                        , ToQuote(newuser.Company)
                                        , ToQuote(newuser.ip)
                                        , newuser.lastlogintime.HasValue?ToQuote(newuser.lastlogintime.Value):"null"
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newuser.Statues)

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
        /// Update an existing user
        /// </summary>
        /// <param name="thisuser">user</param>
        /// <returns>bool</returns>
        public bool Update(user thisuser)
        {
            string sql = string.Format("EXEC sp_user_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9}"
                                        , ToQuote(thisuser.ID)
                                        , ToQuote(thisuser.username)
                                        , ToQuote(thisuser.password)
                                        , ToQuote(thisuser.role.ID)
                                        , ToQuote(thisuser.Company)
                                        , ToQuote(thisuser.ip)
                                        , thisuser.lastlogintime.HasValue ? ToQuote(thisuser.lastlogintime.Value) : "null"
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(thisuser.Statues)

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
        /// Delete an existing user
        /// </summary>
        /// <param name="thisuser">user</param>
        /// <returns>bool</returns>
        public bool Delete(user thisuser)
        {
            string sql = string.Format("EXEC sp_user_d {0}"
                                       , ToQuote(thisuser.ID)


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
        /// Check if a user already exists
        /// </summary>
        /// <param name="name">user Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a user by id
        /// </summary>
        /// <param name="id">user id</param>
        /// <returns>user</returns>
        public user Get(int id)
        {
            string sql = string.Format("EXEC sp_User_g {0},{1},{2},{3},{4},{5}"
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
                IList<user> Users = GetUsers(sql, 0, null, out paing);
                if (Users.Count > 0)
                    return Users[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all users
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="user">current user</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<user> Get(string username,int? roleid, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_User_g {0},{1},{2},{3},{4},{5}"
                            , "NULL"
                            , ToQuote(username)
                            , roleid.HasValue?ToQuote(roleid):"NULL"
                            , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                            , ToQuote(Page)
                            , ToQuote(sortKey)


                         );

            try
            {
               
                IList<user> Users = GetUsers(sql, Page, null, out paing);

                return Users;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
