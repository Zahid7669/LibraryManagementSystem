using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication1.user
{
    public partial class user_view_booking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\BATPC\Desktop\PT3\LibraryManagementSystem\WebApplication1\WebApplication1\App_Data\lms.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Page.Request.QueryString["id"];
            string carimage = Page.Request.QueryString["carimage"];
            string carmodel = Page.Request.QueryString["carmodel"];
            string carnumber = Page.Request.QueryString["carnumber"];
            string rent = Page.Request.QueryString["rent"];
            string date = Page.Request.QueryString["date"];
            string username = Session["student"].ToString();


            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            if (Session["student"] == null)
            {
                Response.Redirect("user_login.aspx");
            }

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into booking values('"+ id + "', '" + carmodel + "', '" + carimage + "', '" + carnumber + "', '" + date + "', '" + rent + "', 'pending', '" + username +"' )";
            cmd.ExecuteNonQuery();


        }
    }
}