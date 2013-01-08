using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web;



namespace Pelesys.Scheduling.Web.Control
{
    public partial class ucInstructors : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("SettingID", typeof(int)); ;
            dt.Columns.Add("Name", typeof(string)); ;
            dt.Columns.Add("CourseCode", typeof(string));
            dt.Columns.Add("CourseVersion", typeof(string));


            DataRow odtr = dt.NewRow();
            odtr["Name"] = "James Allen";

            odtr["CourseCode"] = "201";
            odtr["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr);


            DataRow odtr1 = dt.NewRow();
            odtr1["Name"] = "Smith Lee";

            odtr1["CourseCode"] = "202";
            odtr1["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr1);

            DataRow odtr2 = dt.NewRow();
            odtr2["Name"] = "Perterson Lin";

            odtr2["CourseCode"] = "203";
            odtr2["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr2);


            DataRow odtr3 = dt.NewRow();
            odtr3["Name"] = "Helen Jim";

            odtr3["CourseCode"] = "204";
            odtr3["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr3);


            DataRow odtr4 = dt.NewRow();
            odtr4["Name"] = "Peter Harden";

            odtr4["CourseCode"] = "205";
            odtr4["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr4);

            DataRow odtr5 = dt.NewRow();
            odtr5["Name"] = "Land Shell";

            odtr5["CourseCode"] = "206";
            odtr5["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr5);
            DataRow odtr9 = dt.NewRow();
            odtr9["Name"] = "Jason Lee";

            odtr9["CourseCode"] = "206";
            odtr9["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr9);

            DataRow odtr6 = dt.NewRow();
            odtr6["Name"] = "Bob White";

            odtr6["CourseCode"] = "206";
            odtr6["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr6);

            DataRow odtr7 = dt.NewRow();
            odtr7["Name"] = "Babay Jane";

            odtr7["CourseCode"] = "206";
            odtr7["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr7);

            DataRow odtr8 = dt.NewRow();
            odtr8["Name"] = "Hover Dan";

            odtr8["CourseCode"] = "206";
            odtr8["CourseVersion"] = "1.01";

            dt.Rows.Add(odtr8);

            gv.DataSource = dt;
           gv.DataBind();
        }


        protected void AssingLabe_OnHtmlRowCreated( object sender, ASPxGridViewTableRowEventArgs e  )
        {
            if (e.RowType != GridViewRowType.Data) return;
            {
                Label olabe = gv.FindRowCellTemplateControl(e.VisibleIndex, null, "lblSign") as Label;
                if (olabe != null)
                {
                    if (e.VisibleIndex + 1 == 2 || e.VisibleIndex + 1 == 5 )
                    {
                        olabe.Text = "Expired in 90 days";
                        olabe.ToolTip = olabe.Text;
                        olabe.BackColor = System.Drawing.Color.Yellow;
                        olabe.Width = Unit.Pixel(120);

                    }
                    else if (e.VisibleIndex + 1 == 7 || e.VisibleIndex + 1 == 9)
                    {
                        olabe.ToolTip = "Not qualified";
                        olabe.BackColor = System.Drawing.Color.Red;

                    }
                    else
                    {
                        olabe.ToolTip = "Qualified";
                    }
                }
            }

        }
    }
}