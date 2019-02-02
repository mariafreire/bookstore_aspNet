using System;
using System.Collections.Generic;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignIn : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Label1.Text == "Username already exists")
        {
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            Label1.Text = "Type other username";
        }
        else
        {
            SqlDataSource1.InsertCommand = "insert into [User](username, password, confirm_password, zipcode) values('" + TextBox1.Text.ToString() + "', '" + TextBox2.Text.ToString() + "', '" + TextBox3.Text.ToString() + "', '" + TextBox4.Text.ToString() + "')";
            SqlDataSource1.Insert();

            Response.Redirect("SignIn.aspx");
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Maria\Documents\mwBookstore\App_Data\GreenHouse.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        Object returnValue;

        cmd.CommandText = "select count(1) from [User] where username=@TextBox1";
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@TextBox1", TextBox1.Text);
        cmd.Connection = con;

        con.Open();
        returnValue = cmd.ExecuteScalar();
        con.Close();

        if (Convert.ToInt32(returnValue) > 0)
        { 
            Label1.Text = "Username already exists";
        Label1.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            Label1.Text = "Username available";
            Label1.ForeColor = System.Drawing.Color.RoyalBlue;
        }   
    }
}