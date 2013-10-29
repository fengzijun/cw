using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;

namespace CW.InterFace
{
    public interface IBudget
    {
        #region * CRUD *

        /// <summary>
        /// Create a new Budget
        /// </summary>
        /// <param name="newBudget">new Budget</param>
        /// <returns>new Budget id</returns>
        Guid Create(Budget newBudget);

        /// <summary>
        /// Update an existing Budget
        /// </summary>
        /// <param name="thisBudget">Budget</param>
        /// <returns>bool</returns>
        bool Update(Budget thisBudget);

        /// <summary>
        /// Delete an existing Budget
        /// </summary>
        /// <param name="thisBudget">Budget</param>
        /// <returns>bool</returns>
        bool Delete(Budget thisBudget);


        /// <summary>
        /// Check if a Budget already exists
        /// </summary>
        /// <param name="name">Budget Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a Budget by id
        /// </summary>
        /// <param name="id">Budget id</param>
        /// <returns>Budget</returns>
        Budget Get(Guid id);

        /// <summary>
        /// Get all Budgets
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="Budget">current Budget</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<Budget> Get(string orderno, string name, string manageruser, string orderuser, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false);


        #endregion
    }
}
