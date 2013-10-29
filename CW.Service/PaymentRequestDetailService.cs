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
    public class PaymentRequestDetailService : BaseService, IPaymentRequestDetail
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for PaymentRequestDetaild by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<PaymentRequestDetail> GetPaymentRequestDetails(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<PaymentRequestDetail> PaymentRequestDetails = new List<PaymentRequestDetail>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        PaymentRequestDetail PaymentRequestDetail = new PaymentRequestDetail()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            bank = ParseStr(dr["bank"]),
                            cardno = ParseStr(dr["cardno"]),
                            detail = ParseStr(dr["detail"]),
                            money = ParseNDecimal(dr["money"]),
                            paymentid = ParseNGuid(dr["paymentid"]),
                            username = ParseStr(dr["username"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        PaymentRequestDetails.Add(PaymentRequestDetail);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return PaymentRequestDetails;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new PaymentRequestDetail
        /// </summary>
        /// <param name="newPaymentRequestDetail">new PaymentRequestDetail</param>
        /// <returns>new PaymentRequestDetail id</returns>
        public Guid Create(PaymentRequestDetail newPaymentRequestDetail)
        {
            string sql = string.Format("EXEC sp_payment_request_detail_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11}"
                                        , ToQuote(newPaymentRequestDetail.ID)
                                        , newPaymentRequestDetail.paymentid.HasValue? ToQuote(newPaymentRequestDetail.paymentid.Value):"NULL"
                                        , newPaymentRequestDetail.money.HasValue ? ToQuote(newPaymentRequestDetail.money.Value) : "NULL"
                                        , ToQuote(newPaymentRequestDetail.username)
                                        , ToQuote(newPaymentRequestDetail.bank)
                                        , ToQuote(newPaymentRequestDetail.cardno)
                                        , ToQuote(newPaymentRequestDetail.detail)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newPaymentRequestDetail.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newPaymentRequestDetail.ID;
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
        /// Update an existing PaymentRequestDetail
        /// </summary>
        /// <param name="thisPaymentRequestDetail">PaymentRequestDetail</param>
        /// <returns>bool</returns>
        public bool Update(PaymentRequestDetail newPaymentRequestDetail)
        {
            string sql = string.Format("EXEC sp_payment_request_detail_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9}"
                                       , ToQuote(newPaymentRequestDetail.ID)
                                        , newPaymentRequestDetail.paymentid.HasValue ? ToQuote(newPaymentRequestDetail.paymentid.Value) : "NULL"
                                        , newPaymentRequestDetail.money.HasValue ? ToQuote(newPaymentRequestDetail.money.Value) : "NULL"
                                        , ToQuote(newPaymentRequestDetail.username)
                                        , ToQuote(newPaymentRequestDetail.bank)
                                        , ToQuote(newPaymentRequestDetail.cardno)
                                        , ToQuote(newPaymentRequestDetail.detail)
                                        , ToQuote(newPaymentRequestDetail.username)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newPaymentRequestDetail.Statues)
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
        /// Delete an existing PaymentRequestDetail
        /// </summary>
        /// <param name="thisPaymentRequestDetail">PaymentRequestDetail</param>
        /// <returns>bool</returns>
        public bool Delete(PaymentRequestDetail thisPaymentRequestDetail)
        {
            string sql = string.Format("EXEC sp_PaymentRequestDetail_d {0}"
                                       , ToQuote(thisPaymentRequestDetail.ID)


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
        /// Check if a PaymentRequestDetail already exists
        /// </summary>
        /// <param name="name">PaymentRequestDetail Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a PaymentRequestDetail by id
        /// </summary>
        /// <param name="id">PaymentRequestDetail id</param>
        /// <returns>PaymentRequestDetail</returns>
        public PaymentRequestDetail Get(Guid id)
        {
            string sql = string.Format("EXEC sp_payment_request_detail_g {0},{1},{2},{3},{4}"
                             , ToQuote(id)
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"
       


                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<PaymentRequestDetail> PaymentRequestDetails = GetPaymentRequestDetails(sql, 0, null, out paing);
                if (PaymentRequestDetails.Count > 0)
                    return PaymentRequestDetails[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all PaymentRequestDetails
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="PaymentRequestDetail">current PaymentRequestDetail</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<PaymentRequestDetail> Get(Guid? paymentrequestid, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_payment_request_detail_g {0},{1},{2},{3},{4}"
                            , "NULL"
                             , paymentrequestid.HasValue ? ToQuote(paymentrequestid.Value) : "NULL"
                        
                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<PaymentRequestDetail> PaymentRequestDetails = GetPaymentRequestDetails(sql, Page, null, out paing);

                return PaymentRequestDetails;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
