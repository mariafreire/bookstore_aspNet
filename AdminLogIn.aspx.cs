using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
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

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Maria\Documents\mwBookstore\App_Data\GreenHouse.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select * from [User] where username=@TextBox1 and password=@TextBox2 ", con);
        cmd.Parameters.AddWithValue("@TextBox1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@TextBox2", TextBox2.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();

        if (dt.Rows.Count > 0)
        {
            Response.Redirect("~/Management/Default.aspx");
        }
        else
        {
            Label1.Text = "Username and/or password is(are) incorrect(s)";
            Label1.ForeColor = System.Drawing.Color.Red;
        }

    }
}