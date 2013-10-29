using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;

namespace CW.InterFace
{
    public interface IBudgetDetail
    {
        #region * CRUD *

        /// <summary>
        /// Create a new BudgetDetail
        /// </summary>
        /// <param name="newBudgetDetail">new BudgetDetail</param>
        /// <returns>new BudgetDetail id</returns>
        Guid Create(BudgetDetail newBudgetDetail);

        /// <summary>
        /// Update an existing BudgetDetail
        /// </summary>
        /// <param name="thisBudgetDetail">BudgetDetail</param>
        /// <returns>bool</returns>
        bool Update(BudgetDetail thisBudgetDetail);

        /// <summary>
        /// Delete an existing BudgetDetail
        /// </summary>
        /// <param name="thisBudgetDetail">BudgetDetail</param>
        /// <returns>bool</returns>
        bool Delete(BudgetDetail thisBudgetDetail);


        /// <summary>
        /// Check if a BudgetDetail already exists
        /// </summary>
        /// <param name="name">BudgetDetail Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a BudgetDetail by id
        /// </summary>
        /// <param name="id">BudgetDetail id</param>
        /// <returns>BudgetDetail</returns>
        BudgetDetail Get(Guid id);

        /// <summary>
        /// Get all BudgetDetails
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="BudgetDetail">current BudgetDetail</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<BudgetDetail> Get(Guid? budgetid, string name, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false);


        #endregion
    }
}
