// -----------------------------------------------------------------------
// <copyright file="MoneyReport.cs" company="">
// TODO: Update copyright text.
// </copyright>
// -----------------------------------------------------------------------

namespace CW.Service
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using CW.Model;
    using CW.InterFace;
    using CW.Core;
    using System.Data;


    /// <summary>
    /// TODO: Update summary.
    /// </summary>
    public class MoneyReportService : BaseService, IMoneyReport
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for MoneyReportd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<MoneyReport> GetMoneyReports(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<MoneyReport> MoneyReports = new List<MoneyReport>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        MoneyReport MoneyReport = new MoneyReport()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            company = ParseStr(dr["company"]),
                            dnwqk = ParseDecimal(dr["dnwqk"]),
                            dysk = ParseDecimal(dr["dysk"]),
                            jyj = ParseDecimal(dr["jyj"]),
                            kpmoney = ParseDecimal(dr["kpmoney"]),
                            ml = ParseDecimal(dr["ml"]),
                            mlv = ParseStr(dr["mlv"]),
                            money = ParseDecimal(dr["money"]),
                            othermoney = ParseDecimal(dr["othermoney"]),
                            snwqk = ParseDecimal(dr["snwqk"]),
                            sqqk = ParseDecimal(dr["sqqk"]),
                            yefy = ParseDecimal(dr["yefy"]),
                            ssnk = ParseDecimal(dr["ssnk"]),
                            xj = ParseDecimal(dr["xj"]),
                            xj2 = ParseDecimal(dr["xj2"]),
                            yemoney = ParseDecimal(dr["yemoney"]),
                            yevnvarchar = ParseStr(dr["yevnvarchar"]),
                            ysmoney = ParseDecimal(dr["ysmoney"]), 
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        MoneyReports.Add(MoneyReport);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return MoneyReports;
                }
            }
        }

        IList<MoneyReportUser> GetMoneyReports2(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<MoneyReportUser> MoneyReports = new List<MoneyReportUser>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        MoneyReportUser MoneyReport = new MoneyReportUser()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            company = ParseStr(dr["company"]),
                            dnwqk = ParseDecimal(dr["dnwqk"]),
                            dysk = ParseDecimal(dr["dysk"]),
                            jyj = ParseDecimal(dr["jyj"]),
                            kpmoney = ParseDecimal(dr["kpmoney"]),
                            ml = ParseDecimal(dr["ml"]),
                            username = ParseStr(dr["username"]),
                            mlv = ParseStr(dr["mlv"]),
                            money = ParseDecimal(dr["money"]),
                            othermoney = ParseDecimal(dr["othermoney"]),
                            snwqk = ParseDecimal(dr["snwqk"]),
                            sqqk = ParseDecimal(dr["sqqk"]),
                            yefy = ParseDecimal(dr["yefy"]),
                            ssnk = ParseDecimal(dr["ssnk"]),
                            xj = ParseDecimal(dr["xj"]),
                            xj2 = ParseDecimal(dr["xj2"]),
                            yemoney = ParseDecimal(dr["yemoney"]),
                            yevnvarchar = ParseStr(dr["yevnvarchar"]),
                            ysmoney = ParseDecimal(dr["ysmoney"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),

                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        MoneyReports.Add(MoneyReport);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return MoneyReports;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new MoneyReport
        /// </summary>
        /// <param name="newMoneyReport">new MoneyReport</param>
        /// <returns>new MoneyReport id</returns>
        public Guid Create(MoneyReport newMoneyReport)
        {
            string sql = string.Format("EXEC sp_MoneyReport_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18},{19},{20},{21},{22}"
                                        , ToQuote(newMoneyReport.ID)
                                        , ToQuote(newMoneyReport.company)
                                        , newMoneyReport.money.HasValue?ToQuote(newMoneyReport.money.Value):"NULL"
                                        , newMoneyReport.jyj.HasValue ? ToQuote(newMoneyReport.jyj.Value) : "NULL"
                                        , newMoneyReport.ysmoney.HasValue ? ToQuote(newMoneyReport.ysmoney.Value) : "NULL"
                                        , newMoneyReport.ml.HasValue ? ToQuote(newMoneyReport.ml.Value) : "NULL"
                                        , ToQuote(newMoneyReport.mlv)
                                        , newMoneyReport.othermoney.HasValue ? ToQuote(newMoneyReport.othermoney.Value) : "NULL"
                                        , newMoneyReport.yemoney.HasValue ? ToQuote(newMoneyReport.yemoney.Value) : "NULL"
                                        , ToQuote(newMoneyReport.yevnvarchar)
                                        , newMoneyReport.dysk.HasValue ? ToQuote(newMoneyReport.dysk.Value) : "NULL"
                                        , newMoneyReport.sqqk.HasValue ? ToQuote(newMoneyReport.sqqk.Value) : "NULL"
                                        , newMoneyReport.ssnk.HasValue ? ToQuote(newMoneyReport.ssnk.Value) : "NULL"
                                        , newMoneyReport.xj.HasValue ? ToQuote(newMoneyReport.xj.Value) : "NULL"
                                        , newMoneyReport.dnwqk.HasValue ? ToQuote(newMoneyReport.dnwqk.Value) : "NULL"
                                        , newMoneyReport.snwqk.HasValue ? ToQuote(newMoneyReport.snwqk.Value) : "NULL"
                                        , newMoneyReport.xj2.HasValue ? ToQuote(newMoneyReport.xj2.Value) : "NULL"
                                        , newMoneyReport.kpmoney.HasValue ? ToQuote(newMoneyReport.kpmoney.Value) : "NULL"
                                      
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newMoneyReport.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newMoneyReport.ID;
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
        /// Update an existing MoneyReport
        /// </summary>
        /// <param name="thisMoneyReport">MoneyReport</param>
        /// <returns>bool</returns>
        public bool Update(MoneyReport newMoneyReport)
        {
            string sql = string.Format("EXEC sp_MoneyReport_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18},{19},{20}"
                                      , ToQuote(newMoneyReport.ID)
                                        , ToQuote(newMoneyReport.company)
                                        , newMoneyReport.money.HasValue ? ToQuote(newMoneyReport.money.Value) : "NULL"
                                        , newMoneyReport.jyj.HasValue ? ToQuote(newMoneyReport.jyj.Value) : "NULL"
                                        , newMoneyReport.ysmoney.HasValue ? ToQuote(newMoneyReport.ysmoney.Value) : "NULL"
                                        , newMoneyReport.ml.HasValue ? ToQuote(newMoneyReport.ml.Value) : "NULL"
                                        , ToQuote(newMoneyReport.mlv)
                                        , newMoneyReport.othermoney.HasValue ? ToQuote(newMoneyReport.othermoney.Value) : "NULL"
                                        , newMoneyReport.yemoney.HasValue ? ToQuote(newMoneyReport.yemoney.Value) : "NULL"
                                        , ToQuote(newMoneyReport.yevnvarchar)
                                        , newMoneyReport.dysk.HasValue ? ToQuote(newMoneyReport.dysk.Value) : "NULL"
                                        , newMoneyReport.sqqk.HasValue ? ToQuote(newMoneyReport.sqqk.Value) : "NULL"
                                        , newMoneyReport.ssnk.HasValue ? ToQuote(newMoneyReport.ssnk.Value) : "NULL"
                                        , newMoneyReport.xj.HasValue ? ToQuote(newMoneyReport.xj.Value) : "NULL"
                                        , newMoneyReport.dnwqk.HasValue ? ToQuote(newMoneyReport.dnwqk.Value) : "NULL"
                                        , newMoneyReport.snwqk.HasValue ? ToQuote(newMoneyReport.snwqk.Value) : "NULL"
                                        , newMoneyReport.xj2.HasValue ? ToQuote(newMoneyReport.xj2.Value) : "NULL"
                                        , newMoneyReport.kpmoney.HasValue ? ToQuote(newMoneyReport.kpmoney.Value) : "NULL"

                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newMoneyReport.Statues)
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
        /// Delete an existing MoneyReport
        /// </summary>
        /// <param name="thisMoneyReport">MoneyReport</param>
        /// <returns>bool</returns>
        public bool Delete(MoneyReport thisMoneyReport)
        {
            string sql = string.Format("EXEC sp_MoneyReport_d {0}"
                                       , ToQuote(thisMoneyReport.ID)


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
        /// Check if a MoneyReport already exists
        /// </summary>
        /// <param name="name">MoneyReport Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a MoneyReport by id
        /// </summary>
        /// <param name="id">MoneyReport id</param>
        /// <returns>MoneyReport</returns>
        public MoneyReport Get(Guid id)
        {
            string sql = string.Format("EXEC sp_MoneyReport_g {0},{1},{2},{3}"
                             , ToQuote(id)
                             , "NULL"
                             , "NULL"
                             , "NULL"
 


                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<MoneyReport> MoneyReports = GetMoneyReports(sql, 0, null, out paing);
                if (MoneyReports.Count > 0)
                    return MoneyReports[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all MoneyReports
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="MoneyReport">current MoneyReport</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<MoneyReport> Get( int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_MoneyReport_g {0},{1},{2},{3},{4},{5}"
                            , "NULL"
          
                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<MoneyReport> MoneyReports = GetMoneyReports(sql, Page, null, out paing);

                return MoneyReports;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }


        public IList<MoneyReport> GetCompany(string time, out PaginationInfo paing)
        {
            string sql = string.Format("EXEC sp_yyreport_g_company {0}"
                            , ToQuote(time)
                           

                         );

            try
            {

                IList<MoneyReport> MoneyReports = GetMoneyReports(sql, 1, null, out paing);

                return MoneyReports;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        public IList<MoneyReportUser> GetUser(string time, out PaginationInfo paing)
        {
            string sql = string.Format("EXEC sp_yyreport_g_user {0}"
                            , ToQuote(time)


                         );

            try
            {

                IList<MoneyReportUser> MoneyReports = GetMoneyReports2(sql, 1, null, out paing);

                return MoneyReports;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        #endregion
    }
}
