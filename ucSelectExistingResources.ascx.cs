using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pelesys.Scheduling.Web.Control
{
    public partial class SelectExistingResources : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gv.DataSource = Administration.User.LoadListWhere<Administration.User>("Where T.UserID <30");
            gv.DataBind();
        }
    }
}