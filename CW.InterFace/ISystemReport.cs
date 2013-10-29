// -----------------------------------------------------------------------
// <copyright file="ISystemReport.cs" company="">
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
    public interface ISystemReport
    {
        #region * CRUD *

        /// <summary>
        /// Create a new SystemReport
        /// </summary>
        /// <param name="newSystemReport">new SystemReport</param>
        /// <returns>new SystemReport id</returns>
        Guid Create(SystemReport newSystemReport);

        /// <summary>
        /// Update an existing SystemReport
        /// </summary>
        /// <param name="thisSystemReport">SystemReport</param>
        /// <returns>bool</returns>
        bool Update(SystemReport thisSystemReport);

        /// <summary>
        /// Delete an existing SystemReport
        /// </summary>
        /// <param name="thisSystemReport">SystemReport</param>
        /// <returns>bool</returns>
        bool Delete(SystemReport thisSystemReport);


        /// <summary>
        /// Check if a SystemReport already exists
        /// </summary>
        /// <param name="name">SystemReport Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a SystemReport by id
        /// </summary>
        /// <param name="id">SystemReport id</param>
        /// <returns>SystemReport</returns>
        SystemReport Get(Guid id);

        /// <summary>
        /// Get all SystemReports
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="SystemReport">current SystemReport</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<SystemReport> Get(int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false);

        IList<SystemReport> Get(string time,
          out PaginationInfo paing);
        #endregion
    }
}
