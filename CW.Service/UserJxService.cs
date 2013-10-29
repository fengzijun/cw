// -----------------------------------------------------------------------
// <copyright file="UserJxService.cs" company="">
// TODO: Update copyright text.
// </copyright>
// -----------------------------------------------------------------------

namespace CW.Service
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using CW.Model;
    using CW.InterFace;
    using CW.Core;
    using System.Data;

    /// <summary>
    /// TODO: Update summary.
    /// </summary>
    public class UserJxService : BaseService, IUserJx
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for UserJxd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<UserJx> GetUserJxs(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<UserJx> UserJxs = new List<UserJx>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        UserJx UserJx = new UserJx()
                        {
                            ID = new Guid(dr["id"].ToString()),
                            name = ParseStr(dr["name"]),
                            businesstype = ParseStr(dr["businesstype"]),
                            firstcomplete = ParseStr(dr["firstcomplete"]),
                            firstsection = ParseStr(dr["firstsection"]),
                            fourcomplete = ParseStr(dr["fourcomplete"]),
                            foursection = ParseStr(dr["foursection"]),
                            seccomplete = ParseStr(dr["seccomplete"]),
                            secsection = ParseStr(dr["secsection"]),
                            thrcomplete = ParseStr(dr["thrcomplete"]),
                            thrsection = ParseStr(dr["thrsection"]),
                            Statues = ParseInt(dr["Statues"]),
                            company = ParseStr(dr["company"]),
                            Createby = ParseStr(dr["Createby"]),
                            firstmoney = ParseNDecimal(dr["firstmoney"]),
                            fourmoney = ParseNDecimal(dr["fourmoney"]),
                            secmoney = ParseNDecimal(dr["secmoney"]),
                            thrmoney = ParseNDecimal(dr["thrmoney"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        UserJxs.Add(UserJx);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return UserJxs;
                }
            }
        }

        #endregion

        #region * CRUD *



        /// <summary>
        /// Get all UserJxs
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="UserJx">current UserJx</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<UserJx> Get(string name, string company, string businesstype, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_user_jx_g {0},{1},{2},{3},{4},{5},{6}"
                             , "NULL"
                              , ToQuote(name)
                              , ToQuote(company)
                             , ToQuote(businesstype)

                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<UserJx> UserJxs = GetUserJxs(sql, Page, null, out paing);

                return UserJxs;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
