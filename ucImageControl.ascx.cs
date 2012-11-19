using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Text;

using AjaxControlToolkit;

namespace eForm.Controls
{
    public partial class ucImageControl : System.Web.UI.UserControl
    {
        public string sHeight = string.Empty;
        public string sWidth = string.Empty;
        public string EnlargeImageClientID = string.Empty;
        public string MSgClientID = string.Empty;
        public string UploadIcon = string.Empty;
        public string UploadTooptip = string.Empty;
        public string Msg = string.Empty;
        public string UploadToolTip = string.Empty;
        public Boolean IsAllowFileUpload = false;
        public Boolean IsEnlarge = false;
        public string UploadFilePath = string.Empty;
        public string cssDragClass = "CssDragClass";
        private int _width = 50;
        private int _Height = 50;
        private string _ImagePath = string.Empty;
        public const string ImageUploadIconValue = "~/Images/redx33.gif";
        public const string ImageList= "UploadImageList" ;
        public const string SessionImageList = "SessionUploadImageList";
        private Hashtable oImageList = new Hashtable();


        public string ImagePath
        {

            get
            {
                return _ImagePath;
            }
            set
            {
                _ImagePath = value;
            }

        }

        public int Height
        {

            get
            {
                return _Height;
            }
            set
            {
                _Height = value;
            }

        }

        public int width
        {

            get
            {
                return _width;
            }
            set
            {
                _width = value;
            }

        }

        public string AppUploadFilePath = "AppUpload";

       
        protected override void OnInit(EventArgs e)
        {
            UploadTooptip = "Image";
            UploadIcon = "/Images/redx33.gif";
           
            UploadIcon = UploadIcon.Replace("~/", string.Empty);
               sHeight = Height.ToString();
            sWidth = width.ToString();

          


            if (ImagePath == string.Empty)
            {

                ImagePath = "/images/Photo.jpg";
                //this.ImagePath = this.ImgLoad.ImageUrl;
            }
            else
            {
                ViewState[this.ID] = ImagePath;
                //  this.ImgLoad.ImageUrl   =  this.ImagePath;
            }
            ImagePath = ImagePath.Replace("~", string.Empty);
            if (IsEnlarge)
            {
                // this.ImgLoad.Attributes.Add("onclick", "ShowPanel(true, 'DivImageOnDesign');document.getElementById('" + EnlargeImageClientID + "').src = document.getElementById('" + this.ImgLoad.ClientID + "').src; return false;  ");
                this.UploadToolTip = "Image";

            }

            if (this.HidImagePath.Value != string.Empty)
            {
                ViewState[this.ID] = this.HidImagePath.Value;
                this.ImagePath = this.HidImagePath.Value;
            }

            if (Session[this.HidImagePath.ClientID] != null)
            {
                this.HidImagePath.Value = Session[this.HidImagePath.ClientID].ToString();
                this.ImagePath = this.HidImagePath.Value;
                Session[this.HidImagePath.ClientID] = null;
            
            }


            SetImagePath();
        
            base.OnInit(e);
        }


