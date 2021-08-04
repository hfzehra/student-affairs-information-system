using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oibsproje
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Table_DersTableAdapter dt = new DataSet1TableAdapters.Table_DersTableAdapter();
            dt.DersEkle(TxtDersAdı.Text);
            Response.Redirect("DersListesi.aspx");

        }
    }
}