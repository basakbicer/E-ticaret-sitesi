using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretKitap.admin
{
    public partial class mesaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Data Source=BASAK;Initial Catalog=mesaj;Integrated Security=True");
            baglanti.Open();
            SqlCommand sorgu = new SqlCommand("select * from gelenMesaj", baglanti);
            SqlDataReader oku = sorgu.ExecuteReader();


            GridView1.DataSource = oku;
            GridView1.DataBind();
            oku.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("panel.aspx");
        }
    }
}