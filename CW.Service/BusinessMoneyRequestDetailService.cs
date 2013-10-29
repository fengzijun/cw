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
    public class BusinessMoneyRequestDetailService : BaseService, IBusinessMoneyRequestDetail
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for BusinessMoneyRequestDetaild by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<BusinessMoneyRequestDetail> GetBusinessMoneyRequestDetails(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<BusinessMoneyRequestDetail> BusinessMoneyRequestDetails = new List<BusinessMoneyRequestDetail>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        BusinessMoneyRequestDetail BusinessMoneyRequestDetail = new BusinessMoneyRequestDetail()
                        {
                            ID = new Guid(dr["id"].ToString()),
                         
                            money = ParseNDecimal(dr["money"]),
                            other = ParseStr(dr["other"]),
                            maintype = ParseStr(dr["maintype"]),
                            remark = ParseStr(dr["remark"]),
                            businessid = new Guid(dr["businessid"].ToString()),
                            type = ParseStr(dr["type"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        BusinessMoneyRequestDetails.Add(BusinessMoneyRequestDetail);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return BusinessMoneyRequestDetails;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new BusinessMoneyRequestDetail
        /// </summary>
        /// <param name="newBusinessMoneyRequestDetail">new BusinessMoneyRequestDetail</param>
        /// <returns>new BusinessMoneyRequestDetail id</returns>
        public Guid Create(BusinessMoneyRequestDetail newBusinessMoneyRequestDetail)
        {
            string sql = string.Format("EXEC sp_business_money_request_detail_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11}"
                                        , ToQuote(newBusinessMoneyRequestDetail.ID)
                                        , ToQuote(newBusinessMoneyRequestDetail.businessid)
                                        , newBusinessMoneyRequestDetail.money.HasValue ? ToQuote(newBusinessMoneyRequestDetail.money) : "NULL"
                                        , ToQuote(newBusinessMoneyRequestDetail.type)
                                        , ToQuote(newBusinessMoneyRequestDetail.maintype)
                                        , ToQuote(newBusinessMoneyRequestDetail.remark)
                                        , ToQuote(newBusinessMoneyRequestDetail.other)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newBusinessMoneyRequestDetail.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newBusinessMoneyRequestDetail.ID;
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
        /// Update an existing BusinessMoneyRequestDetail
        /// </summary>
        /// <param name="thisBusinessMoneyRequestDetail">BusinessMoneyRequestDetail</param>
        /// <returns>bool</returns>
        public bool Update(BusinessMoneyRequestDetail newBusinessMoneyRequestDetail)
        {
            string sql = string.Format("EXEC sp_business_money_request_detail_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9}"
                                        , ToQuote(newBusinessMoneyRequestDetail.ID)
                                        , ToQuote(newBusinessMoneyRequestDetail.businessid)
                                        , newBusinessMoneyRequestDetail.money.HasValue ? ToQuote(newBusinessMoneyRequestDetail.money) : "NULL"
                                        , ToQuote(newBusinessMoneyRequestDetail.type)
                                        , ToQuote(newBusinessMoneyRequestDetail.maintype)
                                        , ToQuote(newBusinessMoneyRequestDetail.remark)
                                        , ToQuote(newBusinessMoneyRequestDetail.other)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newBusinessMoneyRequestDetail.Statues)

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
        /// Delete an existing BusinessMoneyRequestDetail
        /// </summary>
        /// <param name="thisBusinessMoneyRequestDetail">BusinessMoneyRequestDetail</param>
        /// <returns>bool</returns>
        public bool Delete(BusinessMoneyRequestDetail thisBusinessMoneyRequestDetail)
        {
            string sql = string.Format("EXEC sp_business_money_request_detail_d {0}"
                                       , ToQuote(thisBusinessMoneyRequestDetail.ID)


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
        /// Check if a BusinessMoneyRequestDetail already exists
        /// </summary>
        /// <param name="name">BusinessMoneyRequestDetail Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a BusinessMoneyRequestDetail by id
        /// </summary>
        /// <param name="id">BusinessMoneyRequestDetail id</param>
        /// <returns>BusinessMoneyRequestDetail</returns>
        public BusinessMoneyRequestDetail Get(Guid id)
        {
            string sql = string.Format("EXEC sp_business_money_request_detail_g {0},{1},{2},{3},{4}"
                             , ToQuote(id)
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"
                           
                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<BusinessMoneyRequestDetail> BusinessMoneyRequestDetails = GetBusinessMoneyRequestDetails(sql, 0, null, out paing);
                if (BusinessMoneyRequestDetails.Count > 0)
                    return BusinessMoneyRequestDetails[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all BusinessMoneyRequestDetails
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="BusinessMoneyRequestDetail">current BusinessMoneyRequestDetail</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<BusinessMoneyRequestDetail> Get(Guid? businessid, int? statues, int Page, string sortKey,
                    out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_BusinessMoneyRequestDetail_g {0},{1},{2},{3},{4}"
                             , "NULL"
                             , businessid.HasValue?ToQuote(businessid.Value):"NULL"
                            
                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<BusinessMoneyRequestDetail> BusinessMoneyRequestDetails = GetBusinessMoneyRequestDetails(sql, Page, null, out paing);

                return BusinessMoneyRequestDetails;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
