﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class print : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control ctrl = (Control)Session["ctrl"];
        PrintHelper.PrintWebControl(ctrl);
    }
}