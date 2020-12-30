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
    public partial class edit_booking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\BATPC\Desktop\PT3\LibraryManagementSystem\WebApplication1\WebApplication1\App_Data\lms.mdf;Integrated Security=True");
        int id;
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

            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            if (IsPostBack) return;

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from booking where id="+id+"";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach(DataRow dr in dt.Rows)
            {
                carmodel.Text = dr["carmodel"].ToString();
                carnumber.Text = dr["carnumber"].ToString();
                date.Text = dr["date"].ToString();
                rent.Text = dr["rent"].ToString();
                status.Text = dr["status"].ToString();
                carimage.Text = dr["carimage"].ToString();
            }
           
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            string path = "";
           

            if (fo.FileName.ToString() != "")
            {
                fo.SaveAs(Request.PhysicalApplicationPath + "/admin/cars_images/" + fo.FileName.ToString());
                path = "cars_images/" + fo.FileName.ToString();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update booking set status='" + status.Text + "' where id = " + id+"";
                cmd.ExecuteNonQuery();
            }

            if (fo.FileName.ToString() == "")
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update booking set status='" + status.Text + "' where id = " + id + "";
                cmd.ExecuteNonQuery();
            }


            Response.Redirect("manage_booking.aspx");
        }
    }
}