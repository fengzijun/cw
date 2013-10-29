using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;

namespace CW.InterFace
{
    public interface IBusinessPayRequest
    {
        #region * CRUD *

        /// <summary>
        /// Create a new BusinessPayRequest
        /// </summary>
        /// <param name="newBusinessPayRequest">new BusinessPayRequest</param>
        /// <returns>new BusinessPayRequest id</returns>
        Guid Create(BusinessPayRequest newBusinessPayRequest);

        /// <summary>
        /// Update an existing BusinessPayRequest
        /// </summary>
        /// <param name="thisBusinessPayRequest">BusinessPayRequest</param>
        /// <returns>bool</returns>
        bool Update(BusinessPayRequest thisBusinessPayRequest);

        /// <summary>
        /// Delete an existing BusinessPayRequest
        /// </summary>
        /// <param name="thisBusinessPayRequest">BusinessPayRequest</param>
        /// <returns>bool</returns>
        bool Delete(BusinessPayRequest thisBusinessPayRequest);


        /// <summary>
        /// Check if a BusinessPayRequest already exists
        /// </summary>
        /// <param name="name">BusinessPayRequest Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a BusinessPayRequest by id
        /// </summary>
        /// <param name="id">BusinessPayRequest id</param>
        /// <returns>BusinessPayRequest</returns>
        BusinessPayRequest Get(Guid id);

        /// <summary>
        /// Get all BusinessPayRequests
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="BusinessPayRequest">current BusinessPayRequest</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<BusinessPayRequest> Get(string orderno,string username,bool? ismanagercheck, bool? istopmanagercheck, bool? iscwcheck, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false);


        #endregion
    }
}
