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
    public class ReceiveMoneyService : BaseService, IReceiveMoney
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for Userd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<ReceiveMoney> GetReceiveMoneys(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<ReceiveMoney> ReceiveMoneys = new List<ReceiveMoney>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        ReceiveMoney ReceiveMoney = new ReceiveMoney()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            department = ParseStr(dr["department"]),
                            money = ParseNDecimal(dr["money"]),
                            orderno = ParseStr(dr["orderno"]),
                            reducemoney = ParseNDecimal(dr["reducemoney"]),
                            remark = ParseStr(dr["remark"]),
                            time = ParseStr(dr["time"]),
                            receivemoney = ParseNDecimal(dr["receivemoney"]),
                            type = ParseStr(dr["type"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        ReceiveMoneys.Add(ReceiveMoney);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return ReceiveMoneys;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new ReceiveMoney
        /// </summary>
        /// <param name="newReceiveMoney">new ReceiveMoney</param>
        /// <returns>new ReceiveMoney id</returns>
        public Guid Create(ReceiveMoney newReceiveMoney)
        {
            string sql = string.Format("EXEC sp_ReceiveMoney_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13}"
                                        , ToQuote(newReceiveMoney.ID)
                                        , ToQuote(newReceiveMoney.orderno)
                                        , ToQuote(newReceiveMoney.type)
                                        , newReceiveMoney.money.HasValue?ToQuote(newReceiveMoney.money.Value):"NULL"
                                        , ToQuote(newReceiveMoney.time)
                                        , ToQuote(newReceiveMoney.department)
                                        , newReceiveMoney.receivemoney.HasValue ? ToQuote(newReceiveMoney.receivemoney.Value) : "NULL"
                                        , newReceiveMoney.reducemoney.HasValue ? ToQuote(newReceiveMoney.reducemoney.Value) : "NULL"
                                        , ToQuote(newReceiveMoney.remark)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newReceiveMoney.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newReceiveMoney.ID;
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
        /// Update an existing ReceiveMoney
        /// </summary>
        /// <param name="thisReceiveMoney">ReceiveMoney</param>
        /// <returns>bool</returns>
        public bool Update(ReceiveMoney newReceiveMoney)
        {
            string sql = string.Format("EXEC sp_ReceiveMoney_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11}"
                                      , ToQuote(newReceiveMoney.ID)
                                        , ToQuote(newReceiveMoney.orderno)
                                        , ToQuote(newReceiveMoney.type)
                                        , newReceiveMoney.money.HasValue ? ToQuote(newReceiveMoney.money.Value) : "NULL"
                                        , ToQuote(newReceiveMoney.time)
                                        , ToQuote(newReceiveMoney.department)
                                        , newReceiveMoney.receivemoney.HasValue ? ToQuote(newReceiveMoney.receivemoney.Value) : "NULL"
                                        , newReceiveMoney.reducemoney.HasValue ? ToQuote(newReceiveMoney.reducemoney.Value) : "NULL"
                                        , ToQuote(newReceiveMoney.remark)
                                      
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newReceiveMoney.Statues)

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
        /// Delete an existing ReceiveMoney
        /// </summary>
        /// <param name="thisReceiveMoney">ReceiveMoney</param>
        /// <returns>bool</returns>
        public bool Delete(ReceiveMoney thisReceiveMoney)
        {
            string sql = string.Format("EXEC sp_ReceiveMoney_d {0}"
                                       , ToQuote(thisReceiveMoney.ID)


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
        /// Check if a ReceiveMoney already exists
        /// </summary>
        /// <param name="name">ReceiveMoney Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a ReceiveMoney by id
        /// </summary>
        /// <param name="id">ReceiveMoney id</param>
        /// <returns>ReceiveMoney</returns>
        public ReceiveMoney Get(Guid id)
        {
            string sql = string.Format("EXEC sp_ReceiveMoney_g {0},{1},{2},{3},{4}"
                             , ToQuote(id)
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"



                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<ReceiveMoney> ReceiveMoneys = GetReceiveMoneys(sql, 0, null, out paing);
                if (ReceiveMoneys.Count > 0)
                    return ReceiveMoneys[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all ReceiveMoneys
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="ReceiveMoney">current ReceiveMoney</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<ReceiveMoney> Get(string orderno, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_ReceiveMoney_g {0},{1},{2},{3},{4}"
                            , "NULL"
                            , ToQuote(orderno)
                            , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                            , ToQuote(Page)
                            , ToQuote(sortKey)

                         );

            try
            {

                IList<ReceiveMoney> ReceiveMoneys = GetReceiveMoneys(sql, Page, null, out paing);

                return ReceiveMoneys;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
