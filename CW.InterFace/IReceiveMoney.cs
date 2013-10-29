using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;

namespace CW.InterFace
{
    public interface IReceiveMoney
    {
        #region * CRUD *

        /// <summary>
        /// Create a new ReceiveMoney
        /// </summary>
        /// <param name="newReceiveMoney">new ReceiveMoney</param>
        /// <returns>new ReceiveMoney id</returns>
        Guid Create(ReceiveMoney newReceiveMoney);

        /// <summary>
        /// Update an existing ReceiveMoney
        /// </summary>
        /// <param name="thisReceiveMoney">ReceiveMoney</param>
        /// <returns>bool</returns>
        bool Update(ReceiveMoney thisReceiveMoney);

        /// <summary>
        /// Delete an existing ReceiveMoney
        /// </summary>
        /// <param name="thisReceiveMoney">ReceiveMoney</param>
        /// <returns>bool</returns>
        bool Delete(ReceiveMoney thisReceiveMoney);


        /// <summary>
        /// Check if a ReceiveMoney already exists
        /// </summary>
        /// <param name="name">ReceiveMoney Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a ReceiveMoney by id
        /// </summary>
        /// <param name="id">ReceiveMoney id</param>
        /// <returns>ReceiveMoney</returns>
        ReceiveMoney Get(Guid id);

      
        /// <summary>
        /// Get all ReceiveMoneys
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="ReceiveMoney">current ReceiveMoney</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<ReceiveMoney> Get(string orderno, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false);

        #endregion
    }
}
