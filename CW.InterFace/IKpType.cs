using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;


namespace CW.InterFace
{
    public interface IKpType
    {
        #region * CRUD *

        /// <summary>
        /// Create a new KpType
        /// </summary>
        /// <param name="newKpType">new KpType</param>
        /// <returns>new KpType id</returns>
        Guid Create(KpType newKpType);

        /// <summary>
        /// Update an existing KpType
        /// </summary>
        /// <param name="thisKpType">KpType</param>
        /// <returns>bool</returns>
        bool Update(KpType thisKpType);

        /// <summary>
        /// Delete an existing KpType
        /// </summary>
        /// <param name="thisKpType">KpType</param>
        /// <returns>bool</returns>
        bool Delete(KpType thisKpType);


        /// <summary>
        /// Check if a KpType already exists
        /// </summary>
        /// <param name="name">KpType Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a KpType by id
        /// </summary>
        /// <param name="id">KpType id</param>
        /// <returns>KpType</returns>
        KpType Get(Guid id);

        /// <summary>
        /// Get all KpTypes
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="KpType">current KpType</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<KpType> Get(string name, string type, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false);


        #endregion
    }
}
