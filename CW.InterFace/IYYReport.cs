// -----------------------------------------------------------------------
// <copyright file="IYYReport.cs" company="">
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
    public interface IYYReport
    {
        #region * CRUD *

        /// <summary>
        /// Create a new YYReport
        /// </summary>
        /// <param name="newYYReport">new YYReport</param>
        /// <returns>new YYReport id</returns>
        Guid Create(YYReport newYYReport);

        /// <summary>
        /// Update an existing YYReport
        /// </summary>
        /// <param name="thisYYReport">YYReport</param>
        /// <returns>bool</returns>
        bool Update(YYReport thisYYReport);

        /// <summary>
        /// Delete an existing YYReport
        /// </summary>
        /// <param name="thisYYReport">YYReport</param>
        /// <returns>bool</returns>
        bool Delete(YYReport thisYYReport);


        /// <summary>
        /// Check if a YYReport already exists
        /// </summary>
        /// <param name="name">YYReport Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a YYReport by id
        /// </summary>
        /// <param name="id">YYReport id</param>
        /// <returns>YYReport</returns>
        YYReport Get(Guid id);

        /// <summary>
        /// Get all YYReports
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="YYReport">current YYReport</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<YYReport> Get(int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false);

        IList<YYReport> Get(string startime, string endtime, out PaginationInfo paing);
        #endregion
    }
}
