// -----------------------------------------------------------------------
// <copyright file="ICommonPaymentDetail.cs" company="">
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
    public interface ICommonPaymentDetail
    {
        #region * CRUD *

        /// <summary>
        /// Create a new CommonPaymentDetail
        /// </summary>
        /// <param name="newCommonPaymentDetail">new CommonPaymentDetail</param>
        /// <returns>new CommonPaymentDetail id</returns>
        Guid Create(CommonPaymentDetail newCommonPaymentDetail);

        /// <summary>
        /// Update an existing CommonPaymentDetail
        /// </summary>
        /// <param name="thisCommonPaymentDetail">CommonPaymentDetail</param>
        /// <returns>bool</returns>
        bool Update(CommonPaymentDetail thisCommonPaymentDetail);

        /// <summary>
        /// Delete an existing CommonPaymentDetail
        /// </summary>
        /// <param name="thisCommonPaymentDetail">CommonPaymentDetail</param>
        /// <returns>bool</returns>
        bool Delete(CommonPaymentDetail thisCommonPaymentDetail);


        /// <summary>
        /// Check if a CommonPaymentDetail already exists
        /// </summary>
        /// <param name="name">CommonPaymentDetail Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a CommonPaymentDetail by id
        /// </summary>
        /// <param name="id">CommonPaymentDetail id</param>
        /// <returns>CommonPaymentDetail</returns>
        CommonPaymentDetail Get(Guid id);

        /// <summary>
        /// Get all CommonPaymentDetails
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="CommonPaymentDetail">current CommonPaymentDetail</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<CommonPaymentDetail> Get(Guid? commonpaymentid, int? statues, int Page, string sortKey,
                      out PaginationInfo paing, bool isfuzzy = false);


        #endregion
    }
}
