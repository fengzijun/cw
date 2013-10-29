using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.Core;

namespace CW.InterFace
{
    public interface IMenu
    {
        #region * CRUD *

        /// <summary>
        /// Create a new menu
        /// </summary>
        /// <param name="newmenu">new menu</param>
        /// <returns>new menu id</returns>
        bool Create(menu newmenu);

        /// <summary>
        /// Update an existing menu
        /// </summary>
        /// <param name="thismenu">menu</param>
        /// <returns>bool</returns>
        bool Update(menu thismenu);

        /// <summary>
        /// Delete an existing menu
        /// </summary>
        /// <param name="thismenu">menu</param>
        /// <returns>bool</returns>
        bool Delete(menu thismenu);


        /// <summary>
        /// Check if a menu already exists
        /// </summary>
        /// <param name="name">menu Name</param>
        /// <returns>bool</returns>
        bool Exists(string name);

        /// <summary>
        /// Get a menu by id
        /// </summary>
        /// <param name="id">menu id</param>
        /// <returns>menu</returns>
        menu Get(int id);

        /// <summary>
        /// Get all menus
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="menu">current menu</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        IList<menu> Get(string menuname, int? parentid, int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false);

        IList<menu> GetAdminMenu();

        IList<menu>  GetMenu(string roleidstr);
        #endregion
    }
}
