using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;

namespace CW.InterFace
{
    public interface IKp
    {
        #region * CRUD *

        /// <summary>
        /// Create a new Kp
        /// </summary>
        /// <param name="newKp">new Kp</param>
        /// <returns>new Kp id</returns>
        Guid Create(Kp newKp);

        /// <summary>
        /// Update an existing Kp
        /// </summary>
        /// <param name="thisKp">Kp</param>
        /// <returns>bool</returns>
        bool Update(Kp thisKp);

        /// <summary>
        /// Delete an existing Kp
        /// </summary>
        /// <param name="thisKp">Kp</param>
        /// <returns>bool</returns>
        bool Delete(Kp thisKp);


        /// <summary>
        /// Check if a Kp already exists
        /// </summary>
        /// <param name="name">Kp Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a Kp by id
        /// </summary>
        /// <param name="id">Kp id</param>
        /// <returns>Kp</returns>
        Kp Get(Guid id);

        /// <summary>
        /// Get all Kps
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="Kp">current Kp</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<Kp> Get(string username, string orderno, string kptt, string type, string project, string company, string ywuser, bool? managercheck, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false);

        IList<Kp> GetManagerKps(string orderno, string kptt, string type, string project, string company, string ywuser, bool? managercheck, int? statues, int Page, string sortKey,
                  out PaginationInfo paing, bool isfuzzy = false);

        IList<Kp> GetTopManagerKps(string orderno, string kptt, string type, string project, string company, string ywuser, bool? managercheck, int? statues, int Page, string sortKey,
               out PaginationInfo paing, bool isfuzzy = false);
        #endregion
    }
}
