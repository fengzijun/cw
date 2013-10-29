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
    public class BudgetDetailService : BaseService, IBudgetDetail
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for BudgetDetaild by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<BudgetDetail> GetBudgetDetails(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<BudgetDetail> BudgetDetails = new List<BudgetDetail>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        BudgetDetail BudgetDetail = new BudgetDetail()
                        {
                            ID = new Guid(dr["id"].ToString()),
                          
                            remark = ParseStr(dr["remark"]),
                            budgetid = new Guid(dr["budgetid"].ToString()),
                            daynum = ParseNInt(dr["daynum"]),
                            gg = ParseStr(dr["gg"]),
                            name = ParseStr(dr["name"]),
                            price = ParseNDecimal(dr["price"]),
                            totalprice = ParseNDecimal(dr["totalprice"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        BudgetDetails.Add(BudgetDetail);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return BudgetDetails;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new BudgetDetail
        /// </summary>
        /// <param name="newBudgetDetail">new BudgetDetail</param>
        /// <returns>new BudgetDetail id</returns>
        public Guid Create(BudgetDetail newBudgetDetail)
        {
            string sql = string.Format("EXEC sp_budget_detail_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12}"
                                        , ToQuote(newBudgetDetail.ID)
                                        , ToQuote(newBudgetDetail.budgetid)
                                        , ToQuote(newBudgetDetail.name)
                                        , ToQuote(newBudgetDetail.gg)
                                        , newBudgetDetail.daynum.HasValue? ToQuote(newBudgetDetail.daynum.Value):"NULL"
                                        , newBudgetDetail.price.HasValue ? ToQuote(newBudgetDetail.price.Value) : "NULL"
                                        , newBudgetDetail.totalprice.HasValue ? ToQuote(newBudgetDetail.totalprice.Value) : "NULL"
                                   
                                        , ToQuote(newBudgetDetail.remark)
                           
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newBudgetDetail.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newBudgetDetail.ID;
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
        /// Update an existing BudgetDetail
        /// </summary>
        /// <param name="thisBudgetDetail">BudgetDetail</param>
        /// <returns>bool</returns>
        public bool Update(BudgetDetail newBudgetDetail)
        {
            string sql = string.Format("EXEC sp_budget_detail_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10}"
                                         , ToQuote(newBudgetDetail.ID)
                                        , ToQuote(newBudgetDetail.budgetid)
                                        , ToQuote(newBudgetDetail.name)
                                        , ToQuote(newBudgetDetail.gg)
                                        , newBudgetDetail.daynum.HasValue ? ToQuote(newBudgetDetail.daynum.Value) : "NULL"
                                        , newBudgetDetail.price.HasValue ? ToQuote(newBudgetDetail.price.Value) : "NULL"
                                        , newBudgetDetail.totalprice.HasValue ? ToQuote(newBudgetDetail.totalprice.Value) : "NULL"

                                        , ToQuote(newBudgetDetail.remark)

                                    
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newBudgetDetail.Statues)
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
        /// Delete an existing BudgetDetail
        /// </summary>
        /// <param name="thisBudgetDetail">BudgetDetail</param>
        /// <returns>bool</returns>
        public bool Delete(BudgetDetail thisBudgetDetail)
        {
            string sql = string.Format("EXEC sp_budget_detail_d {0}"
                                       , ToQuote(thisBudgetDetail.ID)


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
        /// Check if a BudgetDetail already exists
        /// </summary>
        /// <param name="name">BudgetDetail Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a BudgetDetail by id
        /// </summary>
        /// <param name="id">BudgetDetail id</param>
        /// <returns>BudgetDetail</returns>
        public BudgetDetail Get(Guid id)
        {
            string sql = string.Format("EXEC sp_budget_detail_g {0},{1},{2},{3},{4},{5}"
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
                IList<BudgetDetail> BudgetDetails = GetBudgetDetails(sql, 0, null, out paing);
                if (BudgetDetails.Count > 0)
                    return BudgetDetails[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all BudgetDetails
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="BudgetDetail">current BudgetDetail</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<BudgetDetail> Get(Guid? budgetid, string name, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_budget_detail_g {0},{1},{2},{3},{4},{5}"
                            , "NULL"
                             , budgetid.HasValue ? ToQuote(budgetid.Value) : "NULL"
                             , ToQuote(name)
                           
                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<BudgetDetail> BudgetDetails = GetBudgetDetails(sql, Page, null, out paing);

                return BudgetDetails;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
