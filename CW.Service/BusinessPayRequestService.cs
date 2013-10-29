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
    public class BusinessPayRequestService : BaseService, IBusinessPayRequest
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for BusinessPayRequestd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<BusinessPayRequest> GetBusinessPayRequests(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<BusinessPayRequest> BusinessPayRequests = new List<BusinessPayRequest>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        BusinessPayRequest BusinessPayRequest = new BusinessPayRequest()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            money = ParseNDecimal(dr["money"]),
                            account = ParseStr(dr["account"]),
                            customername = ParseStr(dr["customername"]),
                            balance = ParseNDecimal(dr["balance"]),
                            bank = ParseStr(dr["bank"]),
                            company = ParseStr(dr["company"]),
                            hxbalance = ParseNDecimal(dr["hxbalance"]),
                            orderno = ParseStr(dr["orderno"]),
                            iscwcheck = ParseNBool(dr["iscwcheck"]),
                            ismanagercheck = ParseNBool(dr["ismanagercheck"]),
                            other = ParseStr(dr["other"]),
                            payway = ParseStr(dr["payway"]),
                            receivename = ParseStr(dr["receivename"]),
                            istopmanagercheck = ParseNBool(dr["istopmanagercheck"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        BusinessPayRequests.Add(BusinessPayRequest);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return BusinessPayRequests;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new BusinessPayRequest
        /// </summary>
        /// <param name="newBusinessPayRequest">new BusinessPayRequest</param>
        /// <returns>new BusinessPayRequest id</returns>
        public Guid Create(BusinessPayRequest newBusinessPayRequest)
        {
            string sql = string.Format("EXEC sp_business_pay_request_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18},{19}"
                                        , ToQuote(newBusinessPayRequest.ID)
                                        , ToQuote(newBusinessPayRequest.orderno)
                                        , ToQuote(newBusinessPayRequest.customername)
                                        , newBusinessPayRequest.money.HasValue ? ToQuote(newBusinessPayRequest.money.Value) : "NULL"
                                        , newBusinessPayRequest.balance.HasValue ? ToQuote(newBusinessPayRequest.balance.Value) : "NULL"
                                        , newBusinessPayRequest.hxbalance.HasValue ? ToQuote(newBusinessPayRequest.hxbalance.Value) : "NULL"
                                        , ToQuote(newBusinessPayRequest.receivename)
                                        , ToQuote(newBusinessPayRequest.account)
                                        , ToQuote(newBusinessPayRequest.payway)
                                        , ToQuote(newBusinessPayRequest.bank)
                                        , ToQuote(newBusinessPayRequest.other)
                                        , ToQuote(newBusinessPayRequest.company)
                                        , newBusinessPayRequest.ismanagercheck.HasValue ? ToQuote(newBusinessPayRequest.ismanagercheck.Value) : "NULL"
                                        , newBusinessPayRequest.istopmanagercheck.HasValue ? ToQuote(newBusinessPayRequest.istopmanagercheck.Value) : "NULL"
                                        , newBusinessPayRequest.iscwcheck.HasValue ? ToQuote(newBusinessPayRequest.iscwcheck.Value) : "NULL"
                                 
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newBusinessPayRequest.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newBusinessPayRequest.ID;
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
        /// Update an existing BusinessPayRequest
        /// </summary>
        /// <param name="thisBusinessPayRequest">BusinessPayRequest</param>
        /// <returns>bool</returns>
        public bool Update(BusinessPayRequest newBusinessPayRequest)
        {
            string sql = string.Format("EXEC sp_business_pay_request_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17}"
                                        , ToQuote(newBusinessPayRequest.ID)
                                         , ToQuote(newBusinessPayRequest.orderno)
                                        , ToQuote(newBusinessPayRequest.customername)
                                        , newBusinessPayRequest.money.HasValue ? ToQuote(newBusinessPayRequest.money.Value) : "NULL"
                                        , newBusinessPayRequest.balance.HasValue ? ToQuote(newBusinessPayRequest.balance.Value) : "NULL"
                                        , newBusinessPayRequest.hxbalance.HasValue ? ToQuote(newBusinessPayRequest.hxbalance.Value) : "NULL"
                                        , ToQuote(newBusinessPayRequest.receivename)
                                        , ToQuote(newBusinessPayRequest.account)
                                        , ToQuote(newBusinessPayRequest.payway)
                                        , ToQuote(newBusinessPayRequest.bank)
                                        , ToQuote(newBusinessPayRequest.other)
                                        , ToQuote(newBusinessPayRequest.company)
                                        , newBusinessPayRequest.ismanagercheck.HasValue ? ToQuote(newBusinessPayRequest.ismanagercheck.Value) : "NULL"
                                        , newBusinessPayRequest.istopmanagercheck.HasValue ? ToQuote(newBusinessPayRequest.istopmanagercheck.Value) : "NULL"
                                        , newBusinessPayRequest.iscwcheck.HasValue ? ToQuote(newBusinessPayRequest.iscwcheck.Value) : "NULL"

                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newBusinessPayRequest.Statues)

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
        /// Delete an existing BusinessPayRequest
        /// </summary>
        /// <param name="thisBusinessPayRequest">BusinessPayRequest</param>
        /// <returns>bool</returns>
        public bool Delete(BusinessPayRequest thisBusinessPayRequest)
        {
            string sql = string.Format("EXEC sp_business_pay_request_d {0}"
                                       , ToQuote(thisBusinessPayRequest.ID)


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
        /// Check if a BusinessPayRequest already exists
        /// </summary>
        /// <param name="name">BusinessPayRequest Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a BusinessPayRequest by id
        /// </summary>
        /// <param name="id">BusinessPayRequest id</param>
        /// <returns>BusinessPayRequest</returns>
        public BusinessPayRequest Get(Guid id)
        {
            string sql = string.Format("EXEC sp_business_pay_request_g {0},{1},{2},{3},{4},{5},{6},{7},{8}"
                             , ToQuote(id)
                             , "NULL"
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
                IList<BusinessPayRequest> BusinessPayRequests = GetBusinessPayRequests(sql, 0, null, out paing);
                if (BusinessPayRequests.Count > 0)
                    return BusinessPayRequests[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all BusinessPayRequests
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="BusinessPayRequest">current BusinessPayRequest</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public  IList<BusinessPayRequest> Get(string orderno,string username, bool? ismanagercheck, bool? istopmanagercheck, bool? iscwcheck, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_business_pay_request_g {0},{1},{2},{3},{4},{5},{6},{7},{8}"
                            , "NULL"
                             ,ToQuote(orderno)
                             , ToQuote(username)
                             , ismanagercheck.HasValue ? ToQuote(ismanagercheck.Value) : "NULL"
                             , istopmanagercheck.HasValue ? ToQuote(istopmanagercheck.Value) : "NULL"
                             , iscwcheck.HasValue ? ToQuote(iscwcheck.Value) : "NULL"

                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<BusinessPayRequest> BusinessPayRequests = GetBusinessPayRequests(sql, Page, null, out paing);

                return BusinessPayRequests;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
