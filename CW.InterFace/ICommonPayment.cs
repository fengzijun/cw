// -----------------------------------------------------------------------
// <copyright file="ICommonPayment.cs" company="">
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
    public interface ICommonPayment
    {
        #region * CRUD *

        /// <summary>
        /// Create a new CommonPayment
        /// </summary>
        /// <param name="newCommonPayment">new CommonPayment</param>
        /// <returns>new CommonPayment id</returns>
        Guid Create(CommonPayment newCommonPayment);

        /// <summary>
        /// Update an existing CommonPayment
        /// </summary>
        /// <param name="thisCommonPayment">CommonPayment</param>
        /// <returns>bool</returns>
        bool Update(CommonPayment thisCommonPayment);

        /// <summary>
        /// Delete an existing CommonPayment
        /// </summary>
        /// <param name="thisCommonPayment">CommonPayment</param>
        /// <returns>bool</returns>
        bool Delete(CommonPayment thisCommonPayment);


        /// <summary>
        /// Check if a CommonPayment already exists
        /// </summary>
        /// <param name="name">CommonPayment Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a CommonPayment by id
        /// </summary>
        /// <param name="id">CommonPayment id</param>
        /// <returns>CommonPayment</returns>
        CommonPayment Get(Guid id);

        /// <summary>
        /// Get all CommonPayments
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="CommonPayment">current CommonPayment</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<CommonPayment> Get(bool? ismanagercheck, bool? istopmanagercheck, bool? isjz, bool? iscwcheck, int? statues, int Page, string sortKey,
                    out PaginationInfo paing, bool isfuzzy = false);


        #endregion
    }
}
