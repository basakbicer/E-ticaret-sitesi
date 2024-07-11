using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretKitap
{
    public partial class urunKontrol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            decimal urunFiyat; // Declare a decimal variable
            // Validate user input to ensure it's a valid decimal

            string fname = Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("image/") + fname);



            if (decimal.TryParse(TextBox3.Text, out urunFiyat))
            {
                SqlConnection con = new SqlConnection("Data Source=BASAK;Initial Catalog=urun;Integrated Security=True");
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[urun]
                                                  ([urunAd]
                                                  ,[urunKategori]
                                                  ,[urunFiyat]
                                                  ,[urunGorsel])
                                            VALUES
                                                (@urunAd, @urunKategori, @urunFiyat, @urunGorsel)", con);

                // Add parameters to prevent SQL injection vulnerabilities
                cmd.Parameters.AddWithValue("@urunAd", TextBox1.Text);
                cmd.Parameters.AddWithValue("@urunKategori", TextBox2.Text);
                cmd.Parameters.AddWithValue("@urunFiyat", urunFiyat);  // Use the validated decimal value
                cmd.Parameters.AddWithValue("@urunGorsel", fname);  // Assuming you have a placeholder for image URL

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Ürün başarıyla kaydedildi!')</script>");  // Success message in Turkish
            }
            else
            {
                Response.Write("<script>alert('Lütfen ürün fiyatı için geçerli bir sayı girin.')</script>");  // Error message in Turkish
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection baglantim = new SqlConnection("Data Source=BASAK;Initial Catalog=urun;Integrated Security=True");
            baglantim.Open();
            string silinek = TextBox1.Text;
            SqlCommand sil = new SqlCommand("delete from urun where urunAd='" + silinek + "'", baglantim);
            int durum = sil.ExecuteNonQuery();
            if (durum > 0)
            {
                Label6.Text = "kayıt silindi";
            }
            else
            {
                Label6.Text = "kayıt silinemedi";
            }
            baglantim.Close();
            baglantim.Dispose();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Data Source=BASAK;Initial Catalog=urun;Integrated Security=True");
            baglanti.Open();
            SqlCommand sorgu = new SqlCommand("select * from urun", baglanti);
            SqlDataReader oku = sorgu.ExecuteReader();


            // Yeni bir DataTable oluşturun
            DataTable dt = new DataTable();
            dt.Load(oku);

            // DataTable'ı GridView'e bağlayın
            GridView1.DataSource = dt;
            GridView1.DataBind();

            oku.Close();
            baglanti.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin/panel.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}