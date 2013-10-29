using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CW.Model;
using CW.InterFace;
using CW.Core;
using System.Data;

namespace CW.Service
{
    public class KpTypeService : BaseService, IKpType
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for KpTyped by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<KpType> GetKpTypes(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<KpType> KpTypes = new List<KpType>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        KpType KpType = new KpType()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            name = ParseStr(dr["name"]),
                            projectname = ParseStr(dr["projectname"]),
                            type = ParseStr(dr["type"]),
                            Statues = ParseInt(dr["Statues"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        KpTypes.Add(KpType);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return KpTypes;
                }
            }
        }

        #endregion

        #region * CRUD *

        /// <summary>
        /// Create a new KpType
        /// </summary>
        /// <param name="newKpType">new KpType</param>
        /// <returns>new KpType id</returns>
        public Guid Create(KpType newKpType)
        {
            string sql = string.Format("EXEC sp_KpType_c {0},{1},{2},{3},{4},{5},{6},{7},{8}"
                                        , ToQuote(newKpType.ID)
                                        , ToQuote(newKpType.name)
                                        , ToQuote(newKpType.type)
                                        , ToQuote(newKpType.projectname)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newKpType.Statues)

                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount == 1)
                {
                    return newKpType.ID;
                }
                else
                {
                    throw new Exception("SQL execution failed");
                }

            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Update an existing KpType
        /// </summary>
        /// <param name="thisKpType">KpType</param>
        /// <returns>bool</returns>
        public bool Update(KpType newKpType)
        {
            string sql = string.Format("EXEC sp_KpType_u {0},{1},{2},{3},{4},{5},{6}"
                                     , ToQuote(newKpType.ID)
                                        , ToQuote(newKpType.name)
                                        , ToQuote(newKpType.type)
                                        , ToQuote(newKpType.projectname)
                                        , ToQuote(DateTime.Now)
                                        , ToQuote(CurrentUserName)
                                        , ToQuote(newKpType.Statues)
                                    );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount >= 1)
                {
                    return true;
                }
                else
                {
                    throw new Exception("SQL execution failed");
                }

            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Delete an existing KpType
        /// </summary>
        /// <param name="thisKpType">KpType</param>
        /// <returns>bool</returns>
        public bool Delete(KpType thisKpType)
        {
            string sql = string.Format("EXEC sp_KpType_d {0}"
                                       , ToQuote(thisKpType.ID)


                                   );

            try
            {
                int rowcount = SqlHelper.ExecuteNonQuery(ConnectStr, CommandType.Text, sql);

                if (rowcount >= 1)
                {
                    return true;
                }
                else
                {
                    throw new Exception("SQL execution failed");
                }

            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }


        /// <summary>
        /// Check if a KpType already exists
        /// </summary>
        /// <param name="name">KpType Name</param>
        /// <returns>bool</returns>
        public bool Exists(string name)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Get a KpType by id
        /// </summary>
        /// <param name="id">KpType id</param>
        /// <returns>KpType</returns>
        public KpType Get(Guid id)
        {
            string sql = string.Format("EXEC sp_KpType_g {0},{1},{2},{3},{4},{5}"
                             , ToQuote(id)
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             , "NULL"
                             

                          );

            try
            {
                PaginationInfo paing = new PaginationInfo();
                IList<KpType> KpTypes = GetKpTypes(sql, 0, null, out paing);
                if (KpTypes.Count > 0)
                    return KpTypes[0];
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }

        /// <summary>
        /// Get all KpTypes
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="KpType">current KpType</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<KpType> Get(string name, string type,int? statues, int Page, string sortKey,
            out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_KpType_g {0},{1},{2},{3},{4},{5}"
                            , "NULL"
                             , ToQuote(name)
                             , ToQuote(type)
                             , statues.HasValue?ToQuote(statues.Value):"NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)
                             


                         );

            try
            {

                IList<KpType> KpTypes = GetKpTypes(sql, Page, null, out paing);

                return KpTypes;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
