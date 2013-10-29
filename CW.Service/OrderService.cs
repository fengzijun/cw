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
    public class OrderService : BaseService, IOrder
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for Orderd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<Order> GetOrders(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<Order> Orders = new List<Order>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        Order Order = new Order()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            name = ParseStr(dr["name"]),
                            balance = ParseNDecimal(dr["balance"]),
                            company = ParseStr(dr["company"]),
                            customername = ParseStr(dr["customername"]),
                            customershortname = ParseStr(dr["customershortname"]),
                            cwcheck = ParseNBool(dr["cwcheck"]),
                            iszd = ParseNBool(dr["iszd"]),
                            jsz = ParseNDecimal(dr["jsz"]),
                            lr = ParseStr(dr["lr"]),
                            managercheck = ParseNBool(dr["managercheck"]),
                            ml = ParseNDecimal(dr["ml"]),
                            lrmoney = ParseNDecimal(dr["ml"]),
                            projectcontent = ParseStr(dr["projectcontent"]),
                            isht = ParseNBool(dr["isht"]),
                            iskp = ParseNBool(dr["iskp"]),
                            zk = ParseNDecimal(dr["zk"]),
                            parentorderno = ParseStr(dr["parentorderno"]),
                            money = ParseNDecimal(dr["money"]),
                            orderno = ParseStr(dr["orderno"]),
                            kpce = ParseNDecimal(dr["kpce"]),
                            other = ParseStr(dr["other"]),
                            remark = ParseStr(dr["remark"]),
                            actualmoney = ParseNDecimal(dr["actualmoney"]),
                            havemoney = ParseNDecimal(dr["havemoney"]),
                            havemoneypercentage = ParseStr(dr["havemoneypercentage"]),
                            nothavemoney = ParseNDecimal(dr["nothavemoney"]),
                            shouldmoney = ParseNDecimal(dr["shouldmoney"]),
                            time = ParseStr(dr["time"]),
                            balancereduce = ParseNDecimal(dr["balancereduce"]),
                            balancereducereason = ParseStr(dr["balancereducereason"]),
                             hxmoney = ParseDecimal(dr["hxmoney"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        Orders.Add(Order);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return Orders;
                }
            }
        }

        IList<OrderAndKp> GetOrderAndKp(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<OrderAndKp> Orders = new List<OrderAndKp>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        Order order = new Order()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            name = ParseStr(dr["name"]),
                            balance = ParseNDecimal(dr["balance"]),
                            company = ParseStr(dr["company"]),
                            customername = ParseStr(dr["customername"]),
                            customershortname = ParseStr(dr["customername"]),
                            cwcheck = ParseNBool(dr["cwcheck"]),
                            iszd = ParseNBool(dr["iszd"]),
                            jsz = ParseNDecimal(dr["iszd"]),
                            lr = ParseStr(dr["lr"]),
                            balancereducereason = ParseStr(dr["balancereducereason"]),
                            managercheck = ParseNBool(dr["managercheck"]),
                            ml = ParseNDecimal(dr["ml"]),
                            isht = ParseNBool(dr["isht"]),
                            iskp = ParseNBool(dr["iskp"]),
                            zk = ParseNDecimal(dr["zk"]),
                            parentorderno = ParseStr(dr["parentorderno"]),
                            money = ParseNDecimal(dr["balance"]),
                            orderno = ParseStr(dr["orderno"]),
                            other = ParseStr(dr["other"]),
                            remark = ParseStr(dr["remark"]),
                            time = ParseStr(dr["time"]),
                            balancereduce = ParseNDecimal(dr["balancereduce"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                            
                        };

                        Kp kp = new Kp
                        {
                           
                            bjsj = ParseNDecimal(dr["bjsj"]),
                            company = ParseStr(dr["kpcompany"]),
                            kptt = ParseStr(dr["kptt"]),
                            money = ParseNDecimal(dr["kpmoney"]),
                            type = ParseStr(dr["type"]),
                            bcmoney = ParseNDecimal(dr["bcmoney"]),
                            project = ParseStr(dr["project"]),
                            Createtime = ParseStr(dr["kpCreatetime"])
                        };

                        OrderAndKp oderandkp = new OrderAndKp
                        {
                            order = order,
                            kp = kp
                        };


                        Orders.Add(oderandkp);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return Orders;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new Order
        /// </summary>
        /// <param name="newOrder">new Order</param>
        /// <returns>new Order id</returns>
        public Guid Create(Order newOrder)
        {
            string sql = string.Format("EXEC sp_Order_c {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18},{19},{20},{21},{22},{23},{24},{25},{26},{27},{28},{29},{30},{31},{32},{33},{34},{35},{36}"
                                        , ToQuote(newOrder.ID)
                                        , ToQuote(newOrder.name)
                                        , ToQuote(newOrder.company)
                                        , ToQuote(newOrder.projectcontent)
                                        , ToQuote(newOrder.customername)
                                        , ToQuote(newOrder.orderno)
                                        , newOrder.money.HasValue ? ToQuote(newOrder.money.Value) : "NULL"
                                        , ToQuote(newOrder.customershortname)
                                        , ToQuote(newOrder.time)
                                        , newOrder.balance.HasValue ? ToQuote(newOrder.balance.Value) : "NULL"
                                        , newOrder.balancereduce.HasValue ? ToQuote(newOrder.balancereduce.Value) : "NULL"
                                        , ToQuote(newOrder.balancereducereason)
                                        , newOrder.isht.HasValue ? ToQuote(newOrder.isht.Value) : "NULL"
                                        , newOrder.iskp.HasValue ? ToQuote(newOrder.iskp.Value) : "NULL"
                                        , ToQuote(newOrder.other)
                                        , ToQuote(newOrder.remark)
                                        , newOrder.managercheck.HasValue ? ToQuote(newOrder.managercheck.Value) : "NULL"
                                        , newOrder.cwcheck.HasValue ? ToQuote(newOrder.cwcheck.Value) : "NULL"
                                        , newOrder.zk.HasValue ? ToQuote(newOrder.zk.Value) : "NULL"
                                        , newOrder.jsz.HasValue ? ToQuote(newOrder.jsz.Value) : "NULL"
                                        , newOrder.ml.HasValue ? ToQuote(newOrder.ml.Value) : "NULL"
                                        , newOrder.lrmoney.HasValue ? ToQuote(newOrder.lrmoney.Value) : "NULL"
                                        , ToQuote(newOrder.lr)
                                        , newOrder.iszd.HasValue ? ToQuote(newOrder.iszd.Value) : "NULL"
                                        , ToQuote(newOrder.parentorderno)
                                        , newOrder.shouldmoney.HasValue ? ToQuote(newOrder.shouldmoney.Value) : "NULL"
                                        , newOrder.havemoney.HasValue ? ToQuote(newOrder.havemoney.Value) : "NULL"
                                        , newOrder.nothavemoney.HasValue ? ToQuote(newOrder.nothavemoney.Value) : "NULL"
                                        , ToQuote(newOrder.havemoneypercentage)
                                        , newOrder.actualmoney.HasValue ? ToQuote(newOrder.actualmoney.Value) : "NULL"
                                        , newOrder.hxmoney.HasValue ? ToQuote(newOrder.hxmoney.Value) : "NULL"
                                        , newOrder.kpce.HasValue ? ToQuote(newOrder.kpce.Value) : "NULL"
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newOrder.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newOrder.ID;
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
        /// Update an existing Order
        /// </summary>
        /// <param name="thisOrder">Order</param>
        /// <returns>bool</returns>
        public bool Update(Order newOrder)
        {
            string sql = string.Format("EXEC sp_Order_u {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},{15},{16},{17},{18},{19},{20},{21},{22},{23},{24},{25},{26},{27},{28},{29},{30},{31},{32},{33},{34}"
                                         , ToQuote(newOrder.ID)
                                        , ToQuote(newOrder.name)
                                        , ToQuote(newOrder.company)
                                        , ToQuote(newOrder.projectcontent)
                                        , ToQuote(newOrder.customername)
                                        , ToQuote(newOrder.orderno)
                                        , newOrder.money.HasValue ? ToQuote(newOrder.money.Value) : "NULL"
                                        , ToQuote(newOrder.customername)
                                        , ToQuote(newOrder.time) 
                                        , newOrder.balance.HasValue ? ToQuote(newOrder.balance.Value) : "NULL"
                                        , newOrder.balancereduce.HasValue ? ToQuote(newOrder.balancereduce.Value) : "NULL"
                                        , ToQuote(newOrder.balancereducereason)
                                        , newOrder.isht.HasValue ? ToQuote(newOrder.isht.Value) : "NULL"
                                        , newOrder.iskp.HasValue ? ToQuote(newOrder.iskp.Value) : "NULL"
                                        , ToQuote(newOrder.other)
                                        , ToQuote(newOrder.remark)
                                        , newOrder.managercheck.HasValue ? ToQuote(newOrder.managercheck.Value) : "NULL"
                                        , newOrder.cwcheck.HasValue ? ToQuote(newOrder.cwcheck.Value) : "NULL"
                                        , newOrder.zk.HasValue ? ToQuote(newOrder.zk.Value) : "NULL"
                                        , newOrder.jsz.HasValue ? ToQuote(newOrder.jsz.Value) : "NULL"
                                        , newOrder.ml.HasValue ? ToQuote(newOrder.ml.Value) : "NULL"
                                         , newOrder.lrmoney.HasValue ? ToQuote(newOrder.lrmoney.Value) : "NULL"
                                        , ToQuote(newOrder.lr)
                                        , newOrder.iszd.HasValue ? ToQuote(newOrder.iszd.Value) : "NULL"
                                        , ToQuote(newOrder.parentorderno)
                                        , newOrder.shouldmoney.HasValue ? ToQuote(newOrder.shouldmoney.Value) : "NULL"
                                        , newOrder.havemoney.HasValue ? ToQuote(newOrder.havemoney.Value) : "NULL"
                                        , newOrder.nothavemoney.HasValue ? ToQuote(newOrder.nothavemoney.Value) : "NULL"
                                        , ToQuote(newOrder.havemoneypercentage)
                                        , newOrder.actualmoney.HasValue ? ToQuote(newOrder.actualmoney.Value) : "NULL"
                                        , newOrder.hxmoney.HasValue ? ToQuote(newOrder.hxmoney.Value) : "NULL"
                                        , newOrder.kpce.HasValue ? ToQuote(newOrder.kpce.Value) : "NULL"
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newOrder.Statues)
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
        /// Delete an existing Order
        /// </summary>
        /// <param name="thisOrder">Order</param>
        /// <returns>bool</returns>
        public bool Delete(Order thisOrder)
        {
            string sql = string.Format("EXEC sp_Order_d {0}"
                                       , ToQuote(thisOrder.ID)


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
        /// Check if a Order already exists
        /// </summary>
        /// <param name="name">Order Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a Order by id
        /// </summary>
        /// <param name="id">Order id</param>
        /// <returns>Order</returns>
        public Order Get(Guid id)
        {
            string sql = string.Format("EXEC sp_Order_g {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10}"
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
                IList<Order> Orders = GetOrders(sql, 0, null, out paing);
                if (Orders.Count > 0)
                    return Orders[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        public Order GetByOrderno(string orderno)
        {
            string sql = string.Format("EXEC sp_Order_g {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10}"
                             , "NULL"
                             , "NULL"
                             , ToQuote(orderno)
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
                IList<Order> Orders = GetOrders(sql, 0, null, out paing);
                if (Orders.Count > 0)
                    return Orders[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all Orders
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="Order">current Order</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<Order> Get(string ordername, string orderno,string username, bool? managercheck, bool? cwcheck, bool? iszd, string parentorderno, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_Order_g {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10}"
                              , "NULL"
                              , ToQuote(ordername)
                              , ToQuote(orderno)
                              , ToQuote(username)
                              , managercheck.HasValue ? ToQuote(managercheck.Value) : "NULL"
                              , cwcheck.HasValue ? ToQuote(cwcheck.Value) : "NULL"
                              , iszd.HasValue ? ToQuote(iszd.Value) : "NULL"
                              , ToQuote(parentorderno)

                              , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                              , ToQuote(Page)
                              , ToQuote(sortKey)

                           );
            try
            {

                IList<Order> Orders = GetOrders(sql, Page, null, out paing);

                return Orders;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        public IList<Order> GetMangerCheck(string ordername, string orderno,bool? managercheck, bool? cwcheck, bool? iszd, string parentorderno, int? statues, int Page, string sortKey,
           out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_order_g_managercheck {0},{1},{2},{3},{4},{5},{6},{7},{8},{9}"
                              , "NULL"
                              , ToQuote(ordername)
                              , ToQuote(orderno)
                              , "NULL"
                              , managercheck.HasValue ? ToQuote(managercheck.Value) : "NULL"
                              , cwcheck.HasValue ? ToQuote(cwcheck.Value) : "NULL"
                              , iszd.HasValue ? ToQuote(iszd.Value) : "NULL"
                              , ToQuote(parentorderno)

                              , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                              , ToQuote(Page)
                              , ToQuote(sortKey)

                           );
            try
            {

                IList<Order> Orders = GetOrders(sql, Page, null, out paing);

                return Orders;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        public IList<Order> GetTopMangerCheck(string ordername, string orderno, bool? managercheck, bool? cwcheck, bool? iszd, string parentorderno, int? statues, int Page, string sortKey,
          out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_order_g_topmanagercheck {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10}"
                              , "NULL"
                              , ToQuote(ordername)
                              , ToQuote(orderno)
                              , "NULL"
                              , managercheck.HasValue ? ToQuote(managercheck.Value) : "NULL"
                              , cwcheck.HasValue ? ToQuote(cwcheck.Value) : "NULL"
                              , iszd.HasValue ? ToQuote(iszd.Value) : "NULL"
                              , ToQuote(parentorderno)

                              , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                              , ToQuote(Page)
                              , ToQuote(sortKey)

                           );
            try
            {

                IList<Order> Orders = GetOrders(sql, Page, null, out paing);

                return Orders;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }


        public IList<Order> Get(string startime, string endtime, string orderno, bool iskp, bool issk, string customshortname, string projectname, string company, int? statues, int page, string sortkey, out PaginationInfo paing)
        {
            string sql = string.Format("EXEC sp_Order_g2 {0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10}"

                             , ToQuote(startime)
                             , ToQuote(endtime)
                             , ToQuote(orderno)
                             , ToQuote(iskp)
                             , ToQuote(issk)
                             , ToQuote(customshortname)
                             , ToQuote(projectname)
                             , ToQuote(company)
                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(page)
                             , ToQuote(sortkey)

                          );
            try
            {

                IList<Order> Orders = GetOrders(sql, page, null, out paing);

                return Orders;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }


        #endregion
    }
}
