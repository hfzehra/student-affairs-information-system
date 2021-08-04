using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oibsproje
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false) { 
            DataSet1TableAdapters.Table_OgrtTableAdapter dt = new DataSet1TableAdapters.Table_OgrtTableAdapter();
            TxtDuyuruOgrt.DataSource = dt.OgretmenListesi();
            TxtDuyuruOgrt.DataTextField = "Ogrt_adsoyad";
            TxtDuyuruOgrt.DataValueField = "Ogrt_id";
            TxtDuyuruOgrt.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Table_DuyuruTableAdapter dt = new DataSet1TableAdapters.Table_DuyuruTableAdapter();
            dt.DuyuruEkle(TxtDuyuruBaslik.Text,TxtDuyuruİcerik.Value.ToString(),Convert.ToInt32( TxtDuyuruOgrt.SelectedValue));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}