using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;

namespace CW.InterFace
{
    public interface IBusinessMoneyRequest
    {
        #region * CRUD *

        /// <summary>
        /// Create a new BusinessMoneyRequest
        /// </summary>
        /// <param name="newBusinessMoneyRequest">new BusinessMoneyRequest</param>
        /// <returns>new BusinessMoneyRequest id</returns>
        Guid Create(BusinessMoneyRequest newBusinessMoneyRequest);

        /// <summary>
        /// Update an existing BusinessMoneyRequest
        /// </summary>
        /// <param name="thisBusinessMoneyRequest">BusinessMoneyRequest</param>
        /// <returns>bool</returns>
        bool Update(BusinessMoneyRequest thisBusinessMoneyRequest);

        /// <summary>
        /// Delete an existing BusinessMoneyRequest
        /// </summary>
        /// <param name="thisBusinessMoneyRequest">BusinessMoneyRequest</param>
        /// <returns>bool</returns>
        bool Delete(BusinessMoneyRequest thisBusinessMoneyRequest);


        /// <summary>
        /// Check if a BusinessMoneyRequest already exists
        /// </summary>
        /// <param name="name">BusinessMoneyRequest Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a BusinessMoneyRequest by id
        /// </summary>
        /// <param name="id">BusinessMoneyRequest id</param>
        /// <returns>BusinessMoneyRequest</returns>
        BusinessMoneyRequest Get(Guid id);

        /// <summary>
        /// Get all BusinessMoneyRequests
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="BusinessMoneyRequest">current BusinessMoneyRequest</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<BusinessMoneyRequest> Get(string orderno, string username, bool? ismanagercheck, bool? istopmanagercheck, bool? isjz, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false);


        #endregion
    }
}
