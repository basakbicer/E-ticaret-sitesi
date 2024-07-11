using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretKitap
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=BASAK;Initial Catalog=mesaj;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[gelenMesaj]
                                                  ([ad]
                                                  ,[soyAd]
                                                  ,[email]
                                                  ,[telefon]
                                                  ,[mesaj])
                                            VALUES
                                                (@ad, @soyAd, @email, @telefon, @mesaj)", con);

            // Add parameters to prevent SQL injection vulnerabilities
            cmd.Parameters.AddWithValue("@ad", TextBox1.Text);
            cmd.Parameters.AddWithValue("@soyAd", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);  // Use the validated decimal value
            cmd.Parameters.AddWithValue("@telefon", TextBox4.Text);  // Assuming you have a placeholder for image URL
            cmd.Parameters.AddWithValue("@mesaj", TextBox5.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Mesajınız Başarıyla Gönderildi!')</script>");
        }
    }
}