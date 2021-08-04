using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace oibsproje
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=UYSAL\SQLEXPRESS;Initial Catalog=OibsDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("Select *from Table_Ogr where Ogr_numara=@p1 and Ogr_sifre=@p2", baglanti);
                komut.Parameters.AddWithValue("@p1", TxtNu.Text);
                komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
                SqlDataReader dr = komut.ExecuteReader();
                if(dr.Read())
                {
                    Session.Add("Ogr_numara", TxtNu.Text);
                    Response.Redirect("MasterOgr.aspx");
                }
                else
                {
                    TxtSifre.Text = "Hatalı Şifre";
                }
                baglanti.Close();
         
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select *from Table_Ogrt where Ogrt_numara=@p1 and Ogrt_sifre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNu.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("Ogrt_numara", TxtNu.Text);
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre";
            }
            baglanti.Close();
        }
    }
}