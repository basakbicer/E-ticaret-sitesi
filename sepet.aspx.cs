using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace ETicaretKitap.kullanici
{
    public partial class sepet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Kullanıcının oturumunun olup olmadığını kontrol et
            if (Session["id"] == null)
            {
                Response.Redirect("index.aspx");
            }
            if (!IsPostBack)
            {
                LoadCartData();
            }

            // Oturumdan kullanıcı ID'sini al
            int id = (int)Session["id"];

            SqlConnection baglanti = new SqlConnection("Data Source=BASAK;Initial Catalog=urun;Integrated Security=True");
            /*baglanti.Open();
            SqlCommand sorgu = new SqlCommand("SELECT * FROM siparisDetay WHERE id = @id", baglanti);
            sorgu.Parameters.AddWithValue("@id", id);
            SqlDataReader oku = sorgu.ExecuteReader();

            // Yeni bir DataTable oluşturun
            DataTable dt = new DataTable();
            dt.Load(oku);

            // DataTable'ı GridView'e bağlayın
            GridView1.DataSource = dt;
            GridView1.DataBind();

            decimal toplamFiyat = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {
                decimal fiyat = Convert.ToDecimal(row.Cells[3].Text);
                toplamFiyat += fiyat;
            }
            Label3.Text = toplamFiyat.ToString("C2"); // C2 formatı para birimi olarak göster

            oku.Close();
            baglanti.Close();
            */

            try
            {
                baglanti.Open();
                SqlCommand sorgu = new SqlCommand("SELECT * FROM siparisDetay WHERE id = @id", baglanti);
                sorgu.Parameters.AddWithValue("@id", id);
                SqlDataReader oku = sorgu.ExecuteReader();

                // Yeni bir DataTable oluşturun
                DataTable dt = new DataTable();
                dt.Load(oku);

                // DataTable'ı GridView'e bağlayın
                GridView1.DataSource = dt;
                GridView1.DataBind();

                decimal toplamFiyat = 0;
                foreach (DataRow row in dt.Rows)
                {
                    decimal fiyat = Convert.ToDecimal(row["urunFiyat"]);
                    toplamFiyat += fiyat;
                }
                Label3.Text = toplamFiyat.ToString("C2"); // C2 formatı para birimi olarak göster

                oku.Close();
            }
            catch (Exception ex)
            {
                // Hata mesajını görüntüleyin
                Response.Write("Veritabanı hatası: " + ex.Message);
            }
            finally
            {
                baglanti.Close();
            }

        }

        private void LoadCartData()
        {
            int id = (int)Session["id"];
            string connectionString = "Data Source=BASAK;Initial Catalog=urun;Integrated Security=True";
            string query = "SELECT * FROM siparisDetay WHERE id = @id";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter(query, connection);
                da.SelectCommand.Parameters.AddWithValue("@id", id);

                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();

                decimal totalPrice = 0;
                foreach (DataRow row in dt.Rows)
                {
                    totalPrice += Convert.ToDecimal(row["urunFiyat"]);
                }

                Label3.Text = totalPrice.ToString("C2");
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int siparisId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string connectionString = "Data Source=BASAK;Initial Catalog=urun;Integrated Security=True";
            string query = "DELETE FROM siparisDetay WHERE siparisId = @siparisId";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@siparisId", siparisId);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            // Sepeti yeniden yükle
            LoadCartData();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }


        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                Label4.Visible = true;
                TextBox1.Visible = true;
                Label5.Visible = true;
                TextBox2.Visible = true;
                Button1.Visible = true;



            }
            else
            {
                Label4.Visible = false;
                TextBox1.Visible = false;
                Label5.Visible = false;
                TextBox2.Visible = false;
                Button1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = (int)Session["id"]; // Oturumdan kullanıcı ID'sini alın
            string connectionString = "Data Source=BASAK;Initial Catalog=urun;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                foreach (GridViewRow row in GridView1.Rows)
                {
                    SqlCommand command = new SqlCommand("INSERT INTO siparisAdres (siparisId, adres, telno, urunId, urunAd, toplamFiyat, id) VALUES (@siparisId, @adres, @telno, @urunId, @urunAd, @toplamFiyat, @id)", connection);

                    int siparisId = Convert.ToInt32(row.Cells[0].Text);
                    int urunId = Convert.ToInt32(row.Cells[1].Text);
                    string urunAd = row.Cells[2].Text;

                    string adres = TextBox1.Text;
                    string telno = TextBox2.Text; // Telefon numarasını string olarak alıyoruz
                    decimal toplamFiyat = decimal.Parse(Label3.Text, System.Globalization.NumberStyles.Currency); // Para birimi formatını düzgün şekilde parse ediyoruz

                    command.Parameters.AddWithValue("@siparisId", siparisId);
                    command.Parameters.AddWithValue("@adres", adres);
                    command.Parameters.AddWithValue("@telno", telno);
                    command.Parameters.AddWithValue("@urunId", urunId);
                    command.Parameters.AddWithValue("@urunAd", urunAd);
                    command.Parameters.AddWithValue("@toplamFiyat", toplamFiyat);
                    command.Parameters.AddWithValue("@id", id);

                    command.ExecuteNonQuery();
                }
                Response.Redirect("basari.aspx");
            }
        }
    }
}