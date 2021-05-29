using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Riya\OneDrive\Documents\Database1.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        Admin_txt.Text = "Welcome to Admin Section! ";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        string s = "select * from Info where role='User'";
        SqlCommand cmd = new SqlCommand(s,cn);
        SqlDataReader sr = cmd.ExecuteReader();
        if (sr.HasRows)
        {
            DataTable dt = new DataTable();
            dt.Load(sr);
            GridView1.DataSource=dt;
            GridView1.DataBind();
        }
        cn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        string s1="select * from Info where User_Name='"+TextBox1.Text+"'";
        SqlDataAdapter sda = new SqlDataAdapter(s1,cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        string s2 = "Delete from Info where User_Name='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(s2,cn);
        cmd.ExecuteNonQuery();
        Response.Write("<script type=\"text/javascript\"> alert('Data Deleted Succesfully!');</script>");
    }
}