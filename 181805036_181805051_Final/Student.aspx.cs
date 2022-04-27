using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace _181805036_181805051_Final
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBConnection dbCon = new DBConnection();
            string sqlstr = "select fName, lName, deptCode from student order by fName, lName";
            DataSet ds = dbCon.getSelect(sqlstr);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
    }
}