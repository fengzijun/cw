// -----------------------------------------------------------------------
// <copyright file="LogService.cs" company="">
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
    public class LogService : BaseService, ILog
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for Logd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<Log> GetLogs(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<Log> Logs = new List<Log>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        Log Log = new Log()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            msgcontent = ParseStr(dr["msgcontent"]),
                            type = ParseStr(dr["type"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        Logs.Add(Log);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return Logs;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new Log
        /// </summary>
        /// <param name="newLog">new Log</param>
        /// <returns>new Log id</returns>
        public Guid Create(Log newLog)
        {
            string sql = string.Format("EXEC sp_Log_c {0},{1},{2},{3},{4},{5},{6},{7}"
                                        , ToQuote(newLog.ID)
                                        , ToQuote(newLog.msgcontent)
                                        , ToQuote(newLog.type)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newLog.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newLog.ID;
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
        /// Update an existing Log
        /// </summary>
        /// <param name="thisLog">Log</param>
        /// <returns>bool</returns>
        public bool Update(Log newLog)
        {
            throw new NotFiniteNumberException();
        }

        /// <summary>
        /// Delete an existing Log
        /// </summary>
        /// <param name="thisLog">Log</param>
        /// <returns>bool</returns>
        public bool Delete(Log thisLog)
        {
            throw new NotImplementedException();
        }


        /// <summary>
        /// Check if a Log already exists
        /// </summary>
        /// <param name="name">Log Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a Log by id
        /// </summary>
        /// <param name="id">Log id</param>
        /// <returns>Log</returns>
        public Log Get(Guid id)
        {
            string sql = string.Format("EXEC sp_Log_g {0},{1},{2},{3},{4}"
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
                IList<Log> Logs = GetLogs(sql, 0, null, out paing);
                if (Logs.Count > 0)
                    return Logs[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all Logs
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="Log">current Log</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<Log> Get(string type, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_Log_g {0},{1},{2},{3},{4}"
                            , "NULL"
                             , ToQuote(type)
                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<Log> Logs = GetLogs(sql, Page, null, out paing);

                return Logs;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
