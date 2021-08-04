using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oibsproje
{
    public partial class WebForm19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = "Numara: " + Request.QueryString["Ogr_numara"];
            if (Page.IsPostBack == false)
            {

            }
        }  

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Table_OgrTableAdapter dt = new DataSet1TableAdapters.Table_OgrTableAdapter();
            dt.OgrBilgiGuncelle(TextBox3.Text,TextBox2.Text, TextBox1.Text);
            Response.Redirect("MasterOgr.aspx");
        }
    }
}