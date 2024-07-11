using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretKitap.kullanici
{
    public partial class hesap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Kullanıcının oturumunun olup olmadığını kontrol et
            if (Session["id"] == null)
            {
                Response.Redirect("index.aspx");
            }
            // Oturumdan kullanıcı ID'sini al
            int id = (int)Session["id"];
        }
    }
}