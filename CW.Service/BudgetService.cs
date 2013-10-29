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
    public class BudgetService : BaseService, IBudget
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for Budgetd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<Budget> GetBudgets(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<Budget> Budgets = new List<Budget>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        Budget Budget = new Budget()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            name = ParseStr(dr["name"]),
                            manageruser = ParseStr(dr["manageruser"]),
                            money = ParseNDecimal(dr["money"]),
                            orderno = ParseStr(dr["orderno"]),
                            orderuser = ParseStr(dr["orderuser"]),
                            time = ParseStr(dr["time"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        Budgets.Add(Budget);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return Budgets;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new Budget
        /// </summary>
        /// <param name="newBudget">new Budget</param>
        /// <returns>new Budget id</returns>
        public Guid Create(Budget newBudget)
        {
            string sql = string.Format("EXEC sp_Budget_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11}"
                                        , ToQuote(newBudget.ID)
                                        , ToQuote(newBudget.name)
                                        , ToQuote(newBudget.orderno)
                                        , ToQuote(newBudget.time)
                                        , newBudget.money.HasValue? ToQuote(newBudget.money.Value):"NULL"
                                        , ToQuote(newBudget.manageruser)
                                        , ToQuote(newBudget.orderuser)
                                    
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newBudget.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newBudget.ID;
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
        /// Update an existing Budget
        /// </summary>
        /// <param name="thisBudget">Budget</param>
        /// <returns>bool</returns>
        public bool Update(Budget newBudget)
        {
            string sql = string.Format("EXEC sp_Budget_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9}"
                                       , ToQuote(newBudget.ID)
                                        , ToQuote(newBudget.name)
                                        , ToQuote(newBudget.orderno)
                                        , ToQuote(newBudget.time)
                                        , newBudget.money.HasValue ? ToQuote(newBudget.money.Value) : "NULL"
                                        , ToQuote(newBudget.manageruser)
                                        , ToQuote(newBudget.orderuser)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newBudget.Statues)
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
        /// Delete an existing Budget
        /// </summary>
        /// <param name="thisBudget">Budget</param>
        /// <returns>bool</returns>
        public bool Delete(Budget thisBudget)
        {
            string sql = string.Format("EXEC sp_Budget_d {0}"
                                       , ToQuote(thisBudget.ID)


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
        /// Check if a Budget already exists
        /// </summary>
        /// <param name="name">Budget Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a Budget by id
        /// </summary>
        /// <param name="id">Budget id</param>
        /// <returns>Budget</returns>
        public Budget Get(Guid id)
        {
            string sql = string.Format("EXEC sp_Budget_g {0},{1},{2},{3},{4},{5},{6},{7}}"
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
                IList<Budget> Budgets = GetBudgets(sql, 0, null, out paing);
                if (Budgets.Count > 0)
                    return Budgets[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all Budgets
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="Budget">current Budget</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public  IList<Budget> Get(string orderno, string name, string manageruser, string orderuser, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_Budget_g {0},{1},{2},{3},{4},{5},{6},{7}"
                            , "NULL"
                            , ToQuote(name)
                            , ToQuote(orderno)
                            , ToQuote(manageruser)
                            , ToQuote(orderuser)
                         
                            , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                            , ToQuote(Page)
                            , ToQuote(sortKey)


                         );

            try
            {

                IList<Budget> Budgets = GetBudgets(sql, Page, null, out paing);

                return Budgets;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
