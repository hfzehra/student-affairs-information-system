using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oibsproje
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        int n_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                n_id = Convert.ToInt32(Request.QueryString["Notid"].ToString());
                DataSet1TableAdapters.OgrNotlarıTableAdapter dt = new DataSet1TableAdapters.OgrNotlarıTableAdapter();
                TxtOgrid.Text = dt.NotTamir(n_id)[0].Ogrid.ToString();
                TxtOgradsoyad.Text= dt.NotTamir(n_id)[0].ÖğrenciAdSoyad;
                TxtDuyuruAd.Text = dt.NotTamir(n_id)[0].Ders_ad;
                TxtOgrvize.Text = dt.NotTamir(n_id)[0].Vize.ToString();
                TxtOgrfinal.Text = dt.NotTamir(n_id)[0].Final.ToString();
                Txtort.Text = dt.NotTamir(n_id)[0].Ortalama.ToString();
                Txtdurum.Text = dt.NotTamir(n_id)[0].Durum.ToString();
            }
           
        }

        protected void ButtonHesapla_Click(object sender, EventArgs e)
        {
                double vize, final;
                double ortalama;
                vize = Convert.ToInt32(TxtOgrvize.Text);
                final = Convert.ToInt32(TxtOgrfinal.Text);
                ortalama = (vize * 0.4 + final * 0.6);
                Txtort.Text = ortalama.ToString("0.00");
            if (ortalama > 50)
            {
                Txtdurum.Text = "True";
            }
            else
            {
                Txtdurum.Text = "False";
            }
       
        }

        protected void ButtonGüncelle_Click(object sender, EventArgs e)
        {
            n_id = Convert.ToInt32(Request.QueryString["Notid"].ToString());
            DataSet1TableAdapters.OgrNotlarıTableAdapter dt = new DataSet1TableAdapters.OgrNotlarıTableAdapter();
            dt.NotGüncelle(byte.Parse(TxtOgrvize.Text),
                byte.Parse(TxtOgrfinal.Text),
                decimal.Parse(Txtort.Text),
                bool.Parse(Txtdurum.Text),n_id);
            Response.Redirect("NotListesi.aspx");
        }
    }
}