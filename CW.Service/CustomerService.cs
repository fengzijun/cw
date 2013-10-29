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
    public class CustomerService : BaseService, ICustomer
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for Customerd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<Customer> GetCustomers(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<Customer> Customers = new List<Customer>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        Customer Customer = new Customer()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            name = ParseStr(dr["name"]),
                            account = ParseStr(dr["account"]),
                            address = ParseStr(dr["address"]),
                            bank = ParseStr(dr["bank"]),
                            company = ParseStr(dr["company"]),
                            kpname = ParseStr(dr["kpname"]),
                            remark = ParseStr(dr["remark"]),
                            sh = ParseStr(dr["sh"]),
                            tel = ParseStr(dr["tel"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        Customers.Add(Customer);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return Customers;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new Customer
        /// </summary>
        /// <param name="newCustomer">new Customer</param>
        /// <returns>new Customer id</returns>
        public bool Create(Customer newCustomer)
        {
            string sql = string.Format("EXEC sp_Customer_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14}"
                                        , ToQuote(newCustomer.ID)                        
                                        , ToQuote(newCustomer.name)
                                        , ToQuote(newCustomer.company)
                                        , ToQuote(newCustomer.kpname)
                                        , ToQuote(newCustomer.sh)
                                        , ToQuote(newCustomer.address)
                                        , ToQuote(newCustomer.tel)
                                        , ToQuote(newCustomer.bank)
                                        , ToQuote(newCustomer.account)
                                        , ToQuote(newCustomer.remark)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newCustomer.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
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
        /// Update an existing Customer
        /// </summary>
        /// <param name="thisCustomer">Customer</param>
        /// <returns>bool</returns>
        public bool Update(Customer newCustomer)
        {
            string sql = string.Format("EXEC sp_Customer_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12}"
                                      , ToQuote(newCustomer.ID)
                                        , ToQuote(newCustomer.name)
                                        , ToQuote(newCustomer.company)
                                        , ToQuote(newCustomer.kpname)
                                        , ToQuote(newCustomer.sh)
                                        , ToQuote(newCustomer.address)
                                        , ToQuote(newCustomer.tel)
                                        , ToQuote(newCustomer.bank)
                                        , ToQuote(newCustomer.account)
                                        , ToQuote(newCustomer.remark)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newCustomer.Statues)
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
        /// Delete an existing Customer
        /// </summary>
        /// <param name="thisCustomer">Customer</param>
        /// <returns>bool</returns>
        public bool Delete(Customer thisCustomer)
        {
            string sql = string.Format("EXEC sp_Customer_d {0}"
                                       , ToQuote(thisCustomer.ID)


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
        /// Check if a Customer already exists
        /// </summary>
        /// <param name="name">Customer Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a Customer by id
        /// </summary>
        /// <param name="id">Customer id</param>
        /// <returns>Customer</returns>
        public Customer Get(int id)
        {
            string sql = string.Format("EXEC sp_Customer_g {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11}"
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
                             , "NULL"


                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<Customer> Customers = GetCustomers(sql, 0, null, out paing);
                if (Customers.Count > 0)
                    return Customers[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all Customers
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="Customer">current Customer</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<Customer> Get(string name, string company, string kpname, string sh, string address, string tel, string bank, string account, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_Customer_g {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11}"
                            , "NULL"
                            , ToQuote(name)
                            , ToQuote(company)
                            , ToQuote(kpname)
                            , ToQuote(sh)
                            , ToQuote(address)
                            , ToQuote(tel)
                            , ToQuote(bank)
                            , ToQuote(account)
                            , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                            , ToQuote(Page)
                            , ToQuote(sortKey)


                         );

            try
            {

                IList<Customer> Customers = GetCustomers(sql, Page, null, out paing);

                return Customers;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

    

        #endregion
    }
}
