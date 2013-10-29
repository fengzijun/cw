// -----------------------------------------------------------------------
// <copyright file="CommonPaymentDetailService.cs" company="">
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
    public class CommonPaymentDetailService : BaseService, ICommonPaymentDetail
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for CommonPaymentDetaild by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<CommonPaymentDetail> GetCommonPaymentDetails(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<CommonPaymentDetail> CommonPaymentDetails = new List<CommonPaymentDetail>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        CommonPaymentDetail CommonPaymentDetail = new CommonPaymentDetail()
                        {
                            ID = new Guid(dr["id"].ToString()),

                            money = ParseNDecimal(dr["money"]),
                            other = ParseStr(dr["other"]),

                            remark = ParseStr(dr["remark"]),
                            maintype = ParseStr(dr["maintype"]),
                            commonpaymentid = ParseNGuid(dr["commonpaymentid"].ToString()),
                            type = ParseStr(dr["type"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        CommonPaymentDetails.Add(CommonPaymentDetail);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return CommonPaymentDetails;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new CommonPaymentDetail
        /// </summary>
        /// <param name="newCommonPaymentDetail">new CommonPaymentDetail</param>
        /// <returns>new CommonPaymentDetail id</returns>
        public Guid Create(CommonPaymentDetail newCommonPaymentDetail)
        {
            string sql = string.Format("EXEC sp_commonpayment_detail_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11}"
                                        , ToQuote(newCommonPaymentDetail.ID)
                                        , ToQuote(newCommonPaymentDetail.commonpaymentid)
                                        , newCommonPaymentDetail.money.HasValue ? ToQuote(newCommonPaymentDetail.money) : "NULL"
                                        , ToQuote(newCommonPaymentDetail.type)
                                        , ToQuote(newCommonPaymentDetail.maintype)
                                        , ToQuote(newCommonPaymentDetail.remark)
                                        , ToQuote(newCommonPaymentDetail.other)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newCommonPaymentDetail.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newCommonPaymentDetail.ID;
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
        /// Update an existing CommonPaymentDetail
        /// </summary>
        /// <param name="thisCommonPaymentDetail">CommonPaymentDetail</param>
        /// <returns>bool</returns>
        public bool Update(CommonPaymentDetail newCommonPaymentDetail)
        {
            string sql = string.Format("EXEC sp_commonpayment_detail_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9}"
                                        , ToQuote(newCommonPaymentDetail.ID)
                                        , ToQuote(newCommonPaymentDetail.commonpaymentid)
                                        , newCommonPaymentDetail.money.HasValue ? ToQuote(newCommonPaymentDetail.money) : "NULL"
                                        , ToQuote(newCommonPaymentDetail.type)
                                        , ToQuote(newCommonPaymentDetail.maintype)
                                        , ToQuote(newCommonPaymentDetail.remark)
                                        , ToQuote(newCommonPaymentDetail.other)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newCommonPaymentDetail.Statues)

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
        /// Delete an existing CommonPaymentDetail
        /// </summary>
        /// <param name="thisCommonPaymentDetail">CommonPaymentDetail</param>
        /// <returns>bool</returns>
        public bool Delete(CommonPaymentDetail thisCommonPaymentDetail)
        {
            string sql = string.Format("EXEC sp_business_money_request_detail_d {0}"
                                       , ToQuote(thisCommonPaymentDetail.ID)


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
        /// Check if a CommonPaymentDetail already exists
        /// </summary>
        /// <param name="name">CommonPaymentDetail Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a CommonPaymentDetail by id
        /// </summary>
        /// <param name="id">CommonPaymentDetail id</param>
        /// <returns>CommonPaymentDetail</returns>
        public CommonPaymentDetail Get(Guid id)
        {
            string sql = string.Format("EXEC sp_commonpayment_detail_g {0},{1},{2},{3},{4}"
                             , ToQuote(id)
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"

                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<CommonPaymentDetail> CommonPaymentDetails = GetCommonPaymentDetails(sql, 0, null, out paing);
                if (CommonPaymentDetails.Count > 0)
                    return CommonPaymentDetails[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all CommonPaymentDetails
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="CommonPaymentDetail">current CommonPaymentDetail</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<CommonPaymentDetail> Get(Guid? commonpaymentid, int? statues, int Page, string sortKey,
                    out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_commonpayment_detail_g {0},{1},{2},{3},{4}"
                             , "NULL"
                             , commonpaymentid.HasValue ? ToQuote(commonpaymentid.Value) : "NULL"

                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<CommonPaymentDetail> CommonPaymentDetails = GetCommonPaymentDetails(sql, Page, null, out paing);

                return CommonPaymentDetails;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
