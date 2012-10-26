using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pelesys.Scheduling;
using Pelesys.Data;
using eForm.Class;
using System.Data;
using AjaxControlToolkit;
using System.Collections;
using System.Text;
using Pelesys.Common;
using Pelesys.Web;
using Pelesys.Scheduling;

namespace eForm.Controls
{
    public partial class ucEFormDesign : UserControlBase
    {
        #region Const

        #region Message

        const string ValidationEnterTabName_Message = "Please enter a new tab name.";
        const string ValidationTabNameAlreadyExist_Message = "This tab name already exists. Please select another one.";
        const string ValidationFieldNameAlreadyExist_Message = "This field name already exists. Please select another one.";
        const string Action_TabSave_Message = " tab was saved sucessfully. Thank you!";
        const string Action_TabAdd_Message = "A new tab was added sucessfully. Thank you!";
        const string Action_TabDelete_Message = " tab was deleted sucessfully. Thank you!";

        const string Action_FieldSave_Message = " A field was saved sucessfully. Thank you!";
        const string Action_FieldAdd_Message = "A field tab was added sucessfully. Thank you!";
        const string Action_FieldDelete_Message = "The field was deleted sucessfully. Thank you!";

        const string Action_TabDeleteConfirm_Message = "Are you sure that you want to delete this tab?";
        const string Action_FieldDeleteConfirm_Message = "Are you sure that you want to delete this Field?";

        const string ValidationEnterFieldName_Message = "Please enter a field name.";
        const string ValidationEnterLabelContent_Message = "Please enter a label content.";
        const string ValidationEnterSize_Message = "Please enter a text box size.";
        const string ValidationParseSize_Message = "Text box size must integer.";

        const string ValidationTextBoxHeight_Message = "Please enter a text box height.";
        const string ValidationTextBoxWidth_Message = "Please enter a text box width.";
        const string ValidationEnterMandatoryMessage_Message = "Please enter Mandatory message.";
        const string ValidationParseQueryStatementMessage_Message = "Your query statement had a problem and failed parsing. Please change it.";

        const string ValidationTextBoxParseHeight_Message = "Text box height must integer.";
        const string ValidationTextBoxParseWidth_Message = "Text box width must integer.";
        const string ValidationDropDownListSelectValueList_Message = "Please select a data list.";
        const string ValidationDropDownListQueryStatement_Message = "Please write a query statement.";
        const string ValidationDateEnterMandatoryMessage_Message = "Please enter Mandatory message.";

        const string ValidationDateHeightMessage_Message = "Please enter a date box height.";
        const string ValidationDateWidthMessage_Message = "Please enter a date box width.";

        const string ValidationParseDateHeight_Message = "Date box height must integer.";
        const string ValidationParseDateWidth_Message = "Date box width must integer.";


        const string ValidationImageHeightMessage_Message = "Please enter an image height.";
        const string ValidationImageWidthMessage_Message = "Please enter an image width.";

        const string ValidationParseImageHeight_Message = "Image height must integer.";
        const string ValidationParseImageWidth_Message = "Image width must integer.";

        const string ValidationLinkText_Message = "Please enter a hyperlink text";
        const string ValidationLinkLabelContent_Message = "Please enter a hyperlink label content.";

        const string ValidationSelectAControl_Message = "Please select a control.";

        //Help tips 
        const string TabHeadHelpTips_Message = "On this part, you can add, modify and remove a tab.";
        const string FieldHeadHelpTips_Message = "On this part, you can add, modify and remove a field such as a text box, an image and hyperlink. ";
        const string SysIdentityHelpTips_Message = "This is a read only system identifier for the future support ";
        const string SysBuildinHelpTips_Message = "This is a tab can not be customize.";



        const string TextBoxDefaultSkinID = "TextBox";
        const string CheckBoxDefaultsKinID = "DesignCheckBox";
        const string DropDownListDefaultsKinID = "FormDesignDropDownList";
        const string LabelDefaultKinID = "Label";


        const string TextAreaDefaultSkinID = "defaultTextAreaOnDesign";
        const string TextBoxReadOnlySkinID = "skinIDTextBoxReadOnly";
        const string TextBoxMandatorySkinID = "skinIDTextBoxMandatory";
        const string TextBoxMoneySkinID = "skinIDTextBoxMoney";
        const string TextBoxDateSkinID = "skinIDTextBoxDateTime";
        const string HyperlinkSkinID = "HyperLink";

        

        const string LabelDefaultskinID = "";
        const string LabelDefaultCssClass = "editText";


        public const string SessionTabList = "DesignFormTabList";
        #endregion

        public Boolean IsEnable = false;

        public Page oPage = null;
        public string dragcssClass = string.Empty;
        public string FormDesignID = string.Empty;
        public string Error = string.Empty;
        public string CheckBoxDesignClientID = string.Empty;
        public string cssDragClass = string.Empty;
        public string AciveHidClient = string.Empty;
        private ArrayList SYSBuildinList = new ArrayList();
        // those default skin id are in "App_themes/default/Controls.skin
      
     


        const string OptionDropDownListKey = "DropDownListQueryExample";

        #endregion


        #region Properties
        private int sImgWidth = 50;
        private int sImgHeight = 50;
        private bool _IsFieldOnly = false;
        private int _eFormID = 0;
        private int _CultureID = 0;
        private int iControlType = -1;
        public int ActiveType = 2;
        private ucImageControl oImageControl = new ucImageControl();
        public TabContainer CurrentTab = new TabContainer();
        public Panel CurrentPanel = new Panel();
        public string EnlargeImageClientID = string.Empty;
        private string _DBTableName = string.Empty;
      

        public int AccordingIndex
        {
            get
            {
                if (ViewState["AccordingIndex"] != null)
                {
                    return Convert.ToInt16(ViewState["AccordingIndex"].ToString());
                }

                return 0;
            }

            set
            {

                ViewState["AccordingIndex"] = value;
            }


        }

        private bool _IsTabChanged = false;
        public  bool IsTabChanged
        {
            get
            {
                if (ViewState["IsTabChanged"] != null)
                {
                    _IsTabChanged = Convert.ToBoolean(ViewState["IsTabChanged"].ToString());
                }
                return _IsTabChanged;
            }

            set
            {
                ViewState["IsTabChanged"] = value;
                _IsTabChanged = value;
            }


        }


        private bool _IsFieldChanged = false;
        public bool IsFieldChanged
        {
            get
            {
                if (ViewState["IsFieldChanged"] != null)
                {
                    _IsFieldChanged = Convert.ToBoolean(ViewState[" IsFieldChanged"].ToString());
                }
                return _IsFieldChanged;
            }

            set
            {
                ViewState[" IsFieldChanged"] = value;
                _IsFieldChanged = value;
            }


        }


        public string  DBTableName
        {
            get
            {
                return _DBTableName;
            }

            set
            {

                _DBTableName = value;
            }


        }

        public int CultureID
        {
            get
            {
                return _CultureID;
            }

            set
            {

                _CultureID = value;
            }


        }

       
        public int eFormID
        {
            get
            {
                if (ViewState["eFormID"] != null)
                {
                    _eFormID =  Convert.ToInt32( ViewState["eFormID"].ToString());
                }
                return _eFormID;
            }

            set
            {
                ViewState["eFormID"] = value;
                _eFormID = value;
            }


        }

        private int _SelectedTabID = 0;

        public int SelectedTabID
        {
            get
            {

                if (ViewState["selectedTab"] == null)
                {
                    return 0;
                }
                else
                {

                    return Convert.ToInt16(ViewState["selectedTab"].ToString());
                }
               
            }

            set
            {

                ViewState["selectedTab"] = value;
            }


        }


        public string SelectedTabIdentifier
        {
            get
            {

                if (ViewState["TabIdentifier"] == null)
                {
                    return string.Empty;
                }
                else
                {

                    return ViewState["TabIdentifier"].ToString();
                }

            }

            set
            {

                ViewState["TabIdentifier"] = value;
            }


        }

        public bool IsFieldOnly
        {
            get
            {
                return _IsFieldOnly;
            }

            set
            {

                _IsFieldOnly = value;
            }


        }

        private string _eFormName = string.Empty;

        public string eFormName
        {
            get
            {
                if (ViewState["eFormName"] != null)
                {
                    _eFormName = ViewState["eFormName"].ToString();
                }
                return _eFormName;
            }

            set
            {
                 ViewState["eFormName"] = value;
                _eFormName = value;
            }


        }


        #endregion

        #region Events on this form

        protected override void OnInit(EventArgs e)
        {
            if (IsFieldOnly)
            {

                TabContainer1.Tabs[0].Visible = false;
                TabContainer1.ActiveTabIndex = 1;
            }



            if (!IsPostBack)
            { 
                // Translaition
                Translation();
            }
            
            base.OnInit(e);
        }

        protected void Translation()
        {
            TabContainer1.Tabs[0].HeaderText = GetString("eFormTab_Tab", "Tab");
            TabContainer1.Tabs[0].ToolTip = GetString("eFormTab_Tab_tooltip", "Add new tabs, remove tabs and manage tabs");
            lblTabList.Text = GetString("eFormTabList", "Tabs:");
            lblTabName.Text = GetString("eFormTabName", "Tab Name:");
            lblIdentify.Text = GetString("eFormTabIdentity", "Tab Identifier:");
            lblDesc.Text = GetString("eFormTabDescription", "Description:");
            lblActive.Text = GetString("eFormTabActive", "Enabled");
            lblVisible.Text = GetString("eFormTabVisible", "Visible");
            lblMembers.Text = GetString("eFormTabIsSystem", "System Tab");
            lblFormName.Text = GetString("eFormName", "Form Name:");
            bntAdd.Text = GetString("eFormTabAddButton", "Add");
            bntDelete.Text = GetString("eFormTabDeleteButton", "Delete");
            bntFDSave.Text = GetString("eFormTabSaveButton", "Save");

            TabContainer1.Tabs[1].HeaderText = GetString("eFormTab_Field", "Fields");
            TabContainer1.Tabs[1].ToolTip = GetString("eFormTab_Field_Tooltip", "Add a new field, remove a field and manage a field");
            lblCurrentTab.Text = GetString("eFormTab_Field_Tab", "Tab:");

            lblTextBoxName.Text = GetString("eFormTab_Field_Name", "Name");
            lblLabelName.Text = GetString("eformTab_Field_lblName", "Label Name");
            chkFieldEnabled.Text = GetString("eformTab_Field_Enabled_CheckBox", "Enabled");
            chkFieldVisible.Text = GetString("eformTab_Field_Visible_CheckBox", "Visible");

            lblFormTextBox.Text = GetString("accordionFormDesign_TextBox", "Text Box");
            lblSize.Text = GetString("accourdionFormDesign_Size", "Size");
            lbltxtHeight.Text = GetString("accourdion_Height","Height:");
            lbltxtboxWidth.Text = GetString("accourding_Width", "Width:");

            lblText.Text = GetString("Accourdion_Text", "Text Box");
            lblTextArea.Text = GetString("Accourdion_Text Area", "Text Area");
            lblMoney.Text = GetString("Accourdion_lblMoney", "lblMoney");
            lblReadOnly.Text = GetString("Accourdion_lblReadOnly", "lblReadOnly");

            lblMSG.Text = GetString("Accourdion_Message", "Message");

            lblFormDropDownList.Text = GetString("Accourdion_DropDownList", "Drop Down List");
            lblValueList.Text = GetString("Accourdion_ValueList", "List:");
            lblQuery.Text = GetString("Accourdion_lblQuery", "Query Statement");
            lblQueryStatement.Text = GetString("Accourdion_Query_Statemehnt","Query Statement");

            lblFormCheckBox.Text = GetString("Accourdion_CheckBox", "Check Box");
            lblDefault.Text = GetString("Accourdion_Default", "Defualt");
            lblFormDate.Text = GetString("Accourdion_FormDate", "Date");
            lblddlMandatory.Text = GetString("Accourdion_Mandatory", "Mandatory:");

            lblddlMSG.Text = GetString("Accourdion_Message", "Message");

            lblWithCalendar.Text = GetString("Accourdion_Calendar", "With Calendar");
            lblDateFormat.Text = GetString("Accourdion_DateFormat", "Format");

            Label1.Text = GetString("Accourdion_Height","Height(px)");
            Label2.Text = GetString("Accourdion_Width", "Width(px)");

            lblImage.Text = GetString("Accourdion_Image", "Image");
            lblHeight.Text = GetString("Accourdion_Height", "Height");
            lblWidth.Text = GetString("Accourdion_Width", "Width");

            lblEnlarg.Text = GetString("Accourdion_Enlarg", "Enlarge");
            lblImageWithLabel.Text = GetString("Accourdion_lblImageWithLabel", "With Label");

            lblLinkHead.Text = GetString("Accourdion_Link", "HyperLink");
            lblLinkText.Text = GetString("Accourdion_lblLinkText", "Text");
            lblLink.Text = GetString("Accourdion_lblLink", "URL");

            lblOpenWindow.Text = GetString("Accourdion_OpenWidnow", "Open a New Window");
            lblWithLabel.Text = GetString("Accourdion_withLabel", "Not With a Label");

            lblContent.Text = GetString("Accourdion_Content", "Content");

            bntFieldAdd.Text = GetString("eform_tab_Field_addButton","Add");
            bntFieldDelete.Text = GetString("eform_tab_Field_deleteButton", "Delete");
            bntSaveAllFields.Text = GetString("eform_tab_Field_SaveButton", "Save");

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IniForm();
                this.bntAdd.Enabled = false;
            }
            accordionFormDesign.Visible = true; 
            SetClientScript();



          
        }

       

