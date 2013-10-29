// -----------------------------------------------------------------------
// <copyright file="ILog.cs" company="">
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
    public interface ILog
    {
        #region * CRUD *

        /// <summary>
        /// Create a new Log
        /// </summary>
        /// <param name="newLog">new Log</param>
        /// <returns>new Log id</returns>
        Guid Create(Log newLog);

        /// <summary>
        /// Update an existing Log
        /// </summary>
        /// <param name="thisLog">Log</param>
        /// <returns>bool</returns>
        bool Update(Log thisLog);

        /// <summary>
        /// Delete an existing Log
        /// </summary>
        /// <param name="thisLog">Log</param>
        /// <returns>bool</returns>
        bool Delete(Log thisLog);


        /// <summary>
        /// Check if a Log already exists
        /// </summary>
        /// <param name="name">Log Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a Log by id
        /// </summary>
        /// <param name="id">Log id</param>
        /// <returns>Log</returns>
        Log Get(Guid id);

        /// <summary>
        /// Get all Logs
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="Log">current Log</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<Log> Get(string type, int? statues, int Page, string sortKey,
              out PaginationInfo paing, bool isfuzzy = false);


        #endregion
    }
}
