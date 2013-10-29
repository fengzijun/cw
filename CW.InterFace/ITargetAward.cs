// -----------------------------------------------------------------------
// <copyright file="ITargetAward.cs" company="">
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
    public interface ITargetAward
    {
        #region * CRUD *

        /// <summary>
        /// Create a new TargetAward
        /// </summary>
        /// <param name="newTargetAward">new TargetAward</param>
        /// <returns>new TargetAward id</returns>
        Guid Create(TargetAward newTargetAward);

        /// <summary>
        /// Update an existing TargetAward
        /// </summary>
        /// <param name="thisTargetAward">TargetAward</param>
        /// <returns>bool</returns>
        bool Update(TargetAward thisTargetAward);

        /// <summary>
        /// Delete an existing TargetAward
        /// </summary>
        /// <param name="thisTargetAward">TargetAward</param>
        /// <returns>bool</returns>
        bool Delete(TargetAward thisTargetAward);


        /// <summary>
        /// Check if a TargetAward already exists
        /// </summary>
        /// <param name="name">TargetAward Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a TargetAward by id
        /// </summary>
        /// <param name="id">TargetAward id</param>
        /// <returns>TargetAward</returns>
        TargetAward Get(Guid id);

        /// <summary>
        /// Get all TargetAwards
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="TargetAward">current TargetAward</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<TargetAward> Get(int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false);



        #endregion
    }
}
