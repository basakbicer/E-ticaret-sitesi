using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaretKitap
{
    public partial class kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=BASAK;Initial Catalog=urun;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[kayitOl]      
                  ([name]           
                  ,[email]           
                  ,[username]           
                  ,[password]) 
             VALUES          
                  ('" + txtName.Text + "' , '" + txtEmail.Text + "' , '" + txtUsername.Text + "' , '" + txtPassword.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('user is registered succesfully')</script>");


        }
    }
}