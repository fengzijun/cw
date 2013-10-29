// -----------------------------------------------------------------------
// <copyright file="IMoneyReport.cs" company="">
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
    public interface IMoneyReport
    {
        #region * CRUD *

        /// <summary>
        /// Create a new MoneyReport
        /// </summary>
        /// <param name="newMoneyReport">new MoneyReport</param>
        /// <returns>new MoneyReport id</returns>
        Guid Create(MoneyReport newMoneyReport);

        /// <summary>
        /// Update an existing MoneyReport
        /// </summary>
        /// <param name="thisMoneyReport">MoneyReport</param>
        /// <returns>bool</returns>
        bool Update(MoneyReport thisMoneyReport);

        /// <summary>
        /// Delete an existing MoneyReport
        /// </summary>
        /// <param name="thisMoneyReport">MoneyReport</param>
        /// <returns>bool</returns>
        bool Delete(MoneyReport thisMoneyReport);


        /// <summary>
        /// Check if a MoneyReport already exists
        /// </summary>
        /// <param name="name">MoneyReport Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a MoneyReport by id
        /// </summary>
        /// <param name="id">MoneyReport id</param>
        /// <returns>MoneyReport</returns>
        MoneyReport Get(Guid id);

        /// <summary>
        /// Get all MoneyReports
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="MoneyReport">current MoneyReport</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<MoneyReport> Get(int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false);

        IList<MoneyReport> GetCompany(string time, out PaginationInfo paing);

        IList<MoneyReportUser> GetUser(string time, out PaginationInfo paing);
        #endregion
    }
}
