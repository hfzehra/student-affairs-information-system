using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oibsproje
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Duyuru_id"].ToString());
            DataSet1TableAdapters.Table_DuyuruTableAdapter dt = new DataSet1TableAdapters.Table_DuyuruTableAdapter();
            dt.DuyuruSil(id);
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}