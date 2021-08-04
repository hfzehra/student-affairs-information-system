using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oibsproje
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Table_Ogr1TableAdapter dt = new DataSet1TableAdapters.Table_Ogr1TableAdapter();
            DataSet1TableAdapters.Table_OgrtTableAdapter dt2 = new DataSet1TableAdapters.Table_OgrtTableAdapter();
            DataSet1TableAdapters.Table_DersTableAdapter dt3 = new DataSet1TableAdapters.Table_DersTableAdapter();
            DataSet1TableAdapters.Table_DuyuruTableAdapter dt4 = new DataSet1TableAdapters.Table_DuyuruTableAdapter();
            DataSet1TableAdapters.OgrNotlarıTableAdapter dt5 = new DataSet1TableAdapters.OgrNotlarıTableAdapter();

            TextBox1.Text = "Sistemdeki Öğrenci Sayısı :" + dt.İstatistik1().ToString();
            TextBox2.Text = "Sistemdeki Öğretmen Sayısı :" + dt2.İstatistik2().ToString();
            TextBox3.Text = "Sistemdeki Ders Sayısı :" + dt3.İstatistik3().ToString();
            TextBox4.Text = "Sistemdeki Duyuru Sayısı :" + dt4.İstatistik4().ToString();
            TextBox5.Text = "İleriveritabanı dersinde en başarılı öğrenci :" + dt5.İstatistik5().ToString();
            TextBox6.Text = "İleriveritabanı dersinin ortalaması:" + dt5.İstatistik6().ToString();


        }
    }
}