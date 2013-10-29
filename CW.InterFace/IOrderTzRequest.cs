// -----------------------------------------------------------------------
// <copyright file="IOrderTzRequest.cs" company="">
// TODO: Update copyright text.
// </copyright>
// -----------------------------------------------------------------------

namespace CW.InterFace
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using CW.Model;
    using CW.Core;

    /// <summary>
    /// TODO: Update summary.
    /// </summary>
    public interface IOrderTzRequest
    {
        #region * CRUD *

        /// <summary>
        /// Create a new OrderTzRequest
        /// </summary>
        /// <param name="newOrderTzRequest">new OrderTzRequest</param>
        /// <returns>new OrderTzRequest id</returns>
        Guid Create(OrderTzRequest newOrderTzRequest);

        /// <summary>
        /// Update an existing OrderTzRequest
        /// </summary>
        /// <param name="thisOrderTzRequest">OrderTzRequest</param>
        /// <returns>bool</returns>
        bool Update(OrderTzRequest thisOrderTzRequest);

        /// <summary>
        /// Delete an existing OrderTzRequest
        /// </summary>
        /// <param name="thisOrderTzRequest">OrderTzRequest</param>
        /// <returns>bool</returns>
        bool Delete(OrderTzRequest thisOrderTzRequest);


        /// <summary>
        /// Check if a OrderTzRequest already exists
        /// </summary>
        /// <param name="name">OrderTzRequest Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a OrderTzRequest by id
        /// </summary>
        /// <param name="id">OrderTzRequest id</param>
        /// <returns>OrderTzRequest</returns>
        OrderTzRequest Get(Guid id);

        /// <summary>
        /// Get all OrderTzRequests
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="OrderTzRequest">current OrderTzRequest</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<OrderTzRequest> Get(string orderno, string username, bool? managercheck, bool? topmanagercheck, int? statues, int Page, string sortKey,
                      out PaginationInfo paing, bool isfuzzy = false);


        #endregion
    }
}
