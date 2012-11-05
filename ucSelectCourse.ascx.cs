using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Pelesys.Scheduling;

namespace Pelesys.Scheduling.Web.Control
{
    public partial class ucSelectCourse : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("SettingID", typeof(int)); ;
            dt.Columns.Add("Name", typeof(string)); ;
            dt.Columns.Add("CourseCode", typeof(string));
            dt.Columns.Add("CourseVersion", typeof(string));
       

            DataRow odtr = dt.NewRow();
            odtr["Name"] = "Airbus 320 Security";

            odtr["CourseCode"] = "201";
            odtr["CourseVersion"] = "1.01";
         
            dt.Rows.Add(odtr);


            DataRow odtr1 = dt.NewRow();
            odtr1["Name"] = "Airbus 320 Control";

            odtr1["CourseCode"] = "202";
            odtr1["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr1);

            DataRow odtr2 = dt.NewRow();
            odtr2["Name"] = "Airbus 320 Supply";

            odtr2["CourseCode"] = "203";
            odtr2["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr2);


            DataRow odtr3 = dt.NewRow();
            odtr3["Name"] = "Airbus 320 Landing";

            odtr3["CourseCode"] = "204";
            odtr3["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr3);


            DataRow odtr4 = dt.NewRow();
            odtr4["Name"] = "Airbus 320 Taking Off";

            odtr4["CourseCode"] = "205";
            odtr4["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr4);

            DataRow odtr5 = dt.NewRow();
            odtr5["Name"] = "Airbus 320 Computing";

            odtr5["CourseCode"] = "206";
            odtr5["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr5);

            gv.DataSource = dt;
            gv.DataBind();

        }
    }
}