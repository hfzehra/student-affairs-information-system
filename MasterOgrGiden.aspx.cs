﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oibsproje
{
    public partial class WebForm23 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Table_MesajTableAdapter dt = new DataSet1TableAdapters.Table_MesajTableAdapter();
            Repeater1.DataSource = dt.OgrGiden(Session["Ogr_numara"].ToString());
            Repeater1.DataBind();
        }
    }
}