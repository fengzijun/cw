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
    public class BusinessMoneyRequestService : BaseService, IBusinessMoneyRequest
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for BusinessMoneyRequestd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<BusinessMoneyRequest> GetBusinessMoneyRequests(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<BusinessMoneyRequest> BusinessMoneyRequests = new List<BusinessMoneyRequest>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        BusinessMoneyRequest BusinessMoneyRequest = new BusinessMoneyRequest()
                        {
                            ID = new Guid(dr["id"].ToString()),
                         
                            company = ParseStr(dr["company"]),
                          
                            money = ParseNDecimal(dr["money"]),
                            businessmoney = ParseNDecimal(dr["businessmoney"]),
                            customername = ParseStr(dr["customername"]),
                            isjz = ParseNBool(dr["isjz"]),
                            ismanagecheck = ParseNBool(dr["ismanagecheck"]),
                            istopmanagercheck = ParseNBool(dr["istopmanagercheck"]),
                            moneypercentage = ParseStr(dr["moneypercentage"]),
                            orderno = ParseStr(dr["orderno"]),
                            orderuser = ParseStr(dr["orderuser"]),
                            overday = ParseNInt(dr["overday"]),
                            projectcontent = ParseStr(dr["projectcontent"]),
                            receivemoney = ParseNDecimal(dr["receivemoney"]),
                            receivetime = ParseStr(dr["receivetime"]),
                            time = ParseStr(dr["time"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        BusinessMoneyRequests.Add(BusinessMoneyRequest);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return BusinessMoneyRequests;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new BusinessMoneyRequest
        /// </summary>
        /// <param name="newBusinessMoneyRequest">new BusinessMoneyRequest</param>
        /// <returns>new BusinessMoneyRequest id</returns>
        public Guid Create(BusinessMoneyRequest newBusinessMoneyRequest)
        {
            string sql = string.Format("EXEC sp_business_money_request_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18},{19},{20}"
                                        , ToQuote(newBusinessMoneyRequest.ID)
                                        , ToQuote(newBusinessMoneyRequest.orderno)
                                        , ToQuote(newBusinessMoneyRequest.customername)
                                        , ToQuote(newBusinessMoneyRequest.company)
                                        , ToQuote(newBusinessMoneyRequest.projectcontent)
                                        , ToQuote(newBusinessMoneyRequest.time)
                                        , newBusinessMoneyRequest.money.HasValue ? ToQuote(newBusinessMoneyRequest.money.Value) : "NULL"
                                        , newBusinessMoneyRequest.receivemoney.HasValue ? ToQuote(newBusinessMoneyRequest.receivemoney.Value) : "NULL"
                                        , ToQuote(newBusinessMoneyRequest.receivetime)
                                        , newBusinessMoneyRequest.overday.HasValue ? ToQuote(newBusinessMoneyRequest.overday.Value) : "NULL"
                                        , ToQuote(newBusinessMoneyRequest.moneypercentage)
                                        , newBusinessMoneyRequest.businessmoney.HasValue ? ToQuote(newBusinessMoneyRequest.businessmoney.Value) : "NULL"
                                        , ToQuote(newBusinessMoneyRequest.orderuser)
                                        , newBusinessMoneyRequest.ismanagecheck.HasValue ? ToQuote(newBusinessMoneyRequest.ismanagecheck.Value) : "NULL"
                                        , newBusinessMoneyRequest.istopmanagercheck.HasValue ? ToQuote(newBusinessMoneyRequest.istopmanagercheck.Value) : "NULL"
                                        , newBusinessMoneyRequest.isjz.HasValue ? ToQuote(newBusinessMoneyRequest.isjz.Value) : "NULL"
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newBusinessMoneyRequest.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newBusinessMoneyRequest.ID;
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
        /// Update an existing BusinessMoneyRequest
        /// </summary>
        /// <param name="thisBusinessMoneyRequest">BusinessMoneyRequest</param>
        /// <returns>bool</returns>
        public bool Update(BusinessMoneyRequest newBusinessMoneyRequest)
        {
            string sql = string.Format("EXEC sp_business_money_request_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18}"
                                        , ToQuote(newBusinessMoneyRequest.ID)
                                        , ToQuote(newBusinessMoneyRequest.orderno)
                                        , ToQuote(newBusinessMoneyRequest.customername)
                                        , ToQuote(newBusinessMoneyRequest.company)
                                        , ToQuote(newBusinessMoneyRequest.projectcontent)
                                        , ToQuote(newBusinessMoneyRequest.time)
                                        , newBusinessMoneyRequest.money.HasValue ? ToQuote(newBusinessMoneyRequest.money.Value) : "NULL"
                                        , newBusinessMoneyRequest.receivemoney.HasValue ? ToQuote(newBusinessMoneyRequest.receivemoney.Value) : "NULL"
                                        , ToQuote(newBusinessMoneyRequest.receivetime)
                                        , newBusinessMoneyRequest.overday.HasValue ? ToQuote(newBusinessMoneyRequest.overday.Value) : "NULL"
                                        , ToQuote(newBusinessMoneyRequest.moneypercentage)
                                        , newBusinessMoneyRequest.businessmoney.HasValue ? ToQuote(newBusinessMoneyRequest.businessmoney.Value) : "NULL"
                                        , ToQuote(newBusinessMoneyRequest.orderuser)
                                        , newBusinessMoneyRequest.ismanagecheck.HasValue ? ToQuote(newBusinessMoneyRequest.ismanagecheck.Value) : "NULL"
                                        , newBusinessMoneyRequest.istopmanagercheck.HasValue ? ToQuote(newBusinessMoneyRequest.istopmanagercheck.Value) : "NULL"
                                        , newBusinessMoneyRequest.isjz.HasValue ? ToQuote(newBusinessMoneyRequest.isjz.Value) : "NULL"
                                  
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newBusinessMoneyRequest.Statues)

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
        /// Delete an existing BusinessMoneyRequest
        /// </summary>
        /// <param name="thisBusinessMoneyRequest">BusinessMoneyRequest</param>
        /// <returns>bool</returns>
        public bool Delete(BusinessMoneyRequest thisBusinessMoneyRequest)
        {
            string sql = string.Format("EXEC sp_business_money_request_d {0}"
                                       , ToQuote(thisBusinessMoneyRequest.ID)


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
        /// Check if a BusinessMoneyRequest already exists
        /// </summary>
        /// <param name="name">BusinessMoneyRequest Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a BusinessMoneyRequest by id
        /// </summary>
        /// <param name="id">BusinessMoneyRequest id</param>
        /// <returns>BusinessMoneyRequest</returns>
        public BusinessMoneyRequest Get(Guid id)
        {
            string sql = string.Format("EXEC sp_business_money_request_g {0},{1},{2},{3},{4},{5},{6},{7},{8}"
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
                IList<BusinessMoneyRequest> BusinessMoneyRequests = GetBusinessMoneyRequests(sql, 0, null, out paing);
                if (BusinessMoneyRequests.Count > 0)
                    return BusinessMoneyRequests[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all BusinessMoneyRequests
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="BusinessMoneyRequest">current BusinessMoneyRequest</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<BusinessMoneyRequest> Get(string orderno,string username, bool? ismanagercheck,bool? istopmanagercheck,bool? isjz,int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_business_money_request_g {0},{1},{2},{3},{4},{5},{6},{7},{8}"
                            , "NULL"
                             , ToQuote(orderno)
                             , ToQuote(username)
                             , ismanagercheck.HasValue ? ToQuote(ismanagercheck.Value) : "NULL"
                             , istopmanagercheck.HasValue ? ToQuote(istopmanagercheck.Value) : "NULL"
                             , isjz.HasValue ? ToQuote(isjz.Value) : "NULL"
                       
                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<BusinessMoneyRequest> BusinessMoneyRequests = GetBusinessMoneyRequests(sql, Page, null, out paing);

                return BusinessMoneyRequests;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
