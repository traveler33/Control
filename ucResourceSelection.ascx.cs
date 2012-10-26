using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pelesys.Scheduling.Web.Controls
{
    public partial class ucResourceSelection : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            gv.DataSource = Pelesys.Scheduling.ResourcePool.GetDataBy();
            gv.DataBind();
        }
    }
}