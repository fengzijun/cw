using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;


namespace CW.InterFace
{
    public interface IUser
    {
        #region * CRUD *

        /// <summary>
        /// Create a new user
        /// </summary>
        /// <param name="newuser">new user</param>
        /// <returns>new user id</returns>
        bool Create(user newuser);

        /// <summary>
        /// Update an existing user
        /// </summary>
        /// <param name="thisuser">user</param>
        /// <returns>bool</returns>
        bool Update(user thisuser);

        /// <summary>
        /// Delete an existing user
        /// </summary>
        /// <param name="thisuser">user</param>
        /// <returns>bool</returns>
        bool Delete(user thisuser);


        /// <summary>
        /// Check if a user already exists
        /// </summary>
        /// <param name="name">user Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a user by id
        /// </summary>
        /// <param name="id">user id</param>
        /// <returns>user</returns>
        user Get(int id);

        /// <summary>
        /// Get all users
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="user">current user</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<user> Get(string username,int? roleid, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false);



        #endregion
    }
}