        #region Validaton

        protected bool IsAControlbeingSelected()
        {
            if (this.accordionFormDesign.SelectedIndex == -1)
            {
                string msg = ValidationSelectAControl_Message;
                Guid oguid = new Guid();
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                return false;
            }
            return true;
        }

        protected bool IsValidNewField()
        {
            if (txtTextBoxName.Text == string.Empty)
            {
                string msg = ValidationEnterFieldName_Message;
                Guid oguid = new Guid();
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                return false;
            }
            if (txtLabelName.Text == string.Empty && accordionFormDesign.SelectedIndex != 5)
            {
                string msg = ValidationEnterLabelContent_Message;
                Guid oguid = new Guid();
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                return false;
            }
            //text box, money and text aear
           if ( ! IsValidateTextBox() )
           {
               return false; 
           }

           //Drop down list 
           if (!IsValidateDropDownList())
           { 
                return false; 
           }

            //Date
           if (!IsValidateDate())
           {

               return false;
           }
            //Image
           if (!IsValidateImage())
           {
               return false;
           }
            // Link
           if (!IsValidateLink())
           {
               return false;
           }

          
            return true; 
        }

        protected bool IsValidControlName(bool IsNew)
        {
            int fieldID = 0;
            if (!IsNew)
            {
                fieldID = Convert.ToInt16(this.hidFieldID.Value);
            }

            if (!DesignFormField.IsValidControlName(DBTableName, txtTextBoxName.Text, eFormID, fieldID ))
            {
                string msg = ValidationFieldNameAlreadyExist_Message;
                Guid oguid = new Guid();
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                return false;

            }

            return true; 
        }

        protected bool IsValidateLink()
        {

            if (this.accordionFormDesign.SelectedIndex == 5)
            {
                if (txtText.Text == string.Empty)
                {
                    string msg = ValidationLinkText_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;

                }

                if (chkWithLabel.Checked && txtContent.Text != string.Empty )
                {
                    string msg = ValidationLinkLabelContent_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;

                }
            
            }
            return true;
        }

        protected bool IsValidateImage()
        {
            if (this.accordionFormDesign.SelectedIndex == 4)
            {
                if (txtHeight.Text == string.Empty)
                {
                    string msg = ValidationImageHeightMessage_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;

                }

                if (txtWidth.Text == string.Empty)
                {
                    string msg = ValidationImageWidthMessage_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;

                }

                string sNum = txtHeight.Text.Trim();
                int num;
                bool isNum = int.TryParse(sNum, out num);

                if (!isNum)
                {
                    string msg = ValidationParseImageHeight_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;
                }

                sNum = txtWidth.Text.Trim();

                isNum = int.TryParse(sNum, out num);

                if (!isNum)
                {
                    string msg = ValidationParseImageWidth_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;
                }
            
            
            }

            return true;
        }


        protected bool IsValidateDate()
        {
            //chkddlMandatory
            if (this.accordionFormDesign.SelectedIndex == 3)
            {
                if (chkddlMandatory.Checked &&  txtddlMSG.Text == string.Empty )
                {
                    string msg = ValidationDateEnterMandatoryMessage_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;

                }


                if (txtDateHeight.Text == string.Empty)
                {
                    string msg = ValidationDateHeightMessage_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;

                }

                if (txtDateWidth.Text == string.Empty)
                {
                    string msg = ValidationDateWidthMessage_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;

                }

                string sNum = txtDateHeight.Text.Trim();
                int num;
                bool isNum = int.TryParse(sNum, out num);

                if (!isNum )
                {
                    string msg = ValidationParseDateHeight_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;
                }

                 sNum = txtDateWidth.Text.Trim();
               
                isNum = int.TryParse(sNum, out num);

                if (!isNum)
                {
                    string msg = ValidationParseDateWidth_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;
                }
            }
            return true; 
        }

