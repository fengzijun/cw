using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;

namespace CW.InterFace
{
    public interface IRole
    {
        #region * CRUD *

        /// <summary>
        /// Create a new role
        /// </summary>
        /// <param name="newrole">new role</param>
        /// <returns>new role id</returns>
        bool Create(role newrole);

        /// <summary>
        /// Update an existing role
        /// </summary>
        /// <param name="thisrole">role</param>
        /// <returns>bool</returns>
        bool Update(role thisrole);

        /// <summary>
        /// Delete an existing role
        /// </summary>
        /// <param name="thisrole">role</param>
        /// <returns>bool</returns>
        bool Delete(role thisrole);


        /// <summary>
        /// Check if a role already exists
        /// </summary>
        /// <param name="name">role Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a role by id
        /// </summary>
        /// <param name="id">role id</param>
        /// <returns>role</returns>
        role Get(int id);

        /// <summary>
        /// Get all roles
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="role">current role</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<role> Get(string rolename, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false);



        #endregion
    }
}
