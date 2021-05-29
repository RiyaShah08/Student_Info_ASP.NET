using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Riya\OneDrive\Documents\Database1.mdf;Integrated Security=True;Connect Timeout=30");
        cn.Open();
        string s = "select role from Info where User_Name='" + TextBox1.Text.Trim() + "' AND Password='" + TextBox2.Text.Trim() + "'";
        SqlDataAdapter sd = new SqlDataAdapter(s, cn);
        DataTable dt = new DataTable();
        sd.Fill(dt);

        if (dt.Rows.Count== 1)
         {
            if (dt.Rows[0][0].ToString() == "Admin")
            {
                Session["Uname"] = TextBox1.Text;
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Session["name"] = TextBox1.Text;
                Response.Redirect("Welcome.aspx");
            }
        }
        cn.Close();
    }
}
