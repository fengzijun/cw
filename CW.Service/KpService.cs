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
    public class KpService : BaseService, IKp
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for Kpd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<Kp> GetKps(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<Kp> Kps = new List<Kp>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        Kp Kp = new Kp()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            bcmoney = ParseNDecimal(dr["bcmoney"]),
                            orderid = ParseStr(dr["orderid"]),
                            bjsj = ParseNDecimal(dr["bjsj"]),
                            company = ParseStr(dr["company"]),
                            kptt = ParseStr(dr["kptt"]),
                            managercheck = ParseNBool(dr["managercheck"]),
                            mangeridea = ParseStr(dr["manageridea"]),
                            mangerreason = ParseStr(dr["managerreason"]),
                            money = ParseNDecimal(dr["money"]),
                            other = ParseStr(dr["other"]),
                            project = ParseStr(dr["project"]),
                            remark = ParseStr(dr["remark"]),
                            topmanageridea = ParseStr(dr["topmanageridea"]),
                            topmanagerreason = ParseStr(dr["topmanagerreason"]),
                            customername = ParseStr(dr["customername"]),
                            customershortname = ParseStr(dr["customershortname"]),
                            ywuser = ParseStr(dr["ywuser"]),
                            type = ParseStr(dr["type"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        Kps.Add(Kp);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return Kps;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new Kp
        /// </summary>
        /// <param name="newKp">new Kp</param>
        /// <returns>new Kp id</returns>
        public Guid Create(Kp newKp)
        {
            string sql = string.Format("EXEC sp_Kp_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18},{19},{20},{21},{22},{23}"
                                        , ToQuote(newKp.ID)
                                        , ToQuote(newKp.orderid)
                                        , ToQuote(newKp.kptt)
                                        , ToQuote(newKp.type)
                                        , ToQuote(newKp.project)
                                        , newKp.money.HasValue?ToQuote(newKp.money):"NULL"
                                        , newKp.bcmoney.HasValue?ToQuote(newKp.bcmoney):"NULL"
                                        , ToQuote(newKp.company)
                                        , newKp.bjsj.HasValue?ToQuote(newKp.bjsj.Value):"NULL"
                                        , ToQuote(newKp.remark)
                                        , ToQuote(newKp.other)
                                        , ToQuote(newKp.ywuser)
                                        , ToQuote(newKp.mangeridea)
                                        , ToQuote(newKp.mangerreason)
                                        , ToQuote(newKp.topmanageridea)
                                        , ToQuote(newKp.topmanagerreason)
                                        , newKp.managercheck.HasValue?ToQuote(newKp.managercheck.Value):"NULL"
                                        , ToQuote(newKp.customername)
                                        , ToQuote(newKp.customershortname)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newKp.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newKp.ID;
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
        /// Update an existing Kp
        /// </summary>
        /// <param name="thisKp">Kp</param>
        /// <returns>bool</returns>
        public bool Update(Kp newKp)
        {
            string sql = string.Format("EXEC sp_Kp_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18},{19},{20},{21}"
                                        , ToQuote(newKp.ID)
                                        , ToQuote(newKp.orderid)
                                        , ToQuote(newKp.kptt)
                                        , ToQuote(newKp.type)
                                        , ToQuote(newKp.project)
                                        , newKp.money.HasValue ? ToQuote(newKp.money.Value) : "NULL"
                                        , newKp.bcmoney.HasValue ? ToQuote(newKp.bcmoney.Value) : "NULL"
                                        , ToQuote(newKp.company)
                                        , newKp.bjsj.HasValue ? ToQuote(newKp.bjsj.Value) : "NULL"
                                        , ToQuote(newKp.remark)
                                        , ToQuote(newKp.other)
                                        , ToQuote(newKp.ywuser)
                                        , ToQuote(newKp.mangeridea)
                                        , ToQuote(newKp.mangerreason)
                                        , ToQuote(newKp.topmanageridea)
                                        , ToQuote(newKp.topmanagerreason)
                                        , newKp.managercheck.HasValue ? ToQuote(newKp.managercheck.Value) : "NULL"
                                        , ToQuote(newKp.customername)
                                        , ToQuote(newKp.customershortname)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newKp.Statues)

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
        /// Delete an existing Kp
        /// </summary>
        /// <param name="thisKp">Kp</param>
        /// <returns>bool</returns>
        public bool Delete(Kp thisKp)
        {
            string sql = string.Format("EXEC sp_Kp_d {0}"
                                       , ToQuote(thisKp.ID)


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
        /// Check if a Kp already exists
        /// </summary>
        /// <param name="name">Kp Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a Kp by id
        /// </summary>
        /// <param name="id">Kp id</param>
        /// <returns>Kp</returns>
        public Kp Get(Guid id)
        {
            string sql = string.Format("EXEC sp_Kp_g {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11}"
                             , ToQuote(id)
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"
                              , "NULL"
                             , "NULL"
                              , "NULL"
                             , "NULL"
                             , "NULL"
                             ,"NULL"
                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<Kp> Kps = GetKps(sql, 0, null, out paing);
                if (Kps.Count > 0)
                    return Kps[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all Kps
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="Kp">current Kp</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
       public IList<Kp> Get(string username,string orderno, string kptt, string type, string project, string company, string ywuser, bool? managercheck, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_Kp_g {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11}"
                            , "NULL"
                             , ToQuote(orderno)
                             , ToQuote(kptt)
                             , ToQuote(username)
                             , ToQuote(type)
                             , ToQuote(project)
                             , ToQuote(company)
                             , ToQuote(ywuser)
                             , managercheck.HasValue ? ToQuote(managercheck.Value) : "NULL"
                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<Kp> Kps = GetKps(sql, Page, null, out paing);

                return Kps;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }


       public IList<Kp> GetManagerKps(string orderno, string kptt, string type, string project, string company, string ywuser, bool? managercheck, int? statues, int Page, string sortKey,
                  out PaginationInfo paing, bool isfuzzy = false)
       {
           string sql = string.Format("EXEC sp_kp_g_manger {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10}"
                           , "NULL"
                            , ToQuote(orderno)
                            , ToQuote(kptt)
                            , ToQuote(type)
                            , ToQuote(project)
                            , ToQuote(company)
                            , ToQuote(ywuser)
                            , managercheck.HasValue ? ToQuote(managercheck.Value) : "NULL"
                            , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                            , ToQuote(Page)
                            , ToQuote(sortKey)



                        );

           try
           {

               IList<Kp> Kps = GetKps(sql, Page, null, out paing);

               return Kps;
           }
           catch (Exception ex)
           {
               throw new Exception("SQL execution failed", ex);
           }
       }

       public IList<Kp> GetTopManagerKps(string orderno, string kptt, string type, string project, string company, string ywuser, bool? managercheck, int? statues, int Page, string sortKey,
               out PaginationInfo paing, bool isfuzzy = false)
       {
           string sql = string.Format("EXEC sp_kp_g_topmanger {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10}"
                           , "NULL"
                            , ToQuote(orderno)
                            , ToQuote(kptt)
                            , ToQuote(type)
                            , ToQuote(project)
                            , ToQuote(company)
                            , ToQuote(ywuser)
                            , managercheck.HasValue ? ToQuote(managercheck.Value) : "NULL"
                            , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                            , ToQuote(Page)
                            , ToQuote(sortKey)



                        );

           try
           {

               IList<Kp> Kps = GetKps(sql, Page, null, out paing);

               return Kps;
           }
           catch (Exception ex)
           {
               throw new Exception("SQL execution failed", ex);
           }
       }

        #endregion
    }
}
