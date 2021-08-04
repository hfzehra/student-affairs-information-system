using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oibsproje
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.OgrNotlarıTableAdapter dt = new DataSet1TableAdapters.OgrNotlarıTableAdapter();
            Repeater1.DataSource = dt.NotGetir2(Session["Ogr_numara"].ToString());
            Repeater1.DataBind();
        }
    }
}