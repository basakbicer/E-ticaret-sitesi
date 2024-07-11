using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretKitap
{
    public partial class yonlendir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Oturumu sonlandır
            Session.Abandon();
            Response.Redirect("index.aspx");
        }
    }
}