        public void SetImagePath()
        {
            if (Session[FormDesign.SessionImageList] != null)
            { 
              oImageList = Session[FormDesign.SessionImageList] as Hashtable;
              foreach (object sKey in oImageList.Keys)
              {
                  if (!oImageList.ContainsKey(this.ClientID))
                  {
                      
                      Pelesys.Scheduling.DesignFormField oDesign = oImageList[sKey] as Pelesys.Scheduling.DesignFormField;
                      if ( oDesign.ImagePath != null && oDesign.ImagePath != string.Empty )
                      {
                    //  oImageList.Add(this.ClientID, this.HidImagePath.Value);
                      this.ImagePath = oDesign.ImagePath;
                      }
                  //    Session[ImageList] = oImageList;
                      break;
                  }
              }
            }

            if (Session[ImageList] == null)
            {
                if (this.HidImagePath.Value != string.Empty)
                {
                    if (!oImageList.ContainsKey(this.ClientID))
                    {

                        oImageList.Add(this.ClientID, this.HidImagePath.Value);
                        this.ImagePath = this.HidImagePath.Value;
                        Session[ImageList] = oImageList;
                    }
                }

            }

            else if (Session[ImageList] != null)
            {
                bool IsNotAddImage = false;
                oImageList = Session[ImageList] as Hashtable;
                foreach (var key in oImageList.Keys)
                {
                    if (key.ToString() == this.ClientID)
                    {
                        this.ImagePath = oImageList[key].ToString();
                        IsNotAddImage = true;
                        Session[ImageList] = oImageList;
                        break;
                    }

                }

                if (!IsNotAddImage)
                {
                    if (!oImageList.ContainsKey(this.ClientID) )
                    {
                        if (this.HidImagePath.Value != string.Empty)
                        {
                            oImageList.Add(this.ClientID,  this.HidImagePath.Value);
                            this.ImagePath =  this.HidImagePath.Value;
                            Session[ImageList] = oImageList;
                        }
                        

                    }

                }

                //ViewState[this.ID] = Session[this.HidImagePath.ClientID].ToString();
                //this.ImagePath = Session[this.HidImagePath.ClientID].ToString();
                //this.HidImagePath.Value = Session[this.HidImagePath.ClientID].ToString();
                //Session[this.HidImagePath.ClientID] = null;
                //ImagePath = "/" + this.HidImagePath.Value;
            }
            else
            {
                if (ViewState[this.ID] != null)
                {
                    ImagePath = ViewState[this.ID].ToString();
                }

            }

        
        
        }

         protected void CreateJSFunction()
        {
            string script = "function EformOpenImageEnLarge(CliendID) {$('#EnlargeImage').trigger('click');}";
          //  ScriptManager.RegisterStartupScript(Page, typeof(Page), "script2", script, true);

            Guid oNewScript = new Guid();

            //string script = "function updateClick() { return confirm('Are you sure you want to select?'); }";  
            ScriptManager.RegisterStartupScript(Page, typeof(Page), oNewScript.ToString(), script.ToString(), true);

            StringBuilder script1 = new StringBuilder();
            script1.Append("  $(document).ready(function () {");
            script1.Append(" $('#" + this.ClientID+" ').fancybox({");

         
            script1.Append("  'overlayShow': true,");
            script1.Append(" 'transitionIn': 'elastic',");
            script1.Append(" 'transitionOut': 'elastic',");

            script1.Append(" 'padding': 0,");
            script1.Append(" 'zoomOpacity': true,");
            script1.Append("  'zoomSpeedIn': 500,");
            script1.Append("  'zoomSpeedOut': 500,");
              script1.Append("  });");
              script1.Append("  });");
            Guid oNewScript1 = new Guid();

            //string script = "function updateClick() { return confirm('Are you sure you want to select?'); }";  
          //  ScriptManager.RegisterStartupScript(Page, typeof(Page), oNewScript1.ToString(), script1.ToString(), true);

         

               StringBuilder script2 = new StringBuilder();
            script2.Append("  $(document).ready(function () {");
            script2.Append(" $('#UploadFile" + this.ClientID+" ').fancybox({");

         
            script2.Append("  'overlayShow': true,");
            script2.Append(" 'transitionIn': 'elastic',");
            script2.Append(" 'transitionOut': 'elastic',");
              script2.Append("   'width': 600, ");
              script2.Append("  'height': 142, ");

            script2.Append(" 'padding': 6,");
            script2.Append(" 'zoomOpacity': true,");
            script2.Append("  'zoomSpeedIn': 500,");
            script2.Append("  'zoomSpeedOut': 500,");
                script2.Append("'type': 'iframe' ");
              script2.Append("  });");
              script2.Append("  });");
            Guid oNewScript2 = new Guid();

            //string script = "function updateClick() { return confirm('Are you sure you want to select?'); }";  
            ScriptManager.RegisterStartupScript(Page, typeof(Page), oNewScript2.ToString(), script2.ToString(), true);

        }


        protected void Page_Load(object sender, EventArgs e)
        {

            //if (!IsPostBack)
            {
                CreateJSFunction();
            }
        }

    }
}