        protected bool IsValidateDropDownList()
        {
            if (this.accordionFormDesign.SelectedIndex == 1)
            {
                if (radValueList.Checked && ddlValueList.SelectedValue == string.Empty )
                {
                    string msg = ValidationDropDownListSelectValueList_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;
                
                }
                else if (txtQuery.Text == string.Empty && ! radValueList.Checked )
                {
                    string msg = ValidationDropDownListQueryStatement_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;
                
                }
                else if (txtQuery.Text != string.Empty && !radValueList.Checked)
                { 
                    //test this query
                    bool IsError = false;
                    string ErrorMsg = string.Empty;
                    try
                    {
                        DataTable oTest = DesignFormField.LoadDataTableBySQL(txtQuery.Text);
                        if (oTest == null)
                        {
                            return false;
                        }

                    }
                    catch (Exception ex)
                    {
                        ErrorMsg = ValidationParseQueryStatementMessage_Message;
                        IsError = true;

                    }
                    finally
                    {
                             if (IsError)
                            {
                                Guid oguid = new Guid();
                                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + ErrorMsg + "');", true);
                              
                                
                            }
                    }

                    if (IsError)
                    {
                        return false;
                    }
                   
                }

            }
            return true;
        }

        protected bool IsValidateTextBox()
        {

            if (this.accordionFormDesign.SelectedIndex == 0)
            {

                if (txtSize.Text == string.Empty && radText.Checked)
                {
                    string msg = ValidationEnterSize_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "showToolTip(event,'" + msg + "', '" + this.txtSize.ClientID + "',  true);", true);
                   // ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;
                }
                string sNum = txtSize.Text.Trim();
                int num;
                bool isNum = int.TryParse(sNum, out num);

                if (!isNum && radText.Checked)
                {
                    string msg = ValidationParseSize_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;
                }

                //txtboxHeight
                if (txtboxHeight.Text == string.Empty)
                {
                    string msg = ValidationTextBoxHeight_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "showToolTip(event,'" + msg + "', '" + this.txtboxHeight.ClientID + "',  true);", true);
                   // ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;
                }
                if (txtboxWidth.Text == string.Empty)
                {
                    string msg = ValidationTextBoxWidth_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "showToolTip(event,'" + msg + "', '" + this.txtboxWidth.ClientID + "',  true);", true);
                   // ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;
                }

                sNum = txtboxHeight.Text.Trim();

                isNum = int.TryParse(sNum, out num);
                if (!isNum)
                {
                    string msg = ValidationTextBoxParseHeight_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;
                }

                sNum = txtboxWidth.Text.Trim();

                isNum = int.TryParse(sNum, out num);
                if (!isNum)
                {
                    string msg = ValidationTextBoxParseWidth_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;
                }
                if (chkMandatory.Checked && txtMSG.Text == string.Empty  )
                {
                    string msg = ValidationEnterMandatoryMessage_Message;
                    Guid oguid = new Guid();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                    return false;

                }


            }

            return true; 
        }

        protected bool IsValidNewTab()
        {
            //if (txtTabName.Text == string.Empty)
            //{
            //    string msg = ValidationEnterTabName_Message;
            //    Guid oguid = new Guid();
            //    //showToolTip(event,'" + SysBuildinHelpTips_Message + "', '" + this.ImgtabHelp.ClientID + "',  false);
            //    ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "showToolTip(event,'" + msg + "', '" + this.txtTabName.ClientID + "',  true);", true);
            //   // ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
            //    return false;
            //}
            if ( DesignFormTab.IsTabNameExist( eFormID, lstTabList.SelectedValue, txtTabName.Text ))
            {
                string msg = ValidationTabNameAlreadyExist_Message; 
                Guid oguid = new Guid();
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "showToolTip(event,'" + msg + "', '" + this.txtTabName.ClientID + "',  true);", true);
               // ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormWarnStatus','" + msg + "');", true);
                return false;

            }  //chkMandatory
           
            return true ;

        }
        #endregion


        #region Tab Action
        protected void TabSave(object sender, EventArgs e)
        {
            if (this.txtFormName.Text == string.Empty)
            {
                string Validatemsg = GetString("eFormDesignFormNameValidatedMsg","Please enter a design form name."); // lstTabList.SelectedItem.Text + Action_TabSave_Message; // " tab was saved sucessfully. Thank you!";
                Guid oguid = new Guid();
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "alert('" + Validatemsg + "');", true);
                return;
            }

           SetControlPosition(ddlCurrentTab.SelectedValue == string.Empty ? string.Empty  : ddlCurrentTab.SelectedValue);
            if (!IsValidNewTab())
            {
                return;
            }

            SaveAllTabs();
            //DesignFormTab oTab = DesignFormTab.Load<DesignFormTab>(Convert.ToInt32(lstTabList.SelectedValue));
            //oTab.Name = txtTabName.Text;
            //oTab.SysIdentity = txtIdentify.Text;
            //oTab.Description = txtDesc.Text;
            //oTab.IsEnabled = chkActive.Checked;
            //oTab.IsVisible = chkVisible.Checked;
            //oTab.FormID = eFormID;
         
          //  DesignFormTab.Save<DesignFormTab>(oTab);

            LoadTabs(false);

            string msg = "";
            if (lstTabList.SelectedValue == string.Empty)
            {
              msg =  GetString("eformMessageSaveTabs","All tabs were successfully saved."); // " tab was saved sucessfully. Thank you!";
            }
            else
            {
                msg = lstTabList.SelectedItem.Text + Action_TabSave_Message; // " tab was saved sucessfully. Thank you!";  
            }
            Guid Msgguid = new Guid();
            ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), Msgguid.ToString(), "callBoxFancy('eFormSucessStatus','" + msg + "');", true);

        }


        protected void SaveAllTabs()
        {
            // if no session list , do nothing
            if (Session[SessionTabList] == null)
            {
                return;
            }

            // Remove all tab in tab table before save every thing
            List<DesignFormTab> oList = DesignFormTab.LoadListWhere<DesignFormTab>("Where T.FormID=" + eFormID);
            //if (oList.Count() > 0)
            //{
            //    foreach (DesignFormTab otab in oList)
            //    {
            //        DesignFormTab.FinalDelete<DesignFormTab>(otab);
            //    }

            //}
            //Save all session list
          

            List<DesignFormTab> oTabList = Session[SessionTabList] as List<DesignFormTab>;
            if (eFormID == 0)
            {
                DesignForm oForm = new DesignForm();
                oForm.Name = this.txtFormName.Text;
                oForm.ApplicaitonID = 4;
                oForm.Type = 1; // Resource type in design form table
                DesignForm.Save<DesignForm>(oForm);
                eFormID = oForm.FormID;
                foreach ( DesignFormTab oTab in oTabList   )
                {
                    oTab.FormID = oForm.FormID;
                 
                }

            }


            foreach (DesignFormTab oRealTab in oTabList)
            {
                
                DesignFormTab.Save<DesignFormTab>(oRealTab);
            }
           
        
        
        
        }

        protected void TabAdd(object sender, EventArgs e)
        {
            SetControlPosition(ddlCurrentTab.SelectedValue == string.Empty ? string.Empty : ddlCurrentTab.SelectedValue);
            if (eFormID > 0)
            {
                if (!IsValidNewTab())
                {
                    return;
                }

            }

            string Error = AjexTabs.AddNewTabToTabContainer(CurrentTab, this.txtTabName.Text, this.txtIdentify.Text, this.txtDesc.Text,  AciveHidClient, this.chkActive.Checked);
          
            if (Error == string.Empty)
            {
                if (Session[SessionTabList] == null)
                {
                    return;
                }
                List<DesignFormTab> oTabList =Session[SessionTabList] as List<DesignFormTab>;
                int? MaxDisplay = (from o in oTabList
                                  select o.Sequence).Max();
                // save it to database
                DesignFormTab oTab = new DesignFormTab();
                oTab.Name = txtTabName.Text;
                oTab.SysIdentity = txtIdentify.Text;
                oTab.Description = txtDesc.Text;
                oTab.IsEnabled = chkActive.Checked;
                oTab.IsVisible = chkVisible.Checked;
                oTab.FormID = eFormID;
                oTab.IsSysUse = false;
                if (MaxDisplay.HasValue)
                {
                    oTab.Sequence = Convert.ToInt32(MaxDisplay +1);
                }
                else
                {
                    oTab.Sequence = 1;
                }

                //DesignFormTab.Save<DesignFormTab>(oTab);
                oTabList.Add(oTab);
                Session[SessionTabList] = oTabList;
                LoadTabs(false);
                if (lstTabList.Items.Count > 0)
                {
                    lstTabList.SelectedIndex = lstTabList.Items.Count-2;
                    SetTab(lstTabList.SelectedValue);
                }
                this.bntAdd.Enabled = false;
                this.IsTabChanged = true;
                string msg = Action_TabAdd_Message; // "A new tab was added sucessfully. Thank you!";
            
               Guid oguid = new Guid();
              ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormSucessStatus','" + msg + "');", true);
              //  this.jsfunction.Text = "<script>callBoxFancy('" + this.lblStatusMsg.ClientID + "','"+ lblStatusMsg.Text +"');</script>";
               
            }

          

        }

        protected void TabRemove(object sender, EventArgs e)
        {

          ///  SetControlPosition(ddlCurrentTab.SelectedValue == string.Empty ? string.Empty  :ddlCurrentTab.SelectedValue);
            if (lstTabList.SelectedValue != string.Empty)
            {
                string msg = lstTabList.SelectedItem.Text + Action_TabDelete_Message;  // " tab was deleted sucessfully. Thank you!";
               // DesignFormTab otab = DesignFormTab.Load<DesignFormTab>(lstTabList.SelectedValue);
                DesignFormTab otab = DesignFormTab.GetDataBySysIdentity(eFormID, lstTabList.SelectedValue);
                if (otab != null)
                {
                    DesignFormTab.FinalDelete<DesignFormTab>(otab);
                }

                if (Session[SessionTabList] != null)
                {
                    List<DesignFormTab> oList = Session[SessionTabList] as List<DesignFormTab>;
                    var vTab = from o in oList
                    where o.SysIdentity == lstTabList.SelectedValue
                     select o;
                    DesignFormTab oTab = vTab.FirstOrDefault();
                    if (vTab.Count() > 0)
                    {
                        oList.Remove(vTab.FirstOrDefault());
                    }
                    foreach (TabPanel oPanel in  this.CurrentTab.Tabs)
                    {
                        if (oPanel.ID == oTab.SysIdentity)
                        {
                            this.CurrentTab.Tabs.Remove(oPanel);
                            break;
                        }
                    }

                    Session[SessionTabList] = oList;
                }
                LoadTabs(false);
                if (lstTabList.Items.Count > 0)
                {
                    lstTabList.SelectedIndex = lstTabList.Items.Count - 2;
                    SetTab(lstTabList.SelectedValue);
                }
               

                Guid oguid = new Guid();
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormSucessStatus','" + msg + "');", true);
            }
        }
        #endregion

        #region Field Action

        private DesignFormField oFormField = new DesignFormField();

        protected void FieldSave(object sender, EventArgs e)
        {
            SetControlPosition(ddlCurrentTab.SelectedValue == string.Empty ? string.Empty  : ddlCurrentTab.SelectedValue);
            accordionFormDesign.SelectedIndex = AccordingIndex;
            if (!IsAControlbeingSelected())
            {
                return;
            }

            if (!IsValidNewField())
            {
                return;
            };


            if (!IsValidControlName(false))
            {
                return;
            }
            //Size must be number
            System.Web.UI.Control oControl = new System.Web.UI.Control();
            DesignFormField oFormField = DesignFormField.Load<DesignFormField>(Convert.ToInt32(this.hidFieldID.Value));
            string PropertySkinID = string.Empty;

            int ExistingFieldId = oFormField.FieldID;
            string ExistingLabel = oFormField.Label;

            if (this.txtSkin.Text != string.Empty)
            {
                PropertySkinID = this.txtSkin.Text;
            }

            if (this.accordionFormDesign.SelectedIndex == 0)
            {

                oControl = CreateTextBox(txtTextBoxName.Text, ref oFormField) as System.Web.UI.Control;

            }

            // Drop down list
            else if (this.accordionFormDesign.SelectedIndex == 1)
            {

                oControl = CreateDropDownList(txtTextBoxName.Text, ref oFormField) as System.Web.UI.Control;

            }
            //Check box
            else if (this.accordionFormDesign.SelectedIndex == 2)
            {

                oControl = CreateCheckbox(txtTextBoxName.Text, ref oFormField) as System.Web.UI.Control;

            }
            // Datetime 
            else if (this.accordionFormDesign.SelectedIndex == 3)
            {

                oControl = CreateDate(txtTextBoxName.Text, ref oFormField) as System.Web.UI.Control;


            }
            //image with file upload 
            else if (this.accordionFormDesign.SelectedIndex == 4)
            {
                oControl = CreateImage(txtTextBoxName.Text, ref oFormField) as System.Web.UI.Control;

            }
            else if (this.accordionFormDesign.SelectedIndex == 5)
            {
                oControl = CreateHyperLink(txtTextBoxName.Text, ref oFormField) as System.Web.UI.Control;

            }

            oFormField.SkinID = PropertySkinID;
            oFormField.Name = txtTextBoxName.Text.Replace(" ", string.Empty);
            oFormField.ControlSize = txtSize.Text;
            oFormField.Label = ExistingLabel;

              DesignFormTab otab = DesignFormTab.Load<DesignFormTab>(ddlCurrentTab.SelectedValue);
              TabPanel oPanel = CurrentTab.FindControl(otab.SysIdentity) as TabPanel;
              if (oPanel != null)
              {
                  Label currentLabel = oPanel.FindControl("lblEform" + oFormField.Name) as Label;
                  if (currentLabel != null)
                  {
                      if ((oFormField.Label == txtLabelName.Text) && (currentLabel.Text != oFormField.Label))
                      {
                          oFormField.Label = currentLabel.Text;
                      }
                      else if ((oFormField.Label == currentLabel.Text) && (txtLabelName.Text != oFormField.Label))
                      {
                          oFormField.Label = txtLabelName.Text;
                      }
                  }
              }

              txtLabelName.Text = oFormField.Label;

              oFormField.ControlType = iControlType;
              oFormField.IsVisible = chkVisible.Checked == true ? true : false;
              oFormField.IsEnabled = chkActive.Checked == true ? true : false;

            //  oFormField.SkinID = oControl.SkinID;
              oFormField.IsSearch = false;
              oFormField.FormID = eFormID;
              bntFieldDelete.Enabled = true;
            DesignFormField.Save<DesignFormField>(oFormField);
            IsEnable = true; 
            string msg = Action_FieldSave_Message;
            Guid oguid = new Guid();
            ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormSucessStatus','" + msg + "');", true);

        }

        protected void FieldAdd(object sender, EventArgs e)
        {
            SetControlPosition(ddlCurrentTab.SelectedValue == string.Empty ? string.Empty  : ddlCurrentTab.SelectedValue);
            if (!IsAControlbeingSelected())
            {
                return;
            }

            if (!IsValidNewField())
            { return; 
            };

            if (!IsValidControlName(true))
            {
                return;
            }

            // ini position
            string StartPos = "0";
            string ControlLeft = "0";
            //string ImageStartPos = "10";
            //string ImageLeftPos = "300";

            DesignFormField oDesign = new DesignFormField();

            // get control name and field name
            System.Web.UI.Control oControl = new System.Web.UI.Control();
            System.Web.UI.Control oLabel =  CreateLabel(txtLabelName.Text, txtLabelName.Text  );
            oLabel.SkinID = "Editorlabel";
            if (this.accordionFormDesign.SelectedIndex == 0)
            {
                oControl = CreateTextBox(txtTextBoxName.Text, out oDesign, true) as System.Web.UI.Control;

            }
            else if (this.accordionFormDesign.SelectedIndex == 1)
            {
                oControl = CreateDropDownList(txtTextBoxName.Text, out oDesign, true) as System.Web.UI.Control;
               
            }
            else if (this.accordionFormDesign.SelectedIndex == 2)
            {
                oControl = CreateCheckbox(txtTextBoxName.Text, out oDesign, true ) as System.Web.UI.Control;

            }
            else if (this.accordionFormDesign.SelectedIndex == 3)
            {
                oControl = CreateDate(txtTextBoxName.Text, out oDesign, true ) as System.Web.UI.Control;

            }

            else if (this.accordionFormDesign.SelectedIndex == 4)
            {
                oControl = CreateImage(txtTextBoxName.Text, out oDesign, true ) as System.Web.UI.Control;

            }
            else if (this.accordionFormDesign.SelectedIndex == 5)
            {
                oControl = CreateHyperLink(txtTextBoxName.Text, out oDesign, true ) as System.Web.UI.Control;

            }
            oDesign.Name = txtTextBoxName.Text.Replace(" ", string.Empty);
          
            Label oAtLabel = oLabel as Label;
            if (this.accordionFormDesign.SelectedIndex != 5)
            {
                oDesign.Label = oAtLabel.Text;
            }
            oDesign.ControlType =iControlType;
            oDesign.IsVisible = chkVisible.Checked == true? true : false;
            oDesign.IsEnabled = chkActive.Checked == true? true : false;
            if ( ddlCurrentTab.SelectedValue != string.Empty )
            {
                 oDesign.TabID = Convert.ToInt16 ( ddlCurrentTab.SelectedValue);
            }
            else
            {
                  oDesign.TabID =0;
            
            }
            oDesign.SkinID = oControl.SkinID;
            oDesign.IsSearch = false;
            oDesign.FormID = eFormID;
            

            int fieldId = oDesign.FieldID;

            //Label css position style
            String cssStyle = string.Empty;
            cssStyle = FormDesign.ccsRelative + FormDesign.ccsTop + StartPos + FormDesign.ccsPX;
            cssStyle = cssStyle + FormDesign.ccsLeft + StartPos + FormDesign.ccsPX;

            int labelLength = txtLabelName.Text.Length  + 80;

            // add control to panel
            if (CurrentTab != null)
            {
                if (this.ddlCurrentTab.SelectedValue != string.Empty)
                {
                    DesignFormTab otab = DesignFormTab.Load<DesignFormTab>(ddlCurrentTab.SelectedValue);
                    TabPanel oPanel = CurrentTab.FindControl(otab.SysIdentity) as TabPanel;
                    if (oPanel != null)
                    {
                        LiteralControl oLabelLiteral = new LiteralControl();
                        oLabelLiteral.Text = "<div id=\"DIV" + oControl.ID + "\" Style='" + cssStyle + "' class='" + this.dragcssClass + "'  >";

                        oPanel.Controls.Add(oLabelLiteral);
                        oPanel.Controls.Add(oLabel);
                        LiteralControl oLabelEndLiteral = new LiteralControl();
                        string endDiv = "</div>";
                        if (  (this.accordionFormDesign.SelectedIndex == 0) && (this.chkMandatory.Checked))
                        {
                            endDiv = "<span style='Color: red'>*</span></div>";  
                        }
                        oLabelEndLiteral.Text = endDiv;

                        //redefine css style
                        cssStyle = FormDesign.ccsRelative + FormDesign.ccsTop + StartPos + FormDesign.ccsPX;
                        cssStyle = cssStyle + FormDesign.ccsLeft + " " + labelLength.ToString()  + FormDesign.ccsPX;

                        oPanel.Controls.Add(oLabelEndLiteral);
                        LiteralControl oLiteral = new LiteralControl();
                        
                        oLiteral.Text = "<Div id=\"DIV" + oControl.ID + "\" Style='" + cssStyle + "' class='" + this.dragcssClass + "'  >";
                        // oLabel.Attributes.Add(AppConstManager.cStyle, cssStyle);
                        oPanel.Controls.Add(oLiteral);
                        oPanel.Controls.Add(oControl);                     
                        LiteralControl oEndLiteral = new LiteralControl();
                        oEndLiteral.Text = "</Div>";
                        oPanel.Controls.Add(oEndLiteral);
                        
                    }
                }

            }
            else
            {
                CurrentPanel.Controls.Add(oLabel);
                CurrentPanel.Controls.Add(oControl);
            }
            oDesign.ControlLeft = labelLength;
            oDesign.ControlTop = Convert.ToInt16(StartPos);
            oDesign.LabelLeft = 0;
            oDesign.LabelTop = Convert.ToInt16(StartPos);

            DesignFormField.Save<DesignFormField>(oDesign);
            Guid gMessage = Guid.NewGuid();
            //string sJavascript = "eFormChangeClassForDrag('" + cssDragClass + "', true);editbox_init()";
            LoadFieldDetail();
            bntFieldAdd.Enabled = false;
            int count = 0;
            foreach (ListItem oItem in ddlFields.Items)
            {
                if (oItem.Value == oDesign.FieldID.ToString())
                {
                    ddlFields.SelectedIndex = count;
                    break;
                }
                count++;
            }

            hidFieldID.Value = oDesign.FieldID.ToString();
            hidControlList.Value = hidControlList.Value + "";
            hidLabelList.Value = hidLabelList.Value + "";
            string sJavascript = "editbox_init()";
            ScriptManager.RegisterStartupScript(this.UpdatePanel1, GetType(), gMessage.ToString(), sJavascript, true);
            string msg = Action_FieldAdd_Message;
            //CreateFormDesignScript("Main", UpdatePanel1, TabContainer1);
            IsEnable = true;
            AccordingIndex = accordionFormDesign.SelectedIndex;
            SetTab(lstTabList.SelectedValue);


            this.ddlCurrentTab.SelectedValue = lstTabList.SelectedValue;
            bntSaveAllFields.Enabled = true;
            Guid oguid = new Guid();
            ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormSucessStatus','" + msg + "');", true);

        }

        protected void FieldRemove(object sender, EventArgs e)
        {
            SetControlPosition(ddlCurrentTab.SelectedValue == string.Empty ? string.Empty : ddlCurrentTab.SelectedValue);
            if (!IsAControlbeingSelected())
            {
                return;
            }
            DesignFormField oFormField = DesignFormField.Load<DesignFormField>(this.hidFieldID.Value);
            if (oFormField != null)
            {   
                //Remove field from db schema
                DesignFormField.DeleteColumnFromDBTable(DBTableName, oFormField.Name);

                DesignFormField.FinalDelete<DesignFormField>(oFormField );
                LoadFieldDetail();
                SetAllFields();
                string msg = Action_FieldDelete_Message;
                if (this.ddlFields.Items.Count == 1)
                {
                    bntFieldAdd.Enabled = true; 
                }
                IsEnable = true;
                Guid oguid = new Guid();
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.GetType(), oguid.ToString(), "callBoxFancy('eFormSucessStatus','" + msg + "');", true);
            }
          

        }
        #endregion

        #region Create New Field
        protected System.Web.UI.Control CreateHyperLink(string ControlName, ref DesignFormField oFormField)
        {
           
            this.accordionFormDesign.SelectedIndex = 5;
            oFormField.Message = txtText.Text;
            oFormField.URL = txtLink.Text;
            oFormField.NewWindow = chkOpenWindow.Checked == true ? true : false;
            oFormField.WithLabel = chkWithLabel.Checked == true ? true : false;
            if (chkWithLabel.Checked)
            {

                oFormField.Label = txtContent.Text;
            }
            HyperLink oHyperlink = new HyperLink();
            oHyperlink.ID = "hyperEform" + ControlName;
            oHyperlink.ToolTip = oHyperlink.ID;
            oHyperlink.NavigateUrl = this.txtLink.Text;
            string DataType = "nVarchar(500)";
            iControlType = Convert.ToInt16(FormDesign.ControlType.HyperLink);

            oHyperlink.SkinID = HyperlinkSkinID;
            DesignFormField.ModifyDBTable(DBTableName, ControlName, DataType, false, Convert.ToInt16(hidFieldID.Value));
            return (System.Web.UI.Control)oHyperlink;
        }

        protected System.Web.UI.Control CreateHyperLink(string ControlName, out DesignFormField oDesign, Boolean IsUpdate)
        {
            oDesign = new DesignFormField();
            if (!IsUpdate)
            {
                oDesign = oFormField;
            }
            this.accordionFormDesign.SelectedIndex = 5;
            oDesign.Message = txtText.Text;
            oDesign.URL = txtLink.Text;
            oDesign.NewWindow = chkOpenWindow.Checked == true ? true : false;
            
            oDesign.WithLabel =  chkWithLabel.Checked == true ? true : false;
            if (chkWithLabel.Checked)
            {

                oDesign.Label = txtContent.Text;
            }
            HyperLink oHyperlink = new HyperLink();
            oHyperlink.ID = "hyperEform" + ControlName;
            oHyperlink.ToolTip = oHyperlink.ID;
            oHyperlink.NavigateUrl = this.txtLink.Text;
            string DataType = "nVarchar(500)";
            iControlType = Convert.ToInt16(FormDesign.ControlType.HyperLink);
           
            oHyperlink.SkinID = HyperlinkSkinID;
            DesignFormField.ModifyDBTable(DBTableName, ControlName, DataType, IsUpdate, Convert.ToInt16(hidFieldID.Value));
            return (System.Web.UI.Control)oHyperlink;
        }

        protected System.Web.UI.Control CreateImage(string ControlName, ref DesignFormField oFormField)
        {

            oFormField.Width = Convert.ToInt16(this.txtWidth.Text);
            oFormField.Height = Convert.ToInt16(this.txtHeight.Text);
            oFormField.CanEnlarge = chkEnlarg.Checked == true ? true : false;
            oImageControl = (ucImageControl)LoadControl("~/Controls/ucImageControl.ascx");

            oImageControl.EnlargeImageClientID = this.EnlargeImageClientID;

            oImageControl.ID = "controlImage" + ControlName;
            if (txtWidth.Text == string.Empty)
            {
                oImageControl.width = sImgWidth;
            }
            else
            {
                oImageControl.width = Convert.ToInt32(txtWidth.Text);
            }
            if (this.txtHeight.Text == string.Empty)
            {
                oImageControl.Height = sImgHeight;
            }
            else
            {
                oImageControl.Height = Convert.ToInt32(txtHeight.Text);
            }
            //Set allow enlarge image
            if (this.chkEnlarg.Checked)
            {
                oImageControl.IsEnlarge = true;
            }
            else
            {
                oImageControl.IsEnlarge = false;
            }
            //************************************
            //Set permission here 

            oImageControl.IsAllowFileUpload = true;


            //******************************

            // oImage.Width = Unit.Pixel ( sImgWidth);
            ///oImage.Height = Unit.Pixel(sImgHeight);

            if (chkImageWithLabel.Checked)
            {
                oFormField.Label = txtText.Text;
                oFormField.WithLabel = true;
            }


            //DateTime type.
            string DataType = "Varchar(500)";
            iControlType = Convert.ToInt16(FormDesign.ControlType.Image);
            DesignFormField.ModifyDBTable(DBTableName, ControlName, DataType, false, Convert.ToInt16(hidFieldID.Value));
            return (System.Web.UI.Control)oImageControl;


        }


        protected System.Web.UI.Control CreateImage(string ControlName, out DesignFormField oDesign, Boolean IsUpdate)
        {
            oDesign = new DesignFormField();
            if (!IsUpdate)
            {
                oDesign = oFormField;
            }
            oDesign.Width = Convert.ToInt16( this.txtWidth.Text);
            oDesign.Height = Convert.ToInt16(this.txtHeight.Text);
            oDesign.CanEnlarge = chkEnlarg.Checked == true ? true : false;
            oImageControl = (ucImageControl)LoadControl("~/Controls/ucImageControl.ascx");

            oImageControl.EnlargeImageClientID = this.EnlargeImageClientID;
            
            oImageControl.ID = "controlImage" + ControlName;
            if (txtWidth.Text == string.Empty)
            {
                oImageControl.width = sImgWidth;
            }
            else
            {
                oImageControl.width = Convert.ToInt32(txtWidth.Text);
            }
            if (this.txtHeight.Text == string.Empty)
            {
                oImageControl.Height = sImgHeight;
            }
            else
            {
                oImageControl.Height = Convert.ToInt32(txtHeight.Text);
            }
            //Set allow enlarge image
            if (this.chkEnlarg.Checked)
            {
                oImageControl.IsEnlarge = true;
            }
            else
            {
                oImageControl.IsEnlarge = false;
            }
            //************************************
            //Set permission here 

            oImageControl.IsAllowFileUpload = true;


            //******************************

            // oImage.Width = Unit.Pixel ( sImgWidth);
            ///oImage.Height = Unit.Pixel(sImgHeight);

            if (chkImageWithLabel.Checked)
            {
                oDesign.Label = txtText.Text;
                oDesign.WithLabel = true;
            }

            //DateTime type.
            string DataType = "Varchar(500)";
           iControlType = Convert.ToInt16(FormDesign.ControlType.Image);
           DesignFormField.ModifyDBTable(DBTableName, ControlName, DataType, IsUpdate, Convert.ToInt16(hidFieldID.Value));
            return (System.Web.UI.Control)oImageControl;

        
        }

        protected System.Web.UI.Control CreateDate(string ControlName, ref DesignFormField oFormField)
        {

            oFormField.IsCalendar = chkWithCalendar.Checked == true ? true : false;
            oFormField.IsMandatory = chkddlMandatory.Checked == true ? true : false;
            oFormField.Message = txtddlMSG.Text;
            oFormField.Width = Convert.ToInt16(txtDateWidth.Text);
            oFormField.Height = Convert.ToInt16(txtDateHeight.Text);
            oFormField.DateFormat = ddlCalendarFormat.SelectedValue;
            TextBox oTextBox = new TextBox();
            oTextBox.ID = "txtDateEform" + ControlName;
            oTextBox.ToolTip = oTextBox.ID;
            if (SkinID == string.Empty)
            {
                oTextBox.SkinID = TextBoxDateSkinID;
            }
            else
            {
                oTextBox.SkinID = SkinID;
            }

            if (chkddlMandatory.Checked)
            {
                oFormField.IsMandatory = true;
                oFormField.Message = txtddlMSG.Text;
            }
            else
            {
                oFormField.IsMandatory = false ;
                oFormField.Message = string.Empty ;
            
            }

            //DateTime type.
            string DataType = "DateTime";
            iControlType = Convert.ToInt16(FormDesign.ControlType.DateTime);
            DesignFormField.ModifyDBTable(DBTableName, ControlName, DataType, false, Convert.ToInt16(hidFieldID.Value));
            return (System.Web.UI.Control)oTextBox;

        }

        protected System.Web.UI.Control CreateDate(string ControlName, out DesignFormField oDesign, Boolean IsUpdate)
        {
            oDesign = new DesignFormField();
            if (!IsUpdate)
            {
                oDesign = oFormField;
            }
            oDesign.IsCalendar = chkWithCalendar.Checked == true ? true : false;
            oDesign.IsMandatory = chkddlMandatory.Checked == true ? true : false;
            oDesign.Message = txtddlMSG.Text;
            oDesign.DateFormat = ddlCalendarFormat.SelectedValue;
            oDesign.Width = Convert.ToInt16 ( txtDateWidth.Text);
            oDesign.Height = Convert.ToInt16(txtDateHeight.Text);
            TextBox oTextBox = new TextBox();
            oTextBox.ID = "txtDateEform" + ControlName;
            oTextBox.ToolTip = oTextBox.ID;
            if (SkinID == string.Empty)
            {
                 oTextBox.SkinID = TextBoxDateSkinID;
            }
            else
            {
              oTextBox.SkinID = SkinID;
            }

            if (chkddlMandatory.Checked)
            {
                oDesign.IsMandatory = true;
                oDesign.Message = txtddlMSG.Text;
            }

            //DateTime type.
            string  DataType = "DateTime";
            iControlType = Convert.ToInt16(FormDesign.ControlType.DateTime);
            DesignFormField.ModifyDBTable(DBTableName, ControlName, DataType, IsUpdate, Convert.ToInt16(hidFieldID.Value));
           return (System.Web.UI.Control)oTextBox;
        
        }

        protected System.Web.UI.Control CreateCheckbox(string ControlName, ref DesignFormField oFormField)
        {
           
            CheckBox oCheckBox = new CheckBox();
            oCheckBox.ID = "chkEform" + ControlName;
            oCheckBox.ToolTip = oCheckBox.ID;
            if (SkinID == string.Empty)
            {
                oCheckBox.SkinID = CheckBoxDefaultsKinID;
            }
            else
            {
                oCheckBox.SkinID = SkinID;
            }

            if (this.chkChecked.Checked) // checked value
            {
                oCheckBox.Checked = true;
                oFormField.HasDefault = true;
            }
            else
            {
                oCheckBox.Checked = false;
                oFormField.HasDefault = false;
            }
            //bit type
            string DataType = "bit";
            iControlType = Convert.ToInt16(FormDesign.ControlType.CheckBox);
            DesignFormField.ModifyDBTable(DBTableName, ControlName, DataType, false, Convert.ToInt16(hidFieldID.Value));

            return (System.Web.UI.Control)oCheckBox;

        }


        protected System.Web.UI.Control CreateCheckbox(string ControlName, out DesignFormField oDesign, Boolean IsUpdate)
        {
            oDesign = new DesignFormField();
            if (!IsUpdate)
            {
                oDesign = oFormField;
            }
            CheckBox oCheckBox = new CheckBox();
            oCheckBox.ID = "chkEform" + ControlName;
            oCheckBox.ToolTip = oCheckBox.ID;
            if (SkinID == string.Empty)
            {
                oCheckBox.SkinID = CheckBoxDefaultsKinID;
            }
            else
            {
                oCheckBox.SkinID = SkinID;
            }

            if (this.chkChecked.Checked) // checked value
            {
                oCheckBox.Checked = true;
                oDesign.HasDefault = true;
            }
            else
            {
                oCheckBox.Checked = false;
                oDesign.HasDefault = false;
            }
            //bit type
            string DataType = "bit";
            iControlType = Convert.ToInt16(FormDesign.ControlType.CheckBox);
            DesignFormField.ModifyDBTable(DBTableName, ControlName, DataType, true, Convert.ToInt16(hidFieldID.Value));

            return (System.Web.UI.Control)oCheckBox;
        
        }

        protected System.Web.UI.Control CreateTextBox(string TextName, ref DesignFormField oFormField)
        {

            oFormField.ControlSize = txtSize.Text;
            oFormField.Width = Convert.ToInt16(this.txtboxWidth.Text);
            oFormField.Height = Convert.ToInt16(this.txtboxHeight.Text);
            oFormField.IsReadOnly = ChkReadOnly.Checked == true ? true : false;
            oFormField.IsMandatory = chkMandatory.Checked == true ? true : false;
            if (chkMandatory.Checked)
            {
                oFormField.Message = txtMSG.Text;
            }

            TextBox oTextBox = new TextBox();
            oTextBox.ID = "txtEform" + TextName;
            oTextBox.ToolTip = oTextBox.ID;
            oTextBox.Width = Unit.Pixel(Convert.ToInt16(this.txtboxWidth.Text));
            oTextBox.Height = Unit.Pixel(Convert.ToInt16(this.txtboxHeight.Text));
            oTextBox.SkinID = TextBoxDefaultSkinID;

            //Nvarchar type. Default size is 100
            string DataType = "nVarchar(" + this.txtSize.Text + ")";
            iControlType = Convert.ToInt16(FormDesign.ControlType.TextBox);
            if (this.radMoney.Checked)
            {
                DataType = "Money";
                oTextBox.SkinID = TextBoxMoneySkinID;
                iControlType = Convert.ToInt16(FormDesign.ControlType.Money);
            }
            else
            {


                if (radTextArea.Checked)
                {
                    iControlType = Convert.ToInt16(FormDesign.ControlType.TextArea);
                    DataType = "nText";
                    oTextBox.TextMode = TextBoxMode.MultiLine;

                    oTextBox.SkinID = TextAreaDefaultSkinID;

                }
                if (this.ChkReadOnly.Checked)
                {

                    oTextBox.SkinID = TextBoxReadOnlySkinID;
                }
                if (this.chkMandatory.Checked)
                {
                    // oTextBox.SkinID = TextBoxMandatorySkinID;


                }


            }
            //modify data 
            if (txtSkin.Text != string.Empty)
            {
                oTextBox.SkinID = txtSkin.Text;
            }
            DesignFormField.ModifyDBTable(DBTableName, TextName, DataType, false, Convert.ToInt16(hidFieldID.Value));

            return (System.Web.UI.Control)oTextBox;

        }

        protected  System.Web.UI.Control CreateTextBox(string TextName, out DesignFormField oDesign, Boolean IsUpdate )
        {
            oDesign = new DesignFormField();
            if (!IsUpdate)
            {
                oDesign = oFormField;
            }
            oDesign.ControlSize = txtSize.Text;
            oDesign.Width = Convert.ToInt16(this.txtboxWidth.Text);
            oDesign.Height = Convert.ToInt16( this.txtboxHeight.Text);
            oDesign.IsReadOnly = ChkReadOnly.Checked == true ? true : false;
            oDesign.IsMandatory = chkMandatory.Checked == true ? true : false;
            if (chkMandatory.Checked)
            {
                oDesign.Message = txtMSG.Text;
            }

            TextBox oTextBox = new TextBox();
            oTextBox.ID =  "txtEform" + TextName ;
            oTextBox.ToolTip = oTextBox.ID;
            oTextBox.Width = Unit.Pixel( Convert.ToInt16(this.txtboxWidth.Text));
            oTextBox.Height = Unit.Pixel (Convert.ToInt16(this.txtboxHeight.Text));
            oTextBox.SkinID = TextBoxDefaultSkinID;
               
            //Nvarchar type. Default size is 100
            string DataType = "nVarchar(" +  this.txtSize.Text  +")";
            iControlType = Convert.ToInt16(FormDesign.ControlType.TextBox);
            if (this.radMoney.Checked)
            {
                DataType = "Money";
                oTextBox.SkinID = TextBoxMoneySkinID;
                iControlType = Convert.ToInt16(FormDesign.ControlType.Money);
            }
            else
            {
                

                if (radTextArea.Checked)
                {
                    iControlType = Convert.ToInt16(FormDesign.ControlType.TextArea);
                    DataType = "nText";
                    oTextBox.TextMode = TextBoxMode.MultiLine;
                   
                    oTextBox.SkinID = TextAreaDefaultSkinID;
                   
                }
                if (this.ChkReadOnly.Checked)
                {
                   
                   oTextBox.SkinID = TextBoxReadOnlySkinID;
                }
                if (this.chkMandatory.Checked)
                {
                  // oTextBox.SkinID = TextBoxMandatorySkinID;


                }


            }
            //modify data 
            if (txtSkin.Text != string.Empty)
            {
                oTextBox.SkinID = txtSkin.Text;
            }
            DesignFormField.ModifyDBTable(DBTableName, TextName, DataType, IsUpdate, Convert.ToInt16(hidFieldID.Value));

            return  (System.Web.UI.Control)oTextBox;
        
        }


        protected System.Web.UI.Control CreateDropDownList(string ControlName, ref DesignFormField oFormField)
        {
          
            if (radValueList.Checked)
            {
                oFormField.IsDataList = true;
                oFormField.DataListTypeID = Convert.ToInt32( ddlValueList.SelectedItem.Value);

            }
            else
            {

                oFormField.IsDataList = false;
                oFormField.QueryStatement = txtQuery.Text;
            }

            DropDownList oDDL = new DropDownList();
            oDDL.ID = "ddlEform" + ControlName;
            oDDL.ToolTip = oDDL.ID;
            if (SkinID == string.Empty)
            {
                oDDL.SkinID = DropDownListDefaultsKinID;
            }
            else
            {
                oDDL.SkinID = SkinID;
            }
            //Nvarchar type. Default size is 200
            string DataType = "nVarchar(500)";
            iControlType = iControlType = Convert.ToInt16(FormDesign.ControlType.DrowDownList);

            DesignFormField.ModifyDBTable(DBTableName, ControlName, DataType, false, Convert.ToInt16(hidFieldID.Value));
            return (System.Web.UI.Control)oDDL;

        }


        protected System.Web.UI.Control CreateDropDownList(string ControlName, out DesignFormField oDesign, Boolean IsUpdate)
        {
            oDesign = new DesignFormField();
            if (!IsUpdate)
            {
                oDesign = oFormField;
            }
            if (radValueList.Checked)
            {
                oDesign.IsDataList = true;
                //oDesign.Datalist = ddlValueList.SelectedValue;
                oFormField.DataListTypeID = Convert.ToInt32(ddlValueList.SelectedItem.Value);
            }
            else
            {

                oDesign.IsDataList = false;
                oDesign.QueryStatement = txtQuery.Text;
            }

            DropDownList oDDL = new DropDownList();
            oDDL.ID = "ddlEform" + ControlName;
            oDDL.ToolTip = oDDL.ID;
            if (SkinID == string.Empty)
            {
                oDDL.SkinID = DropDownListDefaultsKinID;
            }
            else
            {
                oDDL.SkinID = SkinID;
            }
            //Nvarchar type. Default size is 200
            string DataType = "nVarchar(500)";
            iControlType = iControlType = Convert.ToInt16(FormDesign.ControlType.DrowDownList);

            DesignFormField.ModifyDBTable(DBTableName, ControlName, DataType, IsUpdate, Convert.ToInt16(hidFieldID.Value));
            return (System.Web.UI.Control)oDDL;
        
        }

        protected System.Web.UI.Control CreateLabel(string LabelName, string Text)
        {
            // Get Label name 

            Label oLabel = new Label();
            oLabel.ID = "lblEform" + LabelName;
            oLabel.Text = Text;
            oLabel.SkinID = LabelDefaultskinID;
            oLabel.ToolTip = Text;
            oLabel.CssClass = LabelDefaultCssClass;
            return oLabel;
        }


        #endregion


        #region Get field position 
        protected void SetControlPosition(String TabID)
        {
            string oControlList = this.hidControlList.Value;
            string oLabelList = this.hidLabelList.Value;
            string[] arrayLabel = oLabelList.Split(';');
            string[] sPosition = oControlList.Split(';');
            Hashtable oLabelTable = new Hashtable();
            Boolean IsLabel = false;
            //Get db schema

             DataTable oTypeDB = DesignFormField.GetAllFieldsByTableName(DBTableName);

            foreach (string sControl in sPosition)
            {
                // One by one to update control position and label
                if (sControl != string.Empty)
                {
                    string sControlList = sControl;
                    //Get ID first
                    int sPos = sControlList.IndexOf(",");
                    string ctrID = sControlList.Substring(0, sPos);
                    //Get Position
                    sControlList = sControlList.Replace(ctrID + ",", string.Empty);
                    int Left = sControlList.IndexOf(",");
                    String sLeft = sControlList.Substring(0, Left);
                    sLeft = sLeft.Replace("px", string.Empty);
                    sControlList = sControlList.Replace(sLeft + "px,", string.Empty);
                    String sTop = sControlList.Replace("px", string.Empty);
                    //Get label content
                    string sLabel = string.Empty;

                    if (ctrID.IndexOf("LABEL") > -1)
                    {
                        IsLabel = true;



                    }
                    else
                    {
                        IsLabel = false;
                    }

                    sLeft = sLeft.Replace("px", string.Empty);
                    ctrID = ctrID.Replace("DIV", string.Empty);
                    ctrID = ctrID.Replace("LABEL", string.Empty);
                    ctrID = ctrID.Replace("txtEform", string.Empty);
                    if (IsLabel)
                    {
                        foreach (string oLabel in arrayLabel)
                        {
                            if (oLabel != string.Empty)
                            {

                                int pos = oLabel.IndexOf(",");
                                string oID = oLabel.Substring(0, pos);
                                if (oID.IndexOf(ctrID) > 0)
                                {
                                    ctrID = ctrID.Replace("lblEform", string.Empty);
                                    //ctrID = ctrID.Replace(  eFormID + "_", string.Empty);
                                    sLabel = oLabel.Replace(oID  + ",", string.Empty);
                                    break;
                                }
                            }
                        }

                    }
                    //Find control to get table 
                    string UpdateTable = DBTableName;
                    DataRow[] DBField = oTypeDB.Select("Cname='" + ctrID + "'");
                    
                    string SQL = string.Empty;
                    if (IsLabel)
                    {

                        if (sLabel != string.Empty)
                        {
                            SQL = @"Update RSMS.eFormField Set LabelLeft=" + sLeft + ", LabelTop = " + sTop
                        + ", label ='" + sLabel + "'  "
                    + " Where Name ='" + ctrID + "' and FormID =" + eFormID ;
                        }
                    }
                    else
                    {
                        SQL = @"Update RSMS.eFormField Set ControlLeft=" + sLeft + ", controlTop = " + sTop
                           + " Where Name ='" + ctrID + "' and FormID =" + eFormID;
                    }

                    if (SQL != string.Empty)
                    {
                        DesignFormField.UpdateFormDesignPosition(SQL);
                    }
                }
                // Console.WriteLine(word);
            }


        }

        #endregion 



        protected void TabList_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            ActiveType = 0;
            if (this.lstTabList.SelectedValue != string.Empty)
            {
                if (lstTabList.Items.Count - 1 == lstTabList.SelectedIndex)
                {
                    this.bntAdd.Enabled = true;
                }
                else
                {
                    this.bntAdd.Enabled = false;
                }
                SetTab(lstTabList.SelectedValue);


                this.ddlCurrentTab.SelectedValue = lstTabList.SelectedValue;
                ActiveType = 1;
                LoadFieldDetail();
                SetAllFields();

                if (lstTabList.SelectedIndex > 1)
                {
                    this.bntDelete.Enabled = true; 
                }
                else
                {
                    this.bntDelete.Enabled = false;
                }
                if (lstTabList.SelectedValue == "-1" )
                {

                    this.bntDelete.Enabled = false;
                }

            }

         
        
        }

        public void CreateFormDesignScriptOnPanel(String SystemTabName, UpdatePanel oUpdatePanel, Panel panel)
        {
            StringBuilder sbScript = new StringBuilder(500);
            int nCount = 0;
            int nLabelCount = 0;
            sbScript.Append("var ArrayclientID = new Array();" + Environment.NewLine);
            sbScript.Append("var ArrayLabelID = new Array();" + Environment.NewLine);
        
                    foreach (System.Web.UI.Control oCont in panel.Controls)
                    {

                        if (oCont is Label)
                        {
                            sbScript.Append("ArrayclientID[" + nCount.ToString() + "] ='LABELDIV" + oCont.ID + "';" + Environment.NewLine);
                            sbScript.Append("ArrayLabelID[" + nLabelCount.ToString() + "] ='" + oCont.ClientID + "';" + Environment.NewLine);
                            nCount++;
                            nLabelCount++;
                        }

                        else if (oCont is UserControl)
                        {
                            sbScript.Append("ArrayclientID[" + nCount.ToString() + "] ='DIV" + oCont.ID + "';" + Environment.NewLine);
                            nCount++;
                        }
                        else if (oCont is TextBox || oCont is CheckBox || oCont is DropDownList || oCont is Button || oCont is HyperLink)
                        {
                            sbScript.Append("ArrayclientID[" + nCount.ToString() + "] ='DIV" + oCont.ID + "';" + Environment.NewLine);
                            nCount++;
                        }
                    }
          

            CreateClientScript(sbScript.ToString(), oUpdatePanel);
        }

        public void CreateFormDesignScript(String SystemTabName, UpdatePanel oUpdatePanel, TabContainer oTab)
        {
            StringBuilder sbScript = new StringBuilder(500);
            int nCount = 0;
            int nLabelCount = 0;
            sbScript.Append("var ArrayclientID = new Array();" + Environment.NewLine);
            sbScript.Append("var ArrayLabelID = new Array();" + Environment.NewLine);
            foreach (TabPanel panel in oTab.Tabs)
            {
                // if (panel.ID != SystemTabName)
                {
                    foreach (System.Web.UI.Control oCont in panel.Controls)
                    {

                        if (oCont is Label)
                        {
                            sbScript.Append("ArrayclientID[" + nCount.ToString() + "] ='LABELDIV" + oCont.ID + "';" + Environment.NewLine);
                            sbScript.Append("ArrayLabelID[" + nLabelCount.ToString() + "] ='" + oCont.ClientID + "';" + Environment.NewLine);
                            nCount++;
                            nLabelCount++;
                        }

                        else if (oCont is UserControl)
                        {
                            sbScript.Append("ArrayclientID[" + nCount.ToString() + "] ='DIV" + oCont.ID + "';" + Environment.NewLine);
                            nCount++;
                        }
                        else if (oCont is TextBox || oCont is CheckBox || oCont is DropDownList || oCont is Button || oCont is HyperLink)
                        {
                            sbScript.Append("ArrayclientID[" + nCount.ToString() + "] ='DIV" + oCont.ID + "';" + Environment.NewLine);
                            nCount++;
                        }
                    }
                }

            }

            CreateClientScript(sbScript.ToString(), oUpdatePanel);
        }

     



      

        protected void CreateClientScript(String sJavaScriptFunction, UpdatePanel oUpdatePanel)
        {

            Guid gMessage = Guid.NewGuid();

            ScriptManager.RegisterStartupScript(oUpdatePanel, oUpdatePanel.GetType(), gMessage.ToString(), sJavaScriptFunction, true);

        }

        protected void SetAllFields()
        { 
         //Get tab first
            if (this.ddlCurrentTab.SelectedValue != string.Empty)
            {
                SetField(this.ddlCurrentTab.SelectedValue, 0);
            }
            // no tab then get all fields by form id
            else
            {
                SetField(String.Empty, eFormID);
            }

            this.hidFieldID.Value = ddlFields.SelectedValue;
            SelectedTabIdentifier = this.ddlCurrentTab.SelectedValue;
        
        }

        protected void Fields_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            SetAllFields();
            
        }

        protected void CurrentTab_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            ActiveType = 1;
            LoadFieldDetail();
            SetAllFields();
        }

        protected void SetField( string TabIdentifier  , int FormID)
        {
            bntFieldAdd.Enabled = false;
            bntFieldDelete.Enabled = true;
            DesignFormField oEForm = new DesignFormField();

            DesignFormTab oTab = DesignFormTab.GetDataBySysIdentity(FormID, TabIdentifier);
            if (oTab == null)
            {
                return;
            }
            Int32 TabID = oTab.FormTabID;

            if (TabID > 0)
            {
                List<DesignFormField> oEFormFieldList = DesignFormField.GetDataBy(TabID, eFormID, Convert.ToInt16(ddlFields.SelectedValue));
               if (oEFormFieldList.Count>0)
               {
                   oEForm = oEFormFieldList.FirstOrDefault();
                }
               
            }
            else
            {
                List<DesignFormField> oEFormFieldList = DesignFormField.GetDataByeFormID(eFormID, Convert.ToInt16(ddlFields.SelectedValue));
                if (oEFormFieldList.Count > 0)
                {
                    oEForm = oEFormFieldList.FirstOrDefault(); 
                }
            }
            if (oEForm != null)
            {
                if (ddlFields.SelectedValue == "-1" )
                {
                    IniTextBox();
                    bntFieldAdd.Enabled = true ;
                    bntFieldDelete.Enabled = false;
                    bntSaveAllFields.Enabled = false;
                    foreach (AccordionPane Panes in accordionFormDesign.Panes)
                    {
                        Panes.Enabled = true;
                    }
                }
                else
                {
                    SetFieldDetail(oEForm);
                    bntSaveAllFields.Enabled = true;
                }
            }

        }

        protected void IniTextBox()
        {

            FieldConstrol oField = DesignFormField.GetLabelName(DBTableName);
            txtTextBoxName.Text = oField.ControlName;
            txtLabelName.Text = oField.LableName;
            chkFieldEnabled.Checked = true;
            chkFieldVisible.Checked = true;
            LoadDataList();
            txtSkin.Text = string.Empty;
            this.accordionFormDesign.SelectedIndex = 0;
            txtboxHeight.Text = "25";
            txtboxWidth.Text = "160";
            txtSize.Text = "255";
            ChkReadOnly.Checked =false;
            chkMandatory.Checked =  false;
            txtMSG.Text = string.Empty;
            this.radText.Checked = true;
            this.radTextArea.Checked = false;
            this.radMoney.Checked = false;
        
        }

        protected void SetFieldDetail(DesignFormField offield)
        {
            foreach (AccordionPane Panes in accordionFormDesign.Panes)
            {
                Panes.Enabled = false;
            }
            txtTextBoxName.Text = offield.Name;
            txtLabelName.Text = offield.Label;
            txtSkin.Text = offield.SkinID == null ? string.Empty:  offield.SkinID;
            chkFieldEnabled.Checked = offield.IsEnabled == true  ? true : false;
            chkFieldVisible.Checked = offield.IsVisible == true  ? true : false;
            LoadDataList();
            bntFieldDelete.Enabled = true;
            hidFieldID.Value = offield.FieldID.ToString();

            switch (offield.ControlType)
                {
                    case 1: //drop down lsit
                        SetDropDownList(offield);
                        break;
                    case 2: //check box
                        SetCheckBox(offield);
                        break;
                     case 3: //Text box
                        SetTextBox(offield);
                        break;
                     case 4: //List box
                       
                        break;
                     case 5: //Text area
                        SetTextArea(offield);
                        break;
                     case 6: //Literal
                        
                        break;
                     case 7: //Button
                       
                        break;
                     case 8: //Image
                        SetImage(offield);
                        break;
                     case 9: //DateTime
                        SetDateTime( offield);
                        break;
                     case 10: //Money
                        SetMoney(offield);
                        break;
                     case 11: // HyperLink
                        SetHyperLink(offield);
                        break;
                    default:
                       
                        break;
                }

            AccordingIndex = accordionFormDesign.SelectedIndex;
        }


        protected void LoadDataList()
        {
            //List<eFormDataList> oList = eFormDataList.GetAllDataList();

            DataTable oDB = DesignFormDataList.GetAllDataListCategory();
            this.ddlValueList.DataTextField = "Category";
            this.ddlValueList.DataValueField = "Type";
            ddlValueList.DataSource = oDB;
            ddlValueList.DataBind();
        
        }


       
        #region Set Control Type on Field

        protected void SetImage(DesignFormField offield)
        {
            this.accordionFormDesign.SelectedIndex = 4;
            AccordionPane oPane = accordionFormDesign.Panes[this.accordionFormDesign.SelectedIndex];
          
            oPane.Enabled = true;
            txtHeight.Text = offield.Height.ToString();
            txtWidth.Text = offield.Width.ToString();
            chkEnlarg.Checked = offield.CanEnlarge ==  true ? true : false;

            if (offield.WithLabel)
            {
                txtText.Text = offield.Label;
                chkImageWithLabel.Checked = true;
            }
        }

        protected void SetTextBox(DesignFormField offield)
        {
            this.accordionFormDesign.SelectedIndex = 0;
            AccordionPane oPane = accordionFormDesign.Panes[this.accordionFormDesign.SelectedIndex];
           
            oPane.Enabled = true;
            txtboxHeight.Text = offield.Height.ToString();
            txtboxWidth.Text = offield.Width.ToString();
            txtSize.Text = offield.ControlSize == null ? string.Empty : offield.ControlSize;
            ChkReadOnly.Checked = offield.IsReadOnly == true ? true : false;
            chkMandatory.Checked = offield.IsMandatory == true ? true : false;
            if (chkMandatory.Checked)
            {
                txtMSG.Text = offield.Message;
                txtMSG.Enabled = true; 
            }
            this.radText.Checked = true;
            this.radTextArea.Checked = false;
            this.radMoney.Checked = false;

        }

        protected void SetDropDownList(DesignFormField offield)
        {
            this.accordionFormDesign.SelectedIndex = 1;
            AccordionPane oPane = accordionFormDesign.Panes[this.accordionFormDesign.SelectedIndex];
           
            oPane.Enabled = true;
            radValueList.Checked = offield.IsDataList == false ? true : false;
            radSQLStatement.Checked = offield.IsDataList == true ? false : true;
            if (offield.IsDataList == true)
            {
                radValueList.Checked = true;
                radSQLStatement.Checked = false;
                pnlqueryStatement.Visible = false;
                pnlList.Visible = true;
                if ( ddlValueList.Items.Count >0)
                {
                    ddlValueList.SelectedValue = offield.DataListTypeID.ToString();
                }

              }
            else
            {
                radSQLStatement.Checked = true;
                radValueList.Checked = false;
                pnlqueryStatement.Visible = true ;
                pnlList.Visible = false;
                txtQuery.Text = offield.QueryStatement != null ? offield.QueryStatement : string.Empty; 
          
            }
           
        }

        protected void SetMoney(DesignFormField offield)
        {
            this.accordionFormDesign.SelectedIndex = 0;
            AccordionPane oPane = accordionFormDesign.Panes[this.accordionFormDesign.SelectedIndex];
          
            oPane.Enabled = true;
            txtboxHeight.Text = offield.Height.ToString();
            txtboxWidth.Text = offield.Width.ToString();
            txtSize.Text = offield.ControlSize == null ? offield.ControlSize : string.Empty;
            ChkReadOnly.Checked = offield.IsReadOnly == true ? true : false;
            chkMandatory.Checked = offield.IsMandatory == true ? true : false;
            if (chkMandatory.Checked)
            {
                txtMSG.Text = offield.Message;
                txtMSG.Enabled = true;
            }
            this.radText.Checked = false;
            this.radTextArea.Checked = false;
            this.radMoney.Checked = true;

        }

        protected void SetDateTime(DesignFormField offield)
        {
            this.accordionFormDesign.SelectedIndex = 3;
            AccordionPane oPane = accordionFormDesign.Panes[this.accordionFormDesign.SelectedIndex];
         
            oPane.Enabled = true;
            chkddlMandatory.Checked = offield.IsMandatory == null ? offield.IsMandatory == true ? true : false : false;
            txtddlMSG.Text = offield.Message == null ? offield.Message : string.Empty;
            chkWithCalendar.Checked = offield.IsCalendar == false ? false : true;
            ddlCalendarFormat.SelectedValue = offield.DateFormat;
            txtDateHeight.Text = offield.Height.ToString();
            txtDateWidth.Text = offield.Width.ToString();
            if (offield.IsMandatory == true)
            {
                chkddlMandatory.Checked = true;
                txtddlMSG.Text = offield.Message;
            }
            else
            {
                chkddlMandatory.Checked = false;
                txtddlMSG.Text = string.Empty ;
            }

        }

        protected void SetHyperLink(DesignFormField offield)
        {
            this.accordionFormDesign.SelectedIndex = 5;
            AccordionPane oPane = accordionFormDesign.Panes[this.accordionFormDesign.SelectedIndex];
            oPane.Enabled = true;
            txtText.Text = offield.Message;
            txtLink.Text = offield.URL;
            chkOpenWindow.Checked = offield.NewWindow == true  ? true : false;
            chkWithLabel.Checked = offield.WithLabel == true ? true : false;
            if (chkWithLabel.Checked)
            {
                txtContent.Text = offield.Label;
            }
        }

        protected void SetTextArea(DesignFormField offield)
        {
            this.accordionFormDesign.SelectedIndex = 0;
            AccordionPane oPane = accordionFormDesign.Panes[this.accordionFormDesign.SelectedIndex];
            oPane.Enabled = true;
            txtboxHeight.Text = offield.Height.ToString();
            txtboxWidth.Text = offield.Width.ToString();
            txtSize.Text = offield.ControlSize == null ? offield.ControlSize : string.Empty;
            ChkReadOnly.Checked = offield.IsReadOnly ==true ? true : false;
            chkMandatory.Checked = offield.IsMandatory == true ? true : false;
            if (chkMandatory.Checked)
            {
                txtMSG.Text = offield.Message;
                txtMSG.Enabled = true;
            }
            this.radText.Checked = false;
            this.radTextArea.Checked = false;
            this.radMoney.Checked = true;

        }


        protected void SetCheckBox(DesignFormField offield)
        {
            this.accordionFormDesign.SelectedIndex = 2;
            AccordionPane oPane = accordionFormDesign.Panes[this.accordionFormDesign.SelectedIndex];
            oPane.Enabled = true;
            chkChecked.Checked = offield.HasDefault == false ? false : true;

        }

        #endregion


        protected void SetTab(String TabIdentifier)
        {
            if ( Session[SessionTabList] == null)
            {
                return;
            }
            List<DesignFormTab> oTabList = Session[SessionTabList] as List<DesignFormTab>;

            var vTab = from o in oTabList
                       where o.SysIdentity == TabIdentifier
                       select o;
          
            DesignFormTab oTab =  vTab.FirstOrDefault();
            if (oTab != null)
            {
                txtTabName.Text = oTab.Name;
                txtDesc.Text = oTab.Description;
                ChkSystem.Checked = (bool)oTab.IsSysUse ? true : false;
                chkActive.Checked = (bool)oTab.IsEnabled ? true : false;
                chkVisible.Checked = (bool)oTab.IsVisible ? true : false;
                txtIdentify.Text = oTab.SysIdentity;
                if (ChkSystem.Checked)
                { bntDelete.Enabled = false; }
                else
                { bntDelete.Enabled = true; }
            }
            else
            {

                txtTabName.Text = string.Empty;
                txtDesc.Text = string.Empty;
                ChkSystem.Checked = false;
                chkActive.Checked = true;
                chkVisible.Checked = true;
                txtIdentify.Text = string.Empty;
                
               
                if (lstTabList.SelectedValue == "-1")
                {
                    bntDelete.Enabled =false;
                    //assign a new tab name 
                    string newTabName = "NewTab";
                    string finalTabName = string.Empty ;
                    int index = 1;
                    bool IsNewTabName = false;
                    if (Session[SessionTabList] != null)
                    {
                        do
                        {
                            finalTabName = newTabName + index;
                            List<DesignFormTab> oList = Session[SessionTabList] as List<DesignFormTab>;
                            var vTabList = from o in oList
                                       where o.Name == finalTabName
                                       select o;

                            if (vTabList.Count() == 0)
                            {
                                IsNewTabName = true;
                            }
                            index++;

                        } while (IsNewTabName == false);
                    }
                  
                        this.txtTabName.Text = finalTabName;
                   
                    Guid gNew = Guid.NewGuid();
                    this.txtIdentify.Text = gNew.ToString();
                }
            }
        }
                    
        protected void OnFieldSwitchQueryAndListCheckChanged(object sender, EventArgs e)
        {
            SwitchBetweenQueryStatementAndList();

        }


        protected void OnWithLabelCheckChanged(object sender, EventArgs e)
        {
            this.txtContent.Enabled = chkWithLabel.Checked == false ? false : true;

        }

        protected void OnFieldMandatoryCheckChanged(object sender, EventArgs e)
        {
            EnabledTextBoxManatory();

        }

        protected void OnFieldDDLMandatoryCheckChanged(object sender, EventArgs e)
        {

            EnabledDDLManatory();
        }

        #endregion

        #region Page Ini

        protected override void OnPreRender(EventArgs e)
        {
            txtFormName.Text = eFormName;
           ActiveTab(ActiveType);
            base.OnPreRender(e);
        }
        protected void IniForm()
        {
            bntDelete.Enabled = false;
            ActiveType = 0;
            //figout out tab should show or not
            if (!IsShowTab(eFormID))
            {
              //  TabContainer1.ActiveTabIndex = 1;
               // this.TabContainer1.Tabs[0].Visible = false;

            }
            else
            {
              //  LoadTabs();
            }
            LoadTabs(true);
            //Load field tab and config
            EnabledTextBoxManatory();
            EnabledDDLManatory();
            SwitchBetweenQueryStatementAndList();

            LoadDropDownLists();

            SetAllFields();
            SetSample();
            txtFormName.Text = eFormName;
        }

        protected void SetSample()
        {
            string opSameple = "Select * from users where userID =1"; // Option.GetOptionByKey(OptionDropDownListKey);
           this.QueryWatermark.WatermarkText = opSameple;

        }

        protected bool IsShowTab(int eFormID)
        {
            List<DesignFormTab> oList = DesignFormTab.GetDataBy(eFormID);
            if (oList.Count > 0)
            {
                return true; 
            }
            return false;
        }

        protected void SetClientScript()
        {
            this.accordionFormDesign.Attributes.Add("onmouseout", "hideToolTip()");
         //   imgSystem.Attributes.Add("onmousemove", "showToolTip(event,'" + SysBuildinHelpTips_Message + "', '" + this.ImgtabHelp.ClientID + "',  false);return false");
         //   imgIdentity.Attributes.Add("onmousemove", "showToolTip(event,'" + SysIdentityHelpTips_Message + "', '" + this.ImgtabHelp.ClientID + "',  false);return false");
          //  this.ImgtabHelp.Attributes.Add("onmousemove", "showToolTip(event,'" + TabHeadHelpTips_Message + "', '" + this.ImgtabHelp.ClientID + "',  false);return false");
          //  this.tabfield.Attributes.Add("onmousemove", "showToolTip(event,'" + FieldHeadHelpTips_Message + "', '" + this.ImgtabHelp.ClientID + "',  false);return false");
            this.lstTabList.Attributes.Add("onmouseout", "hideToolTip()");
            this.txtDesc.Attributes.Add("onmouseout", "hideToolTip()");
            string MSG = Action_TabDeleteConfirm_Message; // "Are you sure that you wanto to delete this tab?";
            this.bntDelete.Attributes.Add("onclick", "if ( IsDeleteConfirm('" + MSG +"')==true) {return true;} else { return false;}");
            
            MSG = Action_FieldDeleteConfirm_Message; 
            this.bntFieldDelete.Attributes.Add("onclick", "if ( IsDeleteConfirm('" + MSG + "')==true) {return true;} else { return false;}");
            this.bntSaveAllFields.Attributes.Add("onclick", "  GetAllControlPositionAndLabelText( '" + this.hidControlList.ClientID + "', '" + this.hidLabelList.ClientID + "' );");
            this.bntFieldDelete.Attributes.Add("onclick", "  GetAllControlPositionAndLabelText( '" + this.hidControlList.ClientID + "', '" + this.hidLabelList.ClientID + "' );if ( IsDeleteConfirm('" + MSG + "')==true) {return true;} else { return false;}");
           // this.bntFieldAdd.Attributes.Add("onclick", " GetAllControlPositionAndLabelText( '" + this.hidControlList.ClientID + "', '" + this.hidLabelList.ClientID + "' ); ");
        }

       public  void LoadTabs(bool IsIni)
        {
            lstTabList.Items.Clear();
            //Load tabs
            if (IsIni)
            {

                this.lstTabList.DataTextField = "Name";

                this.lstTabList.DataValueField = "SysIdentity";
                if (_eFormID == 0)
                {

                    //Does not find any exsting tab in db
                    //Figur out currnet tabs
                    if (CurrentTab != null)
                    {
                        List<DesignFormTab> oTabList = new List<Pelesys.Scheduling.DesignFormTab>();
                        int count = 0;

                        foreach (TabPanel otp in CurrentTab.Tabs)
                        {
                            DesignFormTab oTab = new DesignFormTab();
                            Guid gNewidentifier = Guid.NewGuid();
                            oTab.Name = otp.HeaderText;
                            oTab.SysIdentity = gNewidentifier.ToString();
                            otp.ID = gNewidentifier.ToString();
                            oTab.IsVisible = true;
                            oTab.IsEnabled = true;
                            if (count == 0)
                            {

                                oTab.IsSysUse = true;
                            }

                            else
                            {
                                oTab.IsSysUse = false;
                            }
                            oTab.Sequence = count;
                            lstTabList.Items.Add(new ListItem(oTab.Name, oTab.SysIdentity));
                            oTabList.Add(oTab);
                            count++;
                        }

                        Session[SessionTabList] = oTabList;

                    }
                    lstTabList.Items.Add(new ListItem("New...", "-1"));
                }
                else
                {
                    List<DesignFormTab> oFormTabList = DesignFormTab.GetDataBy(eFormID);
                    lstTabList.DataSource = oFormTabList;
                    lstTabList.DataBind();
                    lstTabList.Items.Add(new ListItem("New...", "-1"));

                    if (lstTabList.Items.Count > 0)
                    {
                        lstTabList.SelectedIndex = 0;
                        SetTab(lstTabList.SelectedValue);
                    }

                    Session[SessionTabList] = oFormTabList;
                }
               
            }
            else
            {
                if (Session[SessionTabList] != null)
                {
                   List<DesignFormTab> oList = Session[SessionTabList]  as List<DesignFormTab>;
                   foreach (DesignFormTab oTab in oList)
                   {
                       lstTabList.Items.Add(new ListItem(oTab.Name, oTab.SysIdentity));
                   }
                   lstTabList.Items.Add(new ListItem("New...", "-1"));
                }

            
            }
            LoadFieldTab();


        }

        protected void ActiveTab(int IsFromTab)
        {
            //  DesignFormTab otab = DesignFormTab.Load<DesignFormTab>(ddlCurrentTab.SelectedValue);
            if (Session[SessionTabList] == null)
            {
                return;
            }
            List<DesignFormTab> oList = Session[SessionTabList] as List<DesignFormTab>;

            var vTab = from o in oList
                       where o.SysIdentity == ddlCurrentTab.SelectedValue
                       select o;
            if (vTab.Count() == 0)
            {
                return;
            }

            DesignFormTab otab = vTab.FirstOrDefault();
            if (IsFromTab ==0)
            {
                if (lstTabList.SelectedValue != string.Empty)
                {

                 
                    if (otab != null)
                    {
                        FormDesign.SetActiveIndex(CurrentTab, otab.Name, otab.SysIdentity);
                    }
                }
            }
            else
            {
                if ( ddlCurrentTab.SelectedValue != string.Empty)
                {

                 
                    if (otab != null)
                    {
                        FormDesign.SetActiveIndex(CurrentTab, otab.Name, otab.SysIdentity);
                    }
                }
                
            }
            
        }

        protected void LoadFieldTab()
        {
            this.ddlCurrentTab.Items.Clear();
            //this.ddlCurrentTab.DataTextField = "Name";
            //this.ddlCurrentTab.DataValueField = "eFormTabID";
            //ddlCurrentTab.DataSource = Pelesys.Scheduling.DesignFormTab.GetDataBy(eFormID);
            //ddlCurrentTab.DataBind();
            List<DesignFormTab> oList = Session[SessionTabList] as List<DesignFormTab>;
            foreach (DesignFormTab otab in oList)
            {
                ddlCurrentTab.Items.Add( new ListItem(otab.Name, otab.SysIdentity  ));
            }
            ddlCurrentTab.Items.Add(new ListItem("New...", "-1"));
        }

        protected void LoadFieldDetail()
        {
            ddlFields.Items.Clear();
            if (ddlCurrentTab.Items.Count > 0)
            {
               
                //Load fields according to tab id
                this.ddlFields.DataTextField = "Name";
                this.ddlFields.DataValueField = "eFormFieldID";
                ddlFields.DataSource = DesignFormField.GetDataBy(ddlCurrentTab.SelectedValue, eFormID);
                ddlFields.DataBind();
            }
            else
            {
                //Load fields by form id
                this.ddlFields.DataTextField = "Name";
                this.ddlFields.DataValueField = "eFormFieldID";
                ddlFields.DataSource = DesignFormField.GetDataByeFormID(eFormID);
                ddlFields.DataBind();
            }

            ddlFields.Items.Add(new ListItem("New...", "-1"));



        }

        protected void LoadDropDownLists()
        {
            //Load tabs
            LoadFieldTab();

            LoadFieldDetail();

          
            //Load date format
            this.ddlCalendarFormat.DataTextField = "Format";
            this.ddlCalendarFormat.DataValueField = "DateFormatID";
          //  ddlCalendarFormat.DataSource = DateFormat.GetDateFormat(CultureID);
         //   ddlCalendarFormat.DataBind();
        }

        protected void SwitchBetweenQueryStatementAndList()
        {
            if (radValueList.Checked)
            {
                this.pnlqueryStatement.Visible = false;
                this.pnlList.Visible = true;
            }
            else
            {
                this.pnlqueryStatement.Visible = true;
                this.pnlList.Visible = false;

            }


        }

        protected void EnabledTextBoxManatory()
        {
            if (chkMandatory.Checked)
            {
                this.txtMSG.Enabled = true;
            }
            else
            {
                this.txtMSG.Text = string.Empty;
                this.txtMSG.Enabled = false;
            }


        }

        protected void EnabledDDLManatory()
        {

            if (chkddlMandatory.Checked)
            {
                this.txtddlMSG.Enabled = true;
            }
            else
            {
                this.txtddlMSG.Text = string.Empty;
                this.txtddlMSG.Enabled = false;
            }
            
        }

        #endregion
        public void CreateImageControlsOnPanel(Panel oPanel)
        {
            //Image 
            Hashtable oImageList = (Hashtable)Session[FormDesign.SessionImageList];
            if (oImageList != null)
            {
                foreach (object sKey in oImageList.Keys)
                {
                    if (oImageList.ContainsKey(sKey))
                    {

                        DesignFormField oItem = (DesignFormField)oImageList[sKey];

                     
                   
                            FormDesign oFrmDesign = new FormDesign();


                            UserControl oUserControl = (UserControl)LoadControl("~/" + FormDesign.ctrFormDesignImageControl);
                            // UserControl oUserControl = (UserControl)oPanel.FindControl(oItem.ColumnName);
                            oUserControl.ID = oItem.Name;
                            if (oUserControl != null)
                            {
                                ucImageControl oImageControl =
                                    (ucImageControl)oUserControl;
                                oImageControl.width = Convert.ToInt32(oItem.Width);
                                oImageControl.Height = Convert.ToInt32(oItem.Height);
                                //   oImageControl.EnlargeImageClientID = EnlargeClientID;
                                if (oItem.IsMandatory == true)
                                {
                                    oImageControl.IsEnlarge = true;
                                }
                                else
                                {
                                    oImageControl.IsEnlarge = false;
                                }
                                // permssion to set up
                                int num;
                                oImageControl.IsAllowFileUpload = true;
                                String cssStyle = string.Empty;
                                bool IsTop = int.TryParse(oItem.ControlTop.ToString(), out num);
                                if (IsTop == true)
                                {
                                    cssStyle = FormDesign.ccsRelative + FormDesign.ccsTop + num.ToString() + FormDesign.ccsPX;
                                    // oDDL.Attributes.Add(AppConstManager.cStyle, AppConstManager.ccsRelative);
                                    // oDDL.Attributes.Add(AppConstManager.cStyle, num.ToString() + AppConstManager.ccsPX);
                                }
                                bool IsLeft = int.TryParse(oItem.ControlLeft.ToString(), out num);
                                if (IsLeft == true)
                                {
                                    cssStyle = cssStyle + FormDesign.ccsLeft + num.ToString() + FormDesign.ccsPX;
                                    //oDDL.Attributes.Add(AppConstManager.cStyle, AppConstManager.ccsLeft + num.ToString() + AppConstManager.ccsPX);
                                }

                                FormDesign oDesign = new FormDesign();

                                if (oItem.WithLabel)
                                {
                                    oDesign.SetControlLabel(oPanel, oItem, eFormID);
                                }
                                LiteralControl oLiteral = new LiteralControl();
                                oLiteral.Text = "<Div id=\"DIV" + oImageControl.ID + "\" Style=\" display:block;visibility:visible;" + cssStyle + "\">";
                                // oLabel.Attributes.Add(AppConstManager.cStyle, cssStyle);
                                oPanel.Controls.Add(oLiteral);

                                oPanel.Controls.Add(oImageControl);
                                LiteralControl oEndLiteral = new LiteralControl();
                                oEndLiteral.Text = "</Div>";
                                oPanel.Controls.Add(oEndLiteral);
                            }
                        

                    }

                }
            }

            Session[FormDesign.SessionImageList] = null;

        }




        public void CreateImageControls(TabContainer oTabContainer)
        {
            //Image 
            Hashtable oImageList = (Hashtable)Session[FormDesign.SessionImageList];
            if (oImageList != null)
            {
                foreach (object sKey in oImageList.Keys)
                {
                    if (oImageList.ContainsKey(sKey))
                    {

                        DesignFormField oItem = (DesignFormField)oImageList[sKey];

                        DesignFormTab oTab = DesignFormTab.Load<DesignFormTab>(oItem.TabID);
                        if (oTab != null)
                        {
                            TabPanel oPanel = (TabPanel)oTabContainer.FindControl(oTab.SysIdentity);
                            FormDesign oFrmDesign = new FormDesign();


                            UserControl oUserControl = (UserControl)LoadControl("~/" + FormDesign.ctrFormDesignImageControl);
                            // UserControl oUserControl = (UserControl)oPanel.FindControl(oItem.ColumnName);
                            oUserControl.ID = oItem.Name;
                            if (oUserControl != null)
                            {
                                ucImageControl oImageControl =
                                    (ucImageControl)oUserControl;
                                oImageControl.width = Convert.ToInt32(oItem.Width);
                                oImageControl.Height = Convert.ToInt32(oItem.Height);
                                //   oImageControl.EnlargeImageClientID = EnlargeClientID;
                                if (oItem.IsMandatory == true)
                                {
                                    oImageControl.IsEnlarge = true;
                                }
                                else
                                {
                                    oImageControl.IsEnlarge = false;
                                }
                                // permssion to set up
                                int num;
                                oImageControl.IsAllowFileUpload = true;
                                String cssStyle = string.Empty;
                                bool IsTop = int.TryParse(oItem.ControlTop.ToString(), out num);
                                if (IsTop == true)
                                {
                                    cssStyle = FormDesign.ccsRelative + FormDesign.ccsTop + num.ToString() + FormDesign.ccsPX;
                                    // oDDL.Attributes.Add(AppConstManager.cStyle, AppConstManager.ccsRelative);
                                    // oDDL.Attributes.Add(AppConstManager.cStyle, num.ToString() + AppConstManager.ccsPX);
                                }
                                bool IsLeft = int.TryParse(oItem.ControlLeft.ToString(), out num);
                                if (IsLeft == true)
                                {
                                    cssStyle = cssStyle + FormDesign.ccsLeft + num.ToString() + FormDesign.ccsPX;
                                    //oDDL.Attributes.Add(AppConstManager.cStyle, AppConstManager.ccsLeft + num.ToString() + AppConstManager.ccsPX);
                                }

                                FormDesign oDesign = new FormDesign();

                                if (oItem.WithLabel)
                                {
                                    oDesign.SetControlLabel(oPanel, oItem, eFormID);
                                }
                                LiteralControl oLiteral = new LiteralControl();
                                oLiteral.Text = "<Div id=\"DIV" + oImageControl.ID + "\" Style=\" display:block;visibility:visible;" + cssStyle + "\">";
                                // oLabel.Attributes.Add(AppConstManager.cStyle, cssStyle);
                                oPanel.Controls.Add(oLiteral);

                                oPanel.Controls.Add(oImageControl);
                                LiteralControl oEndLiteral = new LiteralControl();
                                oEndLiteral.Text = "</Div>";
                                oPanel.Controls.Add(oEndLiteral);
                            }
                        }

                    }
                    
                }
            }

            Session[FormDesign.SessionImageList] = null;

        }


    }
}