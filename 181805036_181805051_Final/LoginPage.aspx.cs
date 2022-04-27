using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//
using System.Data;

namespace _181805036_181805051_Final
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Label2.Text = "Please enter your username and password.";
                return;
            }
            
            DBConnection dbcon = new DBConnection();
            string sqlstr = "select staffID, fName, lName from staff where fName='" + TextBox1.Text + "' and staffID = "+TextBox2.Text; 
            DataSet ds = new DataSet();
            ds = dbcon.getSelect(sqlstr);
            if (ds.Tables[0].Rows.Count != 0)
            {
                Session["id"] = ds.Tables[0].Rows[0]["staffID"].ToString();
                Session["name"] = ds.Tables[0].Rows[0]["fName"].ToString() + " " + ds.Tables[0].Rows[0]["lName"].ToString();
                Response.Redirect("StaffPersonal.aspx");
            }

            dbcon = new DBConnection();
            sqlstr = "select studentID, fName, lName from student where fName='" + TextBox1.Text + "' and studentID = " + TextBox2.Text; 
            ds = new DataSet();
            ds = dbcon.getSelect(sqlstr);
            if (ds.Tables[0].Rows.Count != 0)
            {
                Session["id"] = ds.Tables[0].Rows[0]["studentID"].ToString();
                Session["name"] = ds.Tables[0].Rows[0]["fName"].ToString() + " " + ds.Tables[0].Rows[0]["lName"].ToString();
                Response.Redirect("StudentPersonal.aspx");
            }
            Label2.Text = "Wrong username or password!";
        }
    }
}