using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oibsproje
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false) { 
            try
            {
                id = Convert.ToInt32(Request.QueryString["Ogr_id"].ToString());
                TxtOgrid.Text = id.ToString();
                DataSet1TableAdapters.Table_OgrTableAdapter dt = new DataSet1TableAdapters.Table_OgrTableAdapter();
                TxtOgrnu.Text = dt.OgrenciSec(id)[0].Ogr_numara;
                TxtOgrad.Text = dt.OgrenciSec(id)[0].Ogr_ad;
                TxtOgrsoyad.Text = dt.OgrenciSec(id)[0].Ogr_soyad;
                TxtOgrtel.Text = dt.OgrenciSec(id)[0].Ogr_tel;
                TxtOgrmail.Text = dt.OgrenciSec(id)[0].Ogr_mail;
                TxtOgrsifre.Text = dt.OgrenciSec(id)[0].Ogr_sifre;
            }
            catch (Exception)
            {

            }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Table_OgrTableAdapter dt = new DataSet1TableAdapters.Table_OgrTableAdapter();
            dt.OgrenciGuncelle(TxtOgrnu.Text, TxtOgrad.Text, TxtOgrsoyad.Text, TxtOgrtel.Text, TxtOgrmail.Text, 
                TxtOgrsifre.Text, TxtOgrid.Text);
            Response.Redirect("WebForm1.aspx");
        }
    }
}