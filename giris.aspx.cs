using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretKitap
{
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //  Connect to database
            SqlConnection con = new SqlConnection("Data Source=BASAK;Initial Catalog=urun;Integrated Security=True");

            // Login query with parameters to prevent SQL injection
            string query = "SELECT * FROM [dbo].[kayitOl] WHERE username = @username AND password = @password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();



            // Kullanıcı adı ve şifrenin bir kayıtla eşleşip eşleşmediğini kontrol et
            if (reader.HasRows)
            {
                // Giriş başarılı
                if (reader.Read())
                {
                    // Kullanıcı ID'sini al ve oturuma ekle
                    int id = Convert.ToInt32(reader["id"]);
                    Session["id"] = id;

                    // Yönlendirme
                    Response.Redirect("yonlendir.aspx");
                }
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