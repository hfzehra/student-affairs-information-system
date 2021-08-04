using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oibsproje
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id =Convert.ToInt32( Request.QueryString["Ogr_id"].ToString());
            DataSet1TableAdapters.Table_OgrTableAdapter dt = new DataSet1TableAdapters.Table_OgrTableAdapter();
            dt.OgrenciSil(id);
            Response.Redirect("WebForm1.aspx");

        }
    }
}