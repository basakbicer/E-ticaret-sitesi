using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ETicaretKitap
{
    public partial class kart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Kullanıcının oturumunun olup olmadığını kontrol et
            if (Session["id"] == null)
            {
                Response.Redirect("index.aspx");
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Get the clicked button
             Button clickedButton = (Button)sender;

            // Check if a button was actually clicked
            if (clickedButton != null)
            {
                // Get the DataListItem containing the clicked button
                DataListItem clickedItem = (DataListItem)clickedButton.NamingContainer;

                // Retrieve the product details from the DataListItem controls
                Label urunIdLabel = (Label)clickedItem.FindControl("urunIdLabel");
                Label urunAdLabel = (Label)clickedItem.FindControl("urunAdLabel");
                Label urunKategoriLabel = (Label)clickedItem.FindControl("urunKategoriLabel");
                Label urunFiyatLabel = (Label)clickedItem.FindControl("urunFiyatLabel");

                // Ensure the labels are found and not null
                if (urunIdLabel != null && urunAdLabel != null && urunKategoriLabel != null && urunFiyatLabel != null)
                {
                    int urunId = Convert.ToInt32(urunIdLabel.Text);
                    string urunAd = urunAdLabel.Text;
                    string urunKategori = urunKategoriLabel.Text;
                    decimal urunFiyat = Convert.ToDecimal(urunFiyatLabel.Text);
                    int id = (int)Session["id"]; // Kullanıcı ID'sini oturumdan al

                    string connectionString = "Data Source=BASAK;Initial Catalog=urun;Integrated Security=True";

                    // Establish the connection
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();

                        string sql = @"INSERT INTO siparisDetay (id, urunId, urunAd, urunFiyat)
                               VALUES (@id, @urunId, @urunAd, @urunFiyat)";

                        // Create a SqlCommand object with parameterized query
                        using (SqlCommand command = new SqlCommand(sql, connection))
                        {
                            command.Parameters.AddWithValue("@id", id); // id'yi oturumdan al
                            command.Parameters.AddWithValue("@urunId", urunId);
                            command.Parameters.AddWithValue("@urunAd", urunAd);
                            command.Parameters.AddWithValue("@urunFiyat", urunFiyat);

                            command.ExecuteNonQuery();
                            Response.Write("<script>alert('Ürün Sepete Eklendi!')</script>");
                        }
                    }
                }
            }
        }
        protected void filterByCategory_Click(object sender, EventArgs e)
        {
            // Get the clicked LinkButton
            LinkButton clickedButton = (LinkButton)sender;
            string selectedCategory = clickedButton.Text;

            // Update SqlDataSource1 to filter by category
            SqlDataSource1.SelectCommand = "SELECT * FROM [urun] WHERE urunKategori = @kategori";
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add(new QueryStringParameter("kategori", selectedCategory));

            Session["selectedCategory"] = selectedCategory;
            // Rebind the DataList to show filtered products
            DataList1.DataBind();
        }


    }
}