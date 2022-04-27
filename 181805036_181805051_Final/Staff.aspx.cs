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
    public partial class Staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack == false)
            {
                DBConnection dbcon = new DBConnection();
                DataSet ds = new DataSet();
                ds = dbcon.getSelect("select fName +' '+lname as name, staffId from STAFF ORDER BY fName,lName");
                DropDownList1.DataTextField = ds.Tables[0].Columns["name"].ToString(); // text field name of table dispalyed in dropdown
                DropDownList1.DataValueField = ds.Tables[0].Columns["staffID"].ToString(); // to retrive specific textfield name
                DropDownList1.DataSource = ds.Tables[0]; //assigning datasource to the dropdownlist
                DropDownList1.DataBind(); //binding dropdownlist
                DropDownList1.Items.Insert(0, new ListItem(String.Empty, String.Empty));
                DropDownList1.SelectedIndex = 0;

                PopulateCheckList();

            }


        }

        private void PopulateCheckList()
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager
                .ConnectionStrings["conStr"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT cCode,cName from COURSE order by cCode";
                    cmd.Connection = conn;
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            ListItem item = new ListItem();
                            item.Text = sdr["cName"].ToString();
                            item.Value = sdr["cCode"].ToString();
                            item.Selected = false;
                            CheckBoxList1.Items.Add(item);
                        }
                    }
                    conn.Close();
                }
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            DBConnection dbcon = new DBConnection();
            DataSet ds = new DataSet();
            string sqlstr;
            sqlstr = "select fName,lName from STUDENT where advisorID=" + DropDownList1.SelectedItem.Value
            + " order by fName,lName";

            ds = dbcon.getSelect(sqlstr);

            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                    Label1.Text = Label1.Text + item.Value + ",";
            }
        }
    }
}