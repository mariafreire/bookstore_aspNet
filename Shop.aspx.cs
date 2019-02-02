using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string mainconn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(mainconn);
        sqlconn.Open();
        SqlCommand sqlcomm = new SqlCommand();
        string sqlquery = "select * from Product where (book LIKE '%" + TextBox1.Text.ToString() + "%')";
        //string sqlquery = "select * from Product where book=@TextBox1";
        sqlcomm.CommandText = sqlquery;
        sqlcomm.Connection = sqlconn;
        sqlcomm.Parameters.AddWithValue("@TextBox1", TextBox1.Text);
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
        sda.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind(); 
    }
}