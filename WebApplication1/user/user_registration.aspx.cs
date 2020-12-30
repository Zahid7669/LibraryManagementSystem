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
    public partial class user_registration : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\BATPC\Desktop\PT3\LibraryManagementSystem\WebApplication1\WebApplication1\App_Data\lms.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            int count = 0;
            int count2 = 0;
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from user_registration where enrollment_no='" + enrollmentno.Text + "'";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            count = Convert.ToInt32(dt1.Rows.Count.ToString());

            if (count > 0)
            {
                Response.Write("<script>alert('record enrollment no already registered')</script>");
            }
            else {

                // this is for checking username unique
                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "select * from user_registration where username='" + username.Text + "'";
                cmd2.ExecuteNonQuery();
                DataTable dt2 = new DataTable();
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                da2.Fill(dt2);
                count2 = Convert.ToInt32(dt2.Rows.Count.ToString());
                if (count2 > 0)
                {
                    Response.Write("<script>alert('Username has alreadly registered')</script>");
                }
                else
                {
                // end here for checking username unique

                    string path = "";
                    f1.SaveAs(Request.PhysicalApplicationPath + "/user/user_img/" + f1.FileName.ToString());
                    path = "user_img/" + f1.FileName.ToString();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into user_registration values('"+firstname.Text+"','"+lastname.Text+"','"+enrollmentno.Text+"','"+username.Text+"','"+password.Text+"','"+email.Text+"','"+contact.Text+"','"+ path.ToString() + "')";
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('record inserted succesfully')</script>");
                }
            }
        }
    }
}