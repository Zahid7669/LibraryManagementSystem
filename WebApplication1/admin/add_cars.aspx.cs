using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1.admin
{
    public partial class add_cars : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\BATPC\Desktop\PT3\LibraryManagementSystem\WebApplication1\WebApplication1\App_Data\lms.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (Session["librarian"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {

            string path = "";
            fo.SaveAs(Request.PhysicalApplicationPath + "/admin/cars_images/" + fo.FileName.ToString());
            path = "cars_images/" + fo.FileName.ToString();


            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into cars values('"+carmodel.Text+"','"+path.ToString()+"','"+carnumber.Text+"','"+date.Text+"','"+rent.Text+"','active')";
            cmd.ExecuteNonQuery();

            msg.Style.Add("display", "block");
        }
    }
}