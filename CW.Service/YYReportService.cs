// -----------------------------------------------------------------------
// <copyright file="YYReportService.cs" company="">
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
    public class YYReportService : BaseService, IYYReport
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for YYReportd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<YYReport> GetYYReports(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<YYReport> YYReports = new List<YYReport>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        YYReport YYReport = new YYReport()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            company = ParseStr(dr["company"]),
                            kpce = ParseNDecimal(dr["kpce"]),
                            kpmoney = ParseNDecimal(dr["kpmoney"]),
                            lr = ParseStr(dr["lr"]),
                            money = ParseNDecimal(dr["money"]),
                            othermoney = ParseNDecimal(dr["othermoney"]),
                            outmoney = ParseNDecimal(dr["outmoney"]),
                            skmoney = ParseNDecimal(dr["skmoney"]),
                            ysmoney = ParseNDecimal(dr["ysmoney"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        YYReports.Add(YYReport);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return YYReports;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new YYReport
        /// </summary>
        /// <param name="newYYReport">new YYReport</param>
        /// <returns>new YYReport id</returns>
        public Guid Create(YYReport newYYReport)
        {
            string sql = string.Format("EXEC sp_YYReport_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14}"
                                        , ToQuote(newYYReport.ID)
                                        , ToQuote(newYYReport.company)
                                        , newYYReport.money.HasValue? ToQuote(newYYReport.money.Value):"NULL"
                                        , newYYReport.othermoney.HasValue ? ToQuote(newYYReport.othermoney.Value) : "NULL"
                                        , newYYReport.outmoney.HasValue ? ToQuote(newYYReport.outmoney.Value) : "NULL"
                                        , ToQuote(newYYReport.lr)
                                        , newYYReport.skmoney.HasValue ? ToQuote(newYYReport.skmoney.Value) : "NULL"
                                        , newYYReport.ysmoney.HasValue ? ToQuote(newYYReport.ysmoney.Value) : "NULL"
                                        , newYYReport.kpmoney.HasValue ? ToQuote(newYYReport.kpmoney.Value) : "NULL"
                                        , newYYReport.kpce.HasValue ? ToQuote(newYYReport.kpce.Value) : "NULL"
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newYYReport.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newYYReport.ID;
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
        /// Update an existing YYReport
        /// </summary>
        /// <param name="thisYYReport">YYReport</param>
        /// <returns>bool</returns>
        public bool Update(YYReport newYYReport)
        {
            string sql = string.Format("EXEC sp_YYReport_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12}"
                                        , ToQuote(newYYReport.ID)
                                        , ToQuote(newYYReport.company)
                                        , newYYReport.money.HasValue ? ToQuote(newYYReport.money.Value) : "NULL"
                                        , newYYReport.othermoney.HasValue ? ToQuote(newYYReport.othermoney.Value) : "NULL"
                                        , newYYReport.outmoney.HasValue ? ToQuote(newYYReport.outmoney.Value) : "NULL"
                                        , ToQuote(newYYReport.lr)
                                        , newYYReport.skmoney.HasValue ? ToQuote(newYYReport.skmoney.Value) : "NULL"
                                        , newYYReport.ysmoney.HasValue ? ToQuote(newYYReport.ysmoney.Value) : "NULL"
                                        , newYYReport.kpmoney.HasValue ? ToQuote(newYYReport.kpmoney.Value) : "NULL"
                                        , newYYReport.kpce.HasValue ? ToQuote(newYYReport.kpce.Value) : "NULL"
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newYYReport.Statues)
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
        /// Delete an existing YYReport
        /// </summary>
        /// <param name="thisYYReport">YYReport</param>
        /// <returns>bool</returns>
        public bool Delete(YYReport thisYYReport)
        {
            string sql = string.Format("EXEC sp_YYReport_d {0}"
                                       , ToQuote(thisYYReport.ID)


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
        /// Check if a YYReport already exists
        /// </summary>
        /// <param name="name">YYReport Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a YYReport by id
        /// </summary>
        /// <param name="id">YYReport id</param>
        /// <returns>YYReport</returns>
        public YYReport Get(Guid id)
        {
            string sql = string.Format("EXEC sp_YYReport_g {0},{1},{2},{3},"
                             , ToQuote(id)
                             , "NULL"
                             , "NULL"
                             , "NULL"



                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<YYReport> YYReports = GetYYReports(sql, 0, null, out paing);
                if (YYReports.Count > 0)
                    return YYReports[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all YYReports
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="YYReport">current YYReport</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<YYReport> Get(int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_YYReport_g {0},{1},{2},{3}"
                            , "NULL"
 
                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<YYReport> YYReports = GetYYReports(sql, Page, null, out paing);

                return YYReports;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        public IList<YYReport> Get(string startime, string endtime, out PaginationInfo paing)
        {
            string sql = string.Format("EXEC sp_MoneyReport_g2 {0},{1}"
                            , ToQuote(startime)
                            , ToQuote(endtime)

                         );

            try
            {

                IList<YYReport> MoneyReports = GetYYReports(sql, 1, null, out paing);

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
