using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretKitap.admin
{
    public partial class adminGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=BASAK;Initial Catalog=admin;Integrated Security=True");

            // Login query with parameters to prevent SQL injection
            string query = "SELECT * FROM [dbo].[adminBilgi] WHERE ad = @ad AND sifre = @sifre";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@ad", txtUsername.Text);
            cmd.Parameters.AddWithValue("@sifre", txtPassword.Text);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();



            // Check if username and password match a record
            if (reader.HasRows)
            {
                // Login successful, redirect or display success message
                Response.Write("<script>alert('Giriş başarılı')</script>");
                Response.Redirect("panel.aspx");
            }
            else
            {
                // Login failed, display error message
                Response.Write("<script>alert('Kullanıcı adı veya şifre yanlış')</script>");
            }



            reader.Close();
            con.Close();
        }
    }
}