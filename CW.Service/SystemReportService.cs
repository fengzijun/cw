// -----------------------------------------------------------------------
// <copyright file="SystemReportService.cs" company="">
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
    public class SystemReportService : BaseService, ISystemReport
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for SystemReportd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<SystemReport> GetSystemReports(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<SystemReport> SystemReports = new List<SystemReport>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        SystemReport SystemReport = new SystemReport()
                        {
                            ID = new Guid(dr["id"].ToString()),
                             bg = ParseNDecimal(dr["bg"]),
                            bgf = ParseNDecimal(dr["bgf"]),
                            bgzc = ParseNDecimal(dr["bgzc"]),
                            bzf = ParseNDecimal(dr["bzf"]),
                            hj = ParseNDecimal(dr["hj"]),
                            hj2 = ParseNDecimal(dr["hj2"]),
                            lxsz = ParseNDecimal(dr["lxsz"]),
                            mtdl = ParseNDecimal(dr["mtdl"]),
                            mtdl2 = ParseNDecimal(dr["mtdl2"]),
                            other = ParseNDecimal(dr["other"]),
                            other2 = ParseNDecimal(dr["other2"]),
                            cd = ParseNDecimal(dr["cd"]),
                            cd2 = ParseNDecimal(dr["cd2"]),
                            cdbz = ParseNDecimal(dr["cdbz"]),
                            qysds = ParseNDecimal(dr["qysds"]),
                            sbf = ParseNDecimal(dr["sbf"]),
                            wl = ParseNDecimal(dr["wl"]),
                            xj = ParseNDecimal(dr["xj"]),
                            xj2 = ParseNDecimal(dr["xj2"]),
                            xj3 = ParseNDecimal(dr["xj3"]),
                            xj4 = ParseNDecimal(dr["xj4"]),
                            xj5 = ParseNDecimal(dr["xj5"]),
                            yd = ParseNDecimal(dr["yd"]),
                            ydf = ParseNDecimal(dr["ydf"]),
                            yhsxf = ParseNDecimal(dr["yhsxf"]),
                            yw = ParseNDecimal(dr["yw"]),
                            ywf = ParseNDecimal(dr["ywf"]),
                            yxs = ParseNDecimal(dr["yxs"]),
                            yymoney = ParseNDecimal(dr["yymoney"]),
                            zd = ParseNDecimal(dr["zd"]),
                            zhj = ParseNDecimal(dr["zhj"]),
                            cdbz2 = ParseNDecimal(dr["cdbz2"]),
                            cl = ParseNDecimal(dr["cl"]),
                            clf = ParseNDecimal(dr["clf"]),
                            company = ParseStr(dr["company"]),
                            fl = ParseNDecimal(dr["fl"]),
                            fzwy = ParseNDecimal(dr["fzwy"]),
                            gzjjl = ParseNDecimal(dr["gzjjl"]),
                            gzjl = ParseNDecimal(dr["gzjl"]),
                            hd = ParseNDecimal(dr["hd"]),
                            hd2 = ParseNDecimal(dr["hd2"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        SystemReports.Add(SystemReport);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return SystemReports;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new SystemReport
        /// </summary>
        /// <param name="newSystemReport">new SystemReport</param>
        /// <returns>new SystemReport id</returns>
        public Guid Create(SystemReport newSystemReport)
        {
            string sql = string.Format("EXEC sp_SystemReport_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18},{19},{20},{21},{22},{23},{24},{25},{26},{27},{28},{29},{30},{31},{32},{33},{34},{35},{36},{37},{38},{39},{40},{41},{42},{43},{44},{45},{46}"
                                        , ToQuote(newSystemReport.ID)
                                        , ToQuote(newSystemReport.company)
                                        , newSystemReport.yymoney.HasValue ? ToQuote(newSystemReport.yymoney.Value) : "NULL"
                                        , newSystemReport.gzjl.HasValue ? ToQuote(newSystemReport.gzjl.Value) : "NULL"
                                        , newSystemReport.fl.HasValue ? ToQuote(newSystemReport.fl.Value) : "NULL"
                                        , newSystemReport.cl.HasValue ? ToQuote(newSystemReport.cl.Value) : "NULL"
                                        , newSystemReport.bg.HasValue ? ToQuote(newSystemReport.bg.Value) : "NULL"
                                        , newSystemReport.fzwy.HasValue ? ToQuote(newSystemReport.fzwy.Value) : "NULL"
                                        , newSystemReport.yd.HasValue ? ToQuote(newSystemReport.yd.Value) : "NULL"
                                        , newSystemReport.yw.HasValue ? ToQuote(newSystemReport.yw.Value) : "NULL"
                                        , newSystemReport.zd.HasValue ? ToQuote(newSystemReport.zd.Value) : "NULL"
                                        , newSystemReport.bgzc.HasValue ? ToQuote(newSystemReport.bgzc.Value) : "NULL"
                                        , newSystemReport.wl.HasValue ? ToQuote(newSystemReport.wl.Value) : "NULL"
                                        , newSystemReport.other.HasValue ? ToQuote(newSystemReport.other.Value) : "NULL"
                                        , newSystemReport.xj.HasValue ? ToQuote(newSystemReport.xj.Value) : "NULL"
                                        , newSystemReport.hd.HasValue ? ToQuote(newSystemReport.hd.Value) : "NULL"
                                        , newSystemReport.cd.HasValue ? ToQuote(newSystemReport.cd.Value) : "NULL"
                                        , newSystemReport.cdbz.HasValue ? ToQuote(newSystemReport.cdbz.Value) : "NULL"
                                        , newSystemReport.mtdl.HasValue ? ToQuote(newSystemReport.mtdl.Value) : "NULL"
                                        , newSystemReport.xj2.HasValue ? ToQuote(newSystemReport.xj2.Value) : "NULL"
                                        , newSystemReport.hj.HasValue ? ToQuote(newSystemReport.hj.Value) : "NULL"
                                        , newSystemReport.gzjjl.HasValue ? ToQuote(newSystemReport.gzjjl.Value) : "NULL"
                                        , newSystemReport.clf.HasValue ? ToQuote(newSystemReport.clf.Value) : "NULL"
                                        , newSystemReport.bgf.HasValue ? ToQuote(newSystemReport.bgf.Value) : "NULL"
                                        , newSystemReport.ywf.HasValue ? ToQuote(newSystemReport.ywf.Value) : "NULL"
                                        , newSystemReport.sbf.HasValue ? ToQuote(newSystemReport.sbf.Value) : "NULL"
                                        , newSystemReport.ydf.HasValue ? ToQuote(newSystemReport.ydf.Value) : "NULL"
                                        , newSystemReport.bzf.HasValue ? ToQuote(newSystemReport.bzf.Value) : "NULL"
                                        , newSystemReport.other2.HasValue ? ToQuote(newSystemReport.other2.Value) : "NULL"
                                        , newSystemReport.xj3.HasValue ? ToQuote(newSystemReport.xj3.Value) : "NULL"
                                        , newSystemReport.hd2.HasValue ? ToQuote(newSystemReport.hd2.Value) : "NULL"
                                        , newSystemReport.cd2.HasValue ? ToQuote(newSystemReport.cd2.Value) : "NULL"
                                        , newSystemReport.cdbz2.HasValue ? ToQuote(newSystemReport.cdbz2.Value) : "NULL"
                                        , newSystemReport.mtdl2.HasValue ? ToQuote(newSystemReport.mtdl2.Value) : "NULL"
                                        , newSystemReport.xj4.HasValue ? ToQuote(newSystemReport.xj4.Value) : "NULL"
                                        , newSystemReport.yhsxf.HasValue ? ToQuote(newSystemReport.yhsxf.Value) : "NULL"
                                        , newSystemReport.lxsz.HasValue ? ToQuote(newSystemReport.lxsz.Value) : "NULL"
                                        , newSystemReport.xj5.HasValue ? ToQuote(newSystemReport.xj5.Value) : "NULL"
                                        , newSystemReport.yxs.HasValue ? ToQuote(newSystemReport.yxs.Value) : "NULL"
                                        , newSystemReport.qysds.HasValue ? ToQuote(newSystemReport.qysds.Value) : "NULL"
                                        , newSystemReport.hj2.HasValue ? ToQuote(newSystemReport.hj2.Value) : "NULL"
                                        , newSystemReport.zhj.HasValue ? ToQuote(newSystemReport.zhj.Value) : "NULL"
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newSystemReport.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newSystemReport.ID;
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
        /// Update an existing SystemReport
        /// </summary>
        /// <param name="thisSystemReport">SystemReport</param>
        /// <returns>bool</returns>
        public bool Update(SystemReport newSystemReport)
        {
            string sql = string.Format("EXEC sp_SystemReport_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18},{19},{20},{21},{22},{23},{24},{25},{26},{27},{28},{29},{30},{31},{32},{33},{34},{35},{36},{37},{38},{39},{40},{41},{42},{43},{44}"
                                    , ToQuote(newSystemReport.ID)
                                        , ToQuote(newSystemReport.company)
                                        , newSystemReport.yymoney.HasValue ? ToQuote(newSystemReport.yymoney.Value) : "NULL"
                                        , newSystemReport.gzjl.HasValue ? ToQuote(newSystemReport.gzjl.Value) : "NULL"
                                        , newSystemReport.fl.HasValue ? ToQuote(newSystemReport.fl.Value) : "NULL"
                                        , newSystemReport.cl.HasValue ? ToQuote(newSystemReport.cl.Value) : "NULL"
                                        , newSystemReport.bg.HasValue ? ToQuote(newSystemReport.bg.Value) : "NULL"
                                        , newSystemReport.fzwy.HasValue ? ToQuote(newSystemReport.fzwy.Value) : "NULL"
                                        , newSystemReport.yd.HasValue ? ToQuote(newSystemReport.yd.Value) : "NULL"
                                        , newSystemReport.yw.HasValue ? ToQuote(newSystemReport.yw.Value) : "NULL"
                                        , newSystemReport.zd.HasValue ? ToQuote(newSystemReport.zd.Value) : "NULL"
                                        , newSystemReport.bgzc.HasValue ? ToQuote(newSystemReport.bgzc.Value) : "NULL"
                                        , newSystemReport.wl.HasValue ? ToQuote(newSystemReport.wl.Value) : "NULL"
                                        , newSystemReport.other.HasValue ? ToQuote(newSystemReport.other.Value) : "NULL"
                                        , newSystemReport.xj.HasValue ? ToQuote(newSystemReport.xj.Value) : "NULL"
                                        , newSystemReport.hd.HasValue ? ToQuote(newSystemReport.hd.Value) : "NULL"
                                        , newSystemReport.cd.HasValue ? ToQuote(newSystemReport.cd.Value) : "NULL"
                                        , newSystemReport.cdbz.HasValue ? ToQuote(newSystemReport.cdbz.Value) : "NULL"
                                        , newSystemReport.mtdl.HasValue ? ToQuote(newSystemReport.mtdl.Value) : "NULL"
                                        , newSystemReport.xj2.HasValue ? ToQuote(newSystemReport.xj2.Value) : "NULL"
                                        , newSystemReport.hj.HasValue ? ToQuote(newSystemReport.hj.Value) : "NULL"
                                        , newSystemReport.gzjjl.HasValue ? ToQuote(newSystemReport.gzjjl.Value) : "NULL"
                                        , newSystemReport.clf.HasValue ? ToQuote(newSystemReport.clf.Value) : "NULL"
                                        , newSystemReport.bgf.HasValue ? ToQuote(newSystemReport.bgf.Value) : "NULL"
                                        , newSystemReport.ywf.HasValue ? ToQuote(newSystemReport.ywf.Value) : "NULL"
                                        , newSystemReport.sbf.HasValue ? ToQuote(newSystemReport.sbf.Value) : "NULL"
                                        , newSystemReport.ydf.HasValue ? ToQuote(newSystemReport.ydf.Value) : "NULL"
                                        , newSystemReport.bzf.HasValue ? ToQuote(newSystemReport.bzf.Value) : "NULL"
                                        , newSystemReport.other2.HasValue ? ToQuote(newSystemReport.other2.Value) : "NULL"
                                        , newSystemReport.xj3.HasValue ? ToQuote(newSystemReport.xj3.Value) : "NULL"
                                        , newSystemReport.hd2.HasValue ? ToQuote(newSystemReport.hd2.Value) : "NULL"
                                        , newSystemReport.cd2.HasValue ? ToQuote(newSystemReport.cd2.Value) : "NULL"
                                        , newSystemReport.cdbz2.HasValue ? ToQuote(newSystemReport.cdbz2.Value) : "NULL"
                                        , newSystemReport.mtdl2.HasValue ? ToQuote(newSystemReport.mtdl2.Value) : "NULL"
                                        , newSystemReport.xj4.HasValue ? ToQuote(newSystemReport.xj4.Value) : "NULL"
                                        , newSystemReport.yhsxf.HasValue ? ToQuote(newSystemReport.yhsxf.Value) : "NULL"
                                        , newSystemReport.lxsz.HasValue ? ToQuote(newSystemReport.lxsz.Value) : "NULL"
                                        , newSystemReport.xj5.HasValue ? ToQuote(newSystemReport.xj5.Value) : "NULL"
                                        , newSystemReport.yxs.HasValue ? ToQuote(newSystemReport.yxs.Value) : "NULL"
                                        , newSystemReport.qysds.HasValue ? ToQuote(newSystemReport.qysds.Value) : "NULL"
                                        , newSystemReport.hj2.HasValue ? ToQuote(newSystemReport.hj2.Value) : "NULL"
                                        , newSystemReport.zhj.HasValue ? ToQuote(newSystemReport.zhj.Value) : "NULL"
                                    
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newSystemReport.Statues)

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
        /// Delete an existing SystemReport
        /// </summary>
        /// <param name="thisSystemReport">SystemReport</param>
        /// <returns>bool</returns>
        public bool Delete(SystemReport thisSystemReport)
        {
            string sql = string.Format("EXEC sp_SystemReport_d {0}"
                                       , ToQuote(thisSystemReport.ID)


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
        /// Check if a SystemReport already exists
        /// </summary>
        /// <param name="name">SystemReport Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a SystemReport by id
        /// </summary>
        /// <param name="id">SystemReport id</param>
        /// <returns>SystemReport</returns>
        public SystemReport Get(Guid id)
        {
            string sql = string.Format("EXEC sp_SystemReport_g {0},{1},{2},{3}"
                             , ToQuote(id)
                             , "NULL"
                             , "NULL"
                             , "NULL"




                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<SystemReport> SystemReports = GetSystemReports(sql, 0, null, out paing);
                if (SystemReports.Count > 0)
                    return SystemReports[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all SystemReports
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="SystemReport">current SystemReport</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<SystemReport> Get(int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_SystemReport_g {0},{1},{2},{3}"
                            , "NULL"
   

                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<SystemReport> SystemReports = GetSystemReports(sql, Page, null, out paing);

                return SystemReports;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        public IList<SystemReport> Get(string time,
          out PaginationInfo paing)
        {
            string sql = string.Format("EXEC sp_systemreport_g2 {0}"
                            , ToQuote(time)

                         );

            try
            {

                IList<SystemReport> SystemReports = GetSystemReports(sql, 1, null, out paing);

                return SystemReports;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        #endregion
    }
}
