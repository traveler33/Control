using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pelesys.Scheduling.Web.Control
{
    public partial class ucStudentDetail : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Administration.User> oList = Administration.User.LoadListWhere<Administration.User>("Where T.UserID <20");
            gv.DataSource = oList;
            gv.DataBind();

            //gv1.DataSource = oList;
            //gv1.DataBind();

           if (!IsPostBack)
            {
                //RadioButtonList1.Items.Add(new ListItem("Reg", "Reg", true));
                //RadioButtonList1.Items.Add(new ListItem("SecurityMeeting", "SecurityMeeting", true));
                //RadioButtonList1.Items.Add(new ListItem("FTD", "FTD", true));
                //RadioButtonList1.Items.Add(new ListItem("Flight 320", "Flight 320", true));
                //RadioButtonList1.Items.Add(new ListItem("Reception", "Reception", true ));

                RadioButton1.Attributes.Add("onclick", "SetRadioButtonValue('" +   this.RadioButton1.ClientID + "','"+  this.RadioButton1.Text
                    + "', '#F71D1D') ");
                RadioButton2.Attributes.Add("onclick", "SetRadioButtonValue('" + this.RadioButton2.ClientID + "','" + this.RadioButton2.Text
                    + "', '#008000') ");

                RadioButton3.Attributes.Add("onclick", "SetRadioButtonValue('" + this.RadioButton3.ClientID + "','" + this.RadioButton3.Text
                    + "', '#00FFFF') ");
                RadioButton4.Attributes.Add("onclick", "SetRadioButtonValue('" + this.RadioButton4.ClientID + "','" + this.RadioButton4.Text
                    + "', '#006400) ");
                RadioButton5.Attributes.Add("onclick", "SetRadioButtonValue('" + this.RadioButton5.ClientID + "','" + this.RadioButton5.Text
                    + "', '#006400') ");

                RadioButton6.Attributes.Add("onclick", "SetRadioButtonValue('" + this.RadioButton6.ClientID + "','" + this.RadioButton6.Text
                   + "', '#9ACD32') ");

                RadioButton7.Attributes.Add("onclick", "SetRadioButtonValue('" + this.RadioButton7.ClientID + "','" + this.RadioButton7.Text
                  + "', '#C0C0C0') ");

                RadioButton8.Attributes.Add("onclick", "SetRadioButtonValue('" + this.RadioButton8.ClientID + "','', '#FFF') ");






            }


        }

        protected void gv_RowDataBound(Object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Display the company name in italics.
                TextBox obox = e.Row.FindControl("txtgrid0730") as TextBox;
                if (obox != null)
                {
                    Image oImg = e.Row.FindControl("Imggrid7030") as Image;
                    if ( oImg != null)
                    {
                    
                        oImg.Attributes.Add("onmouseover", "SelectValue(true,'"  +  obox.ClientID  + "')");
                    }
                  
                }

            }

        }



    }
}