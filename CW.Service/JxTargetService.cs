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
    public class jxtargetService : BaseService, IJxTarget
    {
        #region private function

        /// <summary>
        /// Don't repeat yourself! This private function is for jxtargetd by all query public functions
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="pg"></param>
        /// <returns></returns>
        IList<jxtarget> Getjxtargets(string sql, int page, string sortKey, out PaginationInfo paging)
        {
            using (DataSet ds = SqlHelper.ExecuteDataset(ConnectStr, CommandType.Text, sql))
            {
                if (ds == null || ds.Tables.Count != 2)
                {
                    throw new Exception("SQL execution failed");
                }
                else
                {
                    List<jxtarget> jxtargets = new List<jxtarget>();

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        jxtarget jxtarget = new jxtarget()
                        {
                            ID = new Guid(dr["id"].ToString()),
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
                            company = ParseStr(dr["thrsection"]),
                            Createby = ParseStr(dr["Createby"]),
                            Createtime = ParseStr(dr["Createtime"]),
                            Updateby = ParseStr(dr["Updateby"]),
                            Updatetime = ParseStr(dr["Updatetime"])
                        };

                        jxtargets.Add(jxtarget);
                    }


                    paging = new PaginationInfo()
                    {
                        Current = page,
                        Size = ParseInt(ds.Tables[1].Rows[0]["pagesize"]),
                        TotalRecords = ParseInt(ds.Tables[1].Rows[0]["totalrecords"]),
                        TotalPages = (int)Math.Ceiling(ParseInt(ds.Tables[1].Rows[0]["totalrecords"]) /
                        ParseFloat(ds.Tables[1].Rows[0]["pagesize"]))
                    };

                    return jxtargets;
                }
            }
        }

        #endregion

        #region * CRUD *

      

        /// <summary>
        /// Get all jxtargets
        /// </summary>
        /// <param name="activated">activated?</param>
        /// <param name="jxtarget">current jxtarget</param>
        /// <param name="sortKey">sort key</param>
        /// <returns></returns>
        public IList<jxtarget> Get(string company,string businesstype, int? statues, int Page, string sortKey,
                   out PaginationInfo paing, bool isfuzzy = false)
        {
            string sql = string.Format("EXEC sp_jx_target_g {0},{1},{2},{3},{4},{5}"
                             , "NULL"
                              , ToQuote(company)
                             , ToQuote(businesstype)
                       
                             , statues.HasValue ? ToQuote(statues.Value) : "NULL"
                             , ToQuote(Page)
                             , ToQuote(sortKey)



                         );

            try
            {

                IList<jxtarget> jxtargets = Getjxtargets(sql, Page, null, out paing);

                return jxtargets;
            }
            catch (Exception ex)
            {
                throw new Exception("SQL execution failed", ex);
            }
        }



        #endregion
    }
}
