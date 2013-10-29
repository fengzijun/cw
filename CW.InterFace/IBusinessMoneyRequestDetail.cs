using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;

namespace CW.InterFace
{
    public interface IBusinessMoneyRequestDetail
    {
        #region * CRUD *

        /// <summary>
        /// Create a new BusinessMoneyRequestDetail
        /// </summary>
        /// <param name="newBusinessMoneyRequestDetail">new BusinessMoneyRequestDetail</param>
        /// <returns>new BusinessMoneyRequestDetail id</returns>
        Guid Create(BusinessMoneyRequestDetail newBusinessMoneyRequestDetail);

        /// <summary>
        /// Update an existing BusinessMoneyRequestDetail
        /// </summary>
        /// <param name="thisBusinessMoneyRequestDetail">BusinessMoneyRequestDetail</param>
        /// <returns>bool</returns>
        bool Update(BusinessMoneyRequestDetail thisBusinessMoneyRequestDetail);

        /// <summary>
        /// Delete an existing BusinessMoneyRequestDetail
        /// </summary>
        /// <param name="thisBusinessMoneyRequestDetail">BusinessMoneyRequestDetail</param>
        /// <returns>bool</returns>
        bool Delete(BusinessMoneyRequestDetail thisBusinessMoneyRequestDetail);


        /// <summary>
        /// Check if a BusinessMoneyRequestDetail already exists
        /// </summary>
        /// <param name="name">BusinessMoneyRequestDetail Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a BusinessMoneyRequestDetail by id
        /// </summary>
        /// <param name="id">BusinessMoneyRequestDetail id</param>
        /// <returns>BusinessMoneyRequestDetail</returns>
        BusinessMoneyRequestDetail Get(Guid id);

        /// <summary>
        /// Get all BusinessMoneyRequestDetails
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="BusinessMoneyRequestDetail">current BusinessMoneyRequestDetail</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<BusinessMoneyRequestDetail> Get(Guid? businessid, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false);


        #endregion
    }
}
