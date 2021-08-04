using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oibsproje
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
           if(Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["Duyuru_id"].ToString());
                DataSet1TableAdapters.Table_DuyuruTableAdapter dt = new DataSet1TableAdapters.Table_DuyuruTableAdapter();
               
                TxtDuyuruİd.Text = id.ToString();
                TxtDuyuruBaslik.Text = dt.Duyuru(id)[0].Duyuru_baslik;
                TxtDuyuruİcerik.Value= dt.Duyuru(id)[0].Duyuru_icerik;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Table_DuyuruTableAdapter dt = new DataSet1TableAdapters.Table_DuyuruTableAdapter();
            dt.DuyuruGuncelle(TxtDuyuruBaslik.Text, TxtDuyuruİcerik.Value, Convert.ToInt32(TxtDuyuruİd.Text));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}