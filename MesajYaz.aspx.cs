using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oibsproje
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtGönderen.Text = Session["Ogrt_numara"].ToString(); 
        }

        protected void BtnGönder_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Table_MesajTableAdapter dt = new DataSet1TableAdapters.Table_MesajTableAdapter();
            dt.MesajGonder(TxtGönderen.Text, TxtAlici.Text, TxtMesajBaslik.Text, TxtMesajİcerik.Value);
            Response.Redirect("GidenMesajlar.aspx");
        }

    }
}