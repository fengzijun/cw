// -----------------------------------------------------------------------
// <copyright file="CommonPaymentService.cs" company="">
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
    public class CommonPaymentService : BaseService, ICommonPayment
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for CommonPaymentd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<CommonPayment> GetCommonPayments(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<CommonPayment> CommonPayments = new List<CommonPayment>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        CommonPayment CommonPayment = new CommonPayment()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            money = ParseNDecimal(dr["money"]),
                            company = ParseStr(dr["company"]),
                            iscwcheck = ParseNBool(dr["iscwcheck"]),
                            ismanagercheck = ParseNBool(dr["ismanagercheck"]),
                            orderuser = ParseStr(dr["orderuser"]),
                            isjz = ParseNBool(dr["isjz"]),
                            time = ParseStr(dr["time"]),
                            istopmanagercheck = ParseNBool(dr["istopmanagercheck"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        CommonPayments.Add(CommonPayment);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return CommonPayments;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new CommonPayment
        /// </summary>
        /// <param name="newCommonPayment">new CommonPayment</param>
        /// <returns>new CommonPayment id</returns>
        public Guid Create(CommonPayment newCommonPayment)
        {
            string sql = string.Format("EXEC sp_commonpayment_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13}"
                                        , ToQuote(newCommonPayment.ID)
                                        , ToQuote(newCommonPayment.company)
                                        , ToQuote(newCommonPayment.time)
                                        , newCommonPayment.money.HasValue ? ToQuote(newCommonPayment.money.Value) : "NULL"
                                        , ToQuote(newCommonPayment.orderuser)
                                        
                                        , newCommonPayment.ismanagercheck.HasValue ? ToQuote(newCommonPayment.ismanagercheck.Value) : "NULL"
                                        , newCommonPayment.istopmanagercheck.HasValue ? ToQuote(newCommonPayment.istopmanagercheck.Value) : "NULL"
                                        , newCommonPayment.isjz.HasValue ? ToQuote(newCommonPayment.isjz.Value) : "NULL"
                                        , newCommonPayment.iscwcheck.HasValue ? ToQuote(newCommonPayment.iscwcheck.Value) : "NULL"

                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newCommonPayment.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newCommonPayment.ID;
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
        /// Update an existing CommonPayment
        /// </summary>
        /// <param name="thisCommonPayment">CommonPayment</param>
        /// <returns>bool</returns>
        public bool Update(CommonPayment newCommonPayment)
        {
            string sql = string.Format("EXEC sp_commonpayment_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11}"
                                             , ToQuote(newCommonPayment.ID)
                                        , ToQuote(newCommonPayment.company)
                                        , ToQuote(newCommonPayment.time)
                                        , newCommonPayment.money.HasValue ? ToQuote(newCommonPayment.money.Value) : "NULL"
                                        , ToQuote(newCommonPayment.orderuser)

                                        , newCommonPayment.ismanagercheck.HasValue ? ToQuote(newCommonPayment.ismanagercheck.Value) : "NULL"
                                        , newCommonPayment.istopmanagercheck.HasValue ? ToQuote(newCommonPayment.istopmanagercheck.Value) : "NULL"
                                        , newCommonPayment.isjz.HasValue ? ToQuote(newCommonPayment.isjz.Value) : "NULL"
                                        , newCommonPayment.iscwcheck.HasValue ? ToQuote(newCommonPayment.iscwcheck.Value) : "NULL"
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newCommonPayment.Statues)

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
        /// Delete an existing CommonPayment
        /// </summary>
        /// <param name="thisCommonPayment">CommonPayment</param>
        /// <returns>bool</returns>
        public bool Delete(CommonPayment thisCommonPayment)
        {
            string sql = string.Format("EXEC sp_commonpayment_d {0}"
                                       , ToQuote(thisCommonPayment.ID)


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
        /// Check if a CommonPayment already exists
        /// </summary>
        /// <param name="name">CommonPayment Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a CommonPayment by id
        /// </summary>
        /// <param name="id">CommonPayment id</param>
        /// <returns>CommonPayment</returns>
        public CommonPayment Get(Guid id)
        {
            string sql = string.Format("EXEC sp_commonpayment_g {0},{1},{2},{3},{4},{5},{6},{7}"
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
                IList<CommonPayment> CommonPayments = GetCommonPayments(sql, 0, null, out paing);
                if (CommonPayments.Count > 0)
                    return CommonPayments[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all CommonPayments
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="CommonPayment">current CommonPayment</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<CommonPayment> Get(bool? ismanagercheck, bool? istopmanagercheck,bool? isjz, bool? iscwcheck,int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_commonpayment_g {0},{1},{2},{3},{4},{5},{6},{7}"
                            , "NULL"

                             , ismanagercheck.HasValue ? ToQuote(ismanagercheck.Value) : "NULL"
                             , istopmanagercheck.HasValue ? ToQuote(istopmanagercheck.Value) : "NULL"
                             , isjz.HasValue ? ToQuote(isjz.Value) : "NULL"
                             , iscwcheck.HasValue ? ToQuote(iscwcheck.Value) : "NULL"

                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<CommonPayment> CommonPayments = GetCommonPayments(sql, Page, null, out paing);

                return CommonPayments;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
