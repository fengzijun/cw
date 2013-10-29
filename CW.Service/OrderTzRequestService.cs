// -----------------------------------------------------------------------
// <copyright file="OrderTzRequestService.cs" company="">
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
    public class OrderTzRequestService: BaseService, IOrderTzRequest
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for OrderTzRequestd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<OrderTzRequest> GetOrderTzRequests(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<OrderTzRequest> OrderTzRequests = new List<OrderTzRequest>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        OrderTzRequest OrderTzRequest = new OrderTzRequest()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            name = ParseStr(dr["name"]),
                            balance = ParseNDecimal(dr["balance"]),
                            balancereduce = ParseNDecimal(dr["balancereduce"]),
                            company = ParseStr(dr["company"]),
                          
                            customershortname = ParseStr(dr["customershortname"]),
                           
                            
                            projectcontent = ParseStr(dr["projectcontent"]),
                         
                            money = ParseNDecimal(dr["money"]),
                            orderno = ParseStr(dr["orderno"]),
                           
                            remark = ParseStr(dr["remark"]),
                            
                            time = ParseStr(dr["time"]),
                            ismanagercheck = ParseNBool(dr["ismanagercheck"]),
                            istopmanagercheck = ParseNBool(dr["istopmanagercheck"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        OrderTzRequests.Add(OrderTzRequest);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return OrderTzRequests;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new OrderTzRequest
        /// </summary>
        /// <param name="newOrderTzRequest">new OrderTzRequest</param>
        /// <returns>new OrderTzRequest id</returns>
        public Guid Create(OrderTzRequest newOrderTzRequest)
        {
            string sql = string.Format("EXEC sp_ordertz_request_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17}"
                                        , ToQuote(newOrderTzRequest.ID)
                                        , ToQuote(newOrderTzRequest.orderno)
                                        , ToQuote(newOrderTzRequest.customershortname)
                                        , ToQuote(newOrderTzRequest.company)
                                        , ToQuote(newOrderTzRequest.time)
                                        , ToQuote(newOrderTzRequest.name)
                                        , ToQuote(newOrderTzRequest.projectcontent)
                                        , newOrderTzRequest.money.HasValue?ToQuote(newOrderTzRequest.money.Value):"NULL"
                                        , newOrderTzRequest.balance.HasValue ? ToQuote(newOrderTzRequest.balance.Value) : "NULL"
                                        , newOrderTzRequest.balancereduce.HasValue ? ToQuote(newOrderTzRequest.balancereduce.Value) : "NULL"
                                        , ToQuote(newOrderTzRequest.remark)
                                        , newOrderTzRequest.ismanagercheck.HasValue ? ToQuote(newOrderTzRequest.ismanagercheck.Value) : "NULL"
                                        , newOrderTzRequest.istopmanagercheck.HasValue ? ToQuote(newOrderTzRequest.istopmanagercheck.Value) : "NULL"
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newOrderTzRequest.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newOrderTzRequest.ID;
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
        /// Update an existing OrderTzRequest
        /// </summary>
        /// <param name="thisOrderTzRequest">OrderTzRequest</param>
        /// <returns>bool</returns>
        public bool Update(OrderTzRequest newOrderTzRequest)
        {
            string sql = string.Format("EXEC sp_ordertz_request_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15}"
                                                                          , ToQuote(newOrderTzRequest.ID)
                                        , ToQuote(newOrderTzRequest.orderno)
                                        , ToQuote(newOrderTzRequest.customershortname)
                                        , ToQuote(newOrderTzRequest.company)
                                        , ToQuote(newOrderTzRequest.time)
                                        , ToQuote(newOrderTzRequest.name)
                                        , ToQuote(newOrderTzRequest.projectcontent)
                                        , newOrderTzRequest.money.HasValue ? ToQuote(newOrderTzRequest.money.Value) : "NULL"
                                        , newOrderTzRequest.balance.HasValue ? ToQuote(newOrderTzRequest.balance.Value) : "NULL"
                                        , newOrderTzRequest.balancereduce.HasValue ? ToQuote(newOrderTzRequest.balancereduce.Value) : "NULL"
                                        , ToQuote(newOrderTzRequest.remark)
                                        , newOrderTzRequest.ismanagercheck.HasValue ? ToQuote(newOrderTzRequest.ismanagercheck.Value) : "NULL"
                                        , newOrderTzRequest.istopmanagercheck.HasValue ? ToQuote(newOrderTzRequest.istopmanagercheck.Value) : "NULL"
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newOrderTzRequest.Statues)
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
        /// Delete an existing OrderTzRequest
        /// </summary>
        /// <param name="thisOrderTzRequest">OrderTzRequest</param>
        /// <returns>bool</returns>
        public bool Delete(OrderTzRequest thisOrderTzRequest)
        {
            string sql = string.Format("EXEC sp_ordertz_request_d {0}"
                                       , ToQuote(thisOrderTzRequest.ID)


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
        /// Check if a OrderTzRequest already exists
        /// </summary>
        /// <param name="name">OrderTzRequest Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a OrderTzRequest by id
        /// </summary>
        /// <param name="id">OrderTzRequest id</param>
        /// <returns>OrderTzRequest</returns>
        public OrderTzRequest Get(Guid id)
        {
            string sql = string.Format("EXEC sp_ordertz_request_g {0},{1},{2},{3},{4},{5},{6},{7}"
                             , ToQuote(id)
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"
                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<OrderTzRequest> OrderTzRequests = GetOrderTzRequests(sql, 0, null, out paing);
                if (OrderTzRequests.Count > 0)
                    return OrderTzRequests[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all OrderTzRequests
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="OrderTzRequest">current OrderTzRequest</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<OrderTzRequest> Get(string orderno,string username, bool? managercheck, bool? topmanagercheck, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_ordertz_request_g {0},{1},{2},{3},{4},{5},{6},{7}"
                            , "NULL"
                            ,ToQuote(orderno)
                             , ToQuote(username)
                              , managercheck.HasValue ? ToQuote(managercheck.Value) : "NULL"
                              , topmanagercheck.HasValue ? ToQuote(topmanagercheck.Value) : "NULL"
                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<OrderTzRequest> OrderTzRequests = GetOrderTzRequests(sql, Page, null, out paing);

                return OrderTzRequests;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
