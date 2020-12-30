using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.admin
{
    public partial class reporting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["librarian"] == null)
            {
                Response.Redirect("login.aspx");
            }

            List<Int32> rents = new List<Int32>();
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\BATPC\Desktop\PT3\LibraryManagementSystem\WebApplication1\WebApplication1\App_Data\lms.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from booking where status='approved'", conn);
            SqlDataReader dr;
            
                conn.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    rents.Add(Int32.Parse(dr["rent"].ToString()));
                }
                dr.Close();
                int totalRents = 0;
                foreach(int i in rents)
                {
                    totalRents += i;
                }
                Session["rents"] = totalRents;

        }
    }
}