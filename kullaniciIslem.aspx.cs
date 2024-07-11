using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretKitap.admin
{
    public partial class kullaniciIslem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection baglantim = new SqlConnection("Data Source=BASAK;Initial Catalog=urun;Integrated Security=True");
            baglantim.Open();
            int id = int.Parse(TextBox1.Text);
            SqlCommand sil = new SqlCommand("delete from kayitOl where id=@id", baglantim);
            sil.Parameters.AddWithValue("@id", id);
            if (sil.ExecuteNonQuery() > 0)
            {
                Label3.Text = "kayıt silindi";
            }
            else
            {
                Label3.Text = "kayıt silinemedi";
            }
            baglantim.Close();
            baglantim.Dispose();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection baglantim = new SqlConnection("Data Source=BASAK;Initial Catalog=urun;Integrated Security=True");
            baglantim.Open();
            SqlCommand komut = new SqlCommand(@"INSERT INTO [dbo].[kayitOl]
                                                  ([username]
                                                  ,[name]
                                                  ,[email]
                                                  ,[password])
                                            VALUES
                                                (@username, @name, @email, @password)", baglantim);
            komut.Parameters.AddWithValue("@username", TextBox3.Text);
            komut.Parameters.AddWithValue("@name", TextBox2.Text);
            komut.Parameters.AddWithValue("@email", TextBox4.Text);
            komut.Parameters.AddWithValue("@password", TextBox5.Text);
            Label3.Text = "kayıt eklendi";
            komut.ExecuteNonQuery();
            baglantim.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Data Source=BASAK;Initial Catalog=urun;Integrated Security=True");
            baglanti.Open();
            SqlCommand sorgu = new SqlCommand("select * from kayitOl", baglanti);
            SqlDataReader oku = sorgu.ExecuteReader();


            GridView1.DataSource = oku;
            GridView1.DataBind();
            oku.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("panel.aspx");
        }
    }
}