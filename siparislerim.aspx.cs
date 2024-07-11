using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretKitap.kullanici
{
    public partial class siparislerim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("index.aspx");
                return;
            }

            // Oturumdan kullanıcı ID'sini al
            int id = (int)Session["id"];

            SqlConnection baglanti = new SqlConnection("Data Source=BASAK;Initial Catalog=urun;Integrated Security=True");
            baglanti.Open();
            SqlCommand sorgu = new SqlCommand("select * from siparisAdres WHERE id = @id", baglanti);
            sorgu.Parameters.AddWithValue("@id", id);
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}