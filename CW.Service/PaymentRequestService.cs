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
    public class PaymentRequestService : BaseService, IPaymentRequest
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for PaymentRequestd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<PaymentRequest> GetPaymentRequests(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<PaymentRequest> PaymentRequests = new List<PaymentRequest>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        PaymentRequest PaymentRequest = new PaymentRequest()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            name = ParseStr(dr["name"]),
                            company = ParseStr(dr["company"]),
                            gysname = ParseStr(dr["gysname"]),
                            iscwcheck = ParseNBool(dr["iscwcheck"]),
                            isjz = ParseNBool(dr["isjz"]),
                            ismanagerusercheck = ParseNBool(dr["ismanagerusercheck"]),
                            istopmanagerusercheck = ParseNBool(dr["istopmanagerusercheck"]),
                            money = ParseNDecimal(dr["money"]),
                            msgcontent = ParseStr(dr["msgcontent"]),
                            orderno = ParseStr(dr["orderno"]),
                            orderuser = ParseStr(dr["orderuser"]),
                            remark = ParseStr(dr["remark"]),
                            remark2 = ParseStr(dr["remark2"]),
                            maintype = ParseStr(dr["maintype"]),
                            reqesttime = ParseStr(dr["reqesttime"]),
                            time = ParseStr(dr["time"]),
                            type = ParseStr(dr["type"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        PaymentRequests.Add(PaymentRequest);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return PaymentRequests;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new PaymentRequest
        /// </summary>
        /// <param name="newPaymentRequest">new PaymentRequest</param>
        /// <returns>new PaymentRequest id</returns>
        public Guid Create(PaymentRequest newPaymentRequest)
        {
            string sql = string.Format("EXEC sp_payment_request_c  {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18},{19},{20},{21},{22}"
                                        , ToQuote(newPaymentRequest.ID)
                                        , ToQuote(newPaymentRequest.name)
                                        , ToQuote(newPaymentRequest.time)
                                        , ToQuote(newPaymentRequest.orderno)
                                        , ToQuote(newPaymentRequest.gysname)
                                        , ToQuote(newPaymentRequest.company)
                                        , ToQuote(newPaymentRequest.msgcontent)
                                        , ToQuote(newPaymentRequest.reqesttime)
                                        , ToQuote(newPaymentRequest.remark)
                                        , ToQuote(newPaymentRequest.remark2)
                                        , newPaymentRequest.money.HasValue? ToQuote(newPaymentRequest.money.Value):"NULL"
                                        , ToQuote(newPaymentRequest.type)
                                        , ToQuote(newPaymentRequest.maintype)
                                        , ToQuote(newPaymentRequest.orderuser)
                                        , newPaymentRequest.iscwcheck.HasValue ? ToQuote(newPaymentRequest.iscwcheck.Value) : "NULL"
                                        , newPaymentRequest.ismanagerusercheck.HasValue ? ToQuote(newPaymentRequest.ismanagerusercheck.Value) : "NULL"
                                        , newPaymentRequest.istopmanagerusercheck.HasValue ? ToQuote(newPaymentRequest.istopmanagerusercheck.Value) : "NULL"
                                        , newPaymentRequest.isjz.HasValue ? ToQuote(newPaymentRequest.isjz.Value) : "NULL"
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newPaymentRequest.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newPaymentRequest.ID;
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
        /// Update an existing PaymentRequest
        /// </summary>
        /// <param name="thisPaymentRequest">PaymentRequest</param>
        /// <returns>bool</returns>
        public bool Update(PaymentRequest newPaymentRequest)
        {
            string sql = string.Format("EXEC sp_payment_request_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18},{19},{22}"
                                       , ToQuote(newPaymentRequest.ID)
                                        , ToQuote(newPaymentRequest.name)
                                        , ToQuote(newPaymentRequest.time)
                                        , ToQuote(newPaymentRequest.orderno)
                                        , ToQuote(newPaymentRequest.gysname)
                                        , ToQuote(newPaymentRequest.company)
                                        , ToQuote(newPaymentRequest.msgcontent)
                                        , ToQuote(newPaymentRequest.reqesttime)
                                        , ToQuote(newPaymentRequest.remark)
                                        , ToQuote(newPaymentRequest.remark2)
                                        , newPaymentRequest.money.HasValue ? ToQuote(newPaymentRequest.money.Value) : "NULL"
                                        , ToQuote(newPaymentRequest.type)
                                        , ToQuote(newPaymentRequest.maintype)
                                        , ToQuote(newPaymentRequest.orderuser)
                                        , newPaymentRequest.iscwcheck.HasValue ? ToQuote(newPaymentRequest.iscwcheck.Value) : "NULL"
                                        , newPaymentRequest.ismanagerusercheck.HasValue ? ToQuote(newPaymentRequest.ismanagerusercheck.Value) : "NULL"
                                        , newPaymentRequest.istopmanagerusercheck.HasValue ? ToQuote(newPaymentRequest.istopmanagerusercheck.Value) : "NULL"
                                        , newPaymentRequest.isjz.HasValue ? ToQuote(newPaymentRequest.isjz.Value) : "NULL"
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newPaymentRequest.Statues)
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
        /// Delete an existing PaymentRequest
        /// </summary>
        /// <param name="thisPaymentRequest">PaymentRequest</param>
        /// <returns>bool</returns>
        public bool Delete(PaymentRequest thisPaymentRequest)
        {
            string sql = string.Format("EXEC sp_Payment_Request_d {0}"
                                       , ToQuote(thisPaymentRequest.ID)


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
        /// Check if a PaymentRequest already exists
        /// </summary>
        /// <param name="name">PaymentRequest Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a PaymentRequest by id
        /// </summary>
        /// <param name="id">PaymentRequest id</param>
        /// <returns>PaymentRequest</returns>
        public PaymentRequest Get(Guid id)
        {
            string sql = string.Format("EXEC sp_Payment_Request_g {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10}"
                             , ToQuote(id)
                             , "NULL"
                             , "NULL"
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
                IList<PaymentRequest> PaymentRequests = GetPaymentRequests(sql, 0, null, out paing);
                if (PaymentRequests.Count > 0)
                    return PaymentRequests[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

      

        /// <summary>
        /// Get all PaymentRequests
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="PaymentRequest">current PaymentRequest</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<PaymentRequest> Get(string name, string orderno, string orderuser, bool? iscwcheck, bool? ismanagerusercheck, bool? istopmanagerusercheck, bool? isjz, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_Payment_Request_g {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10}"
                            , "NULL"
                             , ToQuote(name)
                             , ToQuote(orderno)
                             , ToQuote(orderuser)
                              , iscwcheck.HasValue ? ToQuote(iscwcheck.Value) : "NULL"
                              , ismanagerusercheck.HasValue ? ToQuote(ismanagerusercheck.Value) : "NULL"
                              , istopmanagerusercheck.HasValue ? ToQuote(istopmanagerusercheck.Value) : "NULL"
                              , isjz.HasValue ? ToQuote(isjz.Value) : "NULL"
                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)

                         );

            try
            {

                IList<PaymentRequest> PaymentRequests = GetPaymentRequests(sql, Page, null, out paing);

                return PaymentRequests;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
