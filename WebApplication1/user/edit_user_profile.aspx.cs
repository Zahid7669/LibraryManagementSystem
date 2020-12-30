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
    public partial class edit_user_profile : System.Web.UI.Page
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

            if (Session["student"] == null)
            {
                Response.Redirect("login.aspx");
            }

            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            if (IsPostBack) return;

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from user_registration where id="+id+"";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach(DataRow dr in dt.Rows)
            {
                firstname.Text = dr["firstname"].ToString();
                lastname.Text = dr["lastname"].ToString();
                email.Text = dr["email"].ToString();
                contact.Text = dr["contact"].ToString();
                username.Text = dr["username"].ToString();
                password.Text = dr["password"].ToString();
                user_img.Text = dr["user_img"].ToString();
            }
           
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            string path = "";
           

            if (fo.FileName.ToString() != "")
            {
                fo.SaveAs(Request.PhysicalApplicationPath + "/user/user_img/" + fo.FileName.ToString());
                path = "user_img/" + fo.FileName.ToString();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update user_registration set firstname='"+ firstname.Text+ "', lastname='" + lastname.Text + "',username='" + username.Text + "',password='" + password.Text + "', email='" + email.Text + "',contact='" + contact.Text + "',user_img='" + path.ToString()+ "' where id = " + id+"";
                cmd.ExecuteNonQuery();
            }

            if (fo.FileName.ToString() == "")
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update user_registration set firstname='" + firstname.Text + "', lastname='" + lastname.Text + "',username='" + username.Text + "',password='" + password.Text + "', email='" + email.Text + "',contact='" + contact.Text + "' where id = " + id + "";
                cmd.ExecuteNonQuery();
            }


            Response.Redirect("view_user_profile.aspx");
        }
    }
}