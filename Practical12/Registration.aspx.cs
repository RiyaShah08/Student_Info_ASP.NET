using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;


public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection sn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Riya\OneDrive\Documents\Database1.mdf;Integrated Security=True;Connect Timeout=30");
        sn.Open();

        string a = "insert into Info(First_Name,Last_Name,User_Name,Email,Password,City,State,Contact_No,Date_of_birth,Address,role) values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox7.Text+"','"+TextBox8.Text+"','"+TextBox9.Text+"','"+TextBox10.Text+"','"+TextBox11.Text+"','"+DropDownList1.Text+"')";
        SqlCommand cmd = new SqlCommand(a, sn);
        Response.Write("<script type=\"text/javascript\"> alert('Data Inserted Succesfully!');</script>");
        cmd.ExecuteNonQuery();
        sn.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text= "";
        TextBox11.Text = "";
    }
}