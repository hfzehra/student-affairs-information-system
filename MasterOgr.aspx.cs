using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oibsproje
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["Ogr_numara"].ToString();

            DataSet1TableAdapters.Table_OgrTableAdapter dt = new DataSet1TableAdapters.Table_OgrTableAdapter();
            TextBox2.Text = "ad soyad: " + dt.OgrProfil(TextBox1.Text)[0].Ogr_ad + " " + dt.OgrProfil(TextBox1.Text)[0].Ogr_soyad;
            TextBox3.Text = "E-mail Adresi:" + dt.OgrProfil(TextBox1.Text)[0].Ogr_mail;
            TextBox4.Text = "Telefon: " + dt.OgrProfil(TextBox1.Text)[0].Ogr_tel;
            TextBox5.Text = "Şifre: " + dt.OgrProfil(TextBox1.Text)[0].Ogr_sifre;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MasterOgrGuncelle.aspx?Ogr_numara="+TextBox1.Text);
        }
    }
}