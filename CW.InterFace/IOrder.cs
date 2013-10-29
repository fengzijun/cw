using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;

namespace CW.InterFace
{
    public interface IOrder
    {
        #region * CRUD *

        /// <summary>
        /// Create a new Order
        /// </summary>
        /// <param name="newOrder">new Order</param>
        /// <returns>new Order id</returns>
        Guid Create(Order newOrder);

        /// <summary>
        /// Update an existing Order
        /// </summary>
        /// <param name="thisOrder">Order</param>
        /// <returns>bool</returns>
        bool Update(Order thisOrder);

        /// <summary>
        /// Delete an existing Order
        /// </summary>
        /// <param name="thisOrder">Order</param>
        /// <returns>bool</returns>
        bool Delete(Order thisOrder);


        /// <summary>
        /// Check if a Order already exists
        /// </summary>
        /// <param name="name">Order Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a Order by id
        /// </summary>
        /// <param name="id">Order id</param>
        /// <returns>Order</returns>
        Order Get(Guid id);

        Order GetByOrderno(string orderno);
        /// <summary>
        /// Get all Orders
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="Order">current Order</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<Order> Get(string ordername, string orderno,string username, bool? managercheck, bool? cwcheck, bool? iszd, string parentorderno, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false);

        IList<Order> GetMangerCheck(string ordername, string orderno, bool? managercheck, bool? cwcheck, bool? iszd, string parentorderno, int? statues, int Page, string sortKey,
           out PaginationInfo paing, bool isfuzzy = false);

        IList<Order> GetTopMangerCheck(string ordername, string orderno, bool? managercheck, bool? cwcheck, bool? iszd, string parentorderno, int? statues, int Page, string sortKey,
          out PaginationInfo paing, bool isfuzzy = false);
        /// <summary>
        /// 
        /// </summary>
        /// <param name="startime"></param>
        /// <param name="endtime"></param>
        /// <param name="orderno"></param>
        /// <param name="iskp"></param>
        /// <param name="issk"></param>
        /// <param name="customshortname"></param>
        /// <param name="projectname"></param>
        /// <param name="company"></param>
        /// <param name="statues"></param>
        /// <param name="page"></param>
        /// <param name="sortkey"></param>
        /// <param name="paing"></param>
        /// <returns></returns>
        IList<Order> Get(string startime, string endtime, string orderno, bool iskp, bool issk, string customshortname, string projectname, string company, int? statues, int page, string sortkey, out PaginationInfo paing);
        #endregion
    }
}
