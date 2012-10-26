<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucEFormDesign.ascx.cs"
    Inherits="eForm.Controls.ucEFormDesign" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Reference Control="~/Control/ucImageControl.ascx" %>
<div id="e-FormTabs" class="EFormDesignPanel">
    <script type="text/javascript">
	    $(document).ready(function () {
	       
	        $("#statusBox").fancybox({
	            'overlayShow': true,
	            'transitionIn': 'elastic',
	            'transitionOut': 'elastic',
                'padding': 6,
                'zoomOpacity': true,
                'zoomSpeedIn': 500,
                'zoomSpeedOut': 500,

	        });

	     
	    });
    function callBoxFancy(cclass, msg) 
    {    $('#status').text(msg);
         var currentClass =  $('#status').attr("class");
         if ( currentClass != cclass); 
         {
             $('#status').removeClass(currentClass);
         }
         $('#status').addClass(cclass);
     
        $('#statusBox').trigger('click');
        window.setTimeout('parent.$.fancybox.close();', 2500);
       
       
    }


    </script>
    <table width="100%" style="height: 100%; z-index:999;" border="0" cellpadding="1" cellspacing="1" class="detailEdit" >
        <tr valign="top">
            <td colspan="3">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" CssClass="gray"
                            Visible="true" Width="333px" Height="550px"   >
                            <asp:TabPanel ID="Tabs" HeaderText="Tab" runat="server" ToolTip="Add new tabs, remove tabs and manage tabs">
                               
                                <ContentTemplate>
                                    <asp:Panel ID="phTabs" runat="server">
                                        <table cellpadding="3" cellspacing="3" style="width: 100%; height: 100%;">
                                           <td  align="center">
                                                    <table border="0" cellpadding="4" cellspacing="4" width="280px" >
                                                        <tr>
                                                            <th>
                                                                    <asp:Label ID="lblFormName" runat="server" SkinID="label" Text="Form Name:" ToolTip="Form name"></asp:Label>
                                                                    <span style="color: Red">*</span>

                                                            </th>
                                                            <td>
                                                                     <asp:TextBox ID="txtFormName" runat="server" MaxLength="20" SkinID="eFormTextBox"  Width="180px"></asp:TextBox>
                                                                    
                                                            </td>
                                                        </tr>
                                                    
                                                    </table>
                                                
                                             </td>
                                            <tr>
                                                <th>
                                                    <asp:Label ID="lblTabList" runat="server" SkinID="label" Text="Tabs" ToolTip="List all tabs for this form"></asp:Label>
                                                </th>
                                            </tr>
                                            <tr>
                                          

                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                        <ContentTemplate>
                                                           <asp:ListBox ID="lstTabList" runat="server" SkinID="eFormList" Width="280px" Height="210px"
                                                        AutoPostBack="True" OnSelectedIndexChanged="TabList_OnSelectedIndexChanged">
                                                    </asp:ListBox>
                                                        
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>

                                                 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" align="center">
                                                    <table cellpadding="3" cellspacing="3" border="0" style="border: 1  solid  #F0F0F0;
                                                        height: 100px; width: 300px;">
                                                        <tr>
                                                            <th style="width: 100px" align="left">
                                                                <asp:Label ID="lblTabName" runat="server" SkinID="label" Text="Tab Name " ToolTip="Tab name"></asp:Label>
                                                                <span style="color: Red">*</span>
                                                            </th>
                                                            <td align="left">
                                                                <asp:TextBox ID="txtTabName" runat="server" MaxLength="20" SkinID="eFormTextBox" ></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th align="left">
                                                                <asp:Label ID="lblIdentify" runat="server" SkinID="label" Text="Tab Identifier" ToolTip="Tab System Identity. System Use only"></asp:Label>
                                                            </th>
                                                            <td align="left">
                                                                <asp:TextBox ID="txtIdentify" runat="server" MaxLength="100" Enabled="False" SkinID="eFormTextBox">
                                                                </asp:TextBox>
                                                               
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th colspan="2" valign="top" align="left">
                                                                <asp:Label ID="lblDesc" runat="server" SkinID="label" Text="Description"></asp:Label>
                                                            </th>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" SkinID="TextAreaOnDesign"
                                                                    Height="80px" Width="280px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th align="left">
                                                                <asp:Label ID="lblActive" runat="server" SkinID="label" Text="Enabled" ToolTip="You can eanble or disable it"></asp:Label>
                                                            </th>
                                                            <td>
                                                                <asp:CheckBox ID="chkActive" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th align="left">
                                                                <asp:Label ID="lblVisible" runat="server" SkinID="label" Text="Visible" ToolTip="You can hide it or show it"></asp:Label>
                                                            </th>
                                                            <td>
                                                                <asp:CheckBox ID="chkVisible" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th align="left">
                                                                <asp:Label ID="lblMembers" runat="server" SkinID="label" Text="System Tab" ToolTip="It can not be deleted. System use only"></asp:Label>
                                                            </th>
                                                            <td  style="  font-weight: normal; font-size:11px; " >
                                                                <asp:CheckBox ID="ChkSystem" runat="server" Enabled="False" />
                                                                 
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" valign="bottom">
                                                    <asp:Button ID="bntAdd" runat="server" Text="Add Tab"    SkinID="bntMiddle" OnClick="TabAdd"
                                                        ToolTip="Add a new tab" />&nbsp;
                                                    <asp:Button ID="bntFDSave" runat="server" Text="Save Tab" SkinID="bntMiddle" OnClick="TabSave"
                                                        ToolTip="Save the current tab" />&nbsp;
                                                    <asp:Button ID="bntDelete" runat="server" Text="Remove Tab"  SkinID="bntMiddle"
                                                        OnClick="TabRemove" ToolTip="Remoe the current tab" />&nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                        <asp:HiddenField ID="hidTabID" runat="server" />
                                        <asp:HiddenField ID="hidFieldID" runat="server" />
                                        <asp:HiddenField ID="hidControlType" runat="server" />
                                        <asp:HiddenField ID="hidControlTextType" runat="server" />
                                    </asp:Panel>
                                </ContentTemplate>
                            </asp:TabPanel>
                            <asp:TabPanel HeaderText="Field" Visible="true" runat="server" ID="Fields" ToolTip="Add a new field, remove a field and manage a field">
                               
                                <ContentTemplate>
                                    <asp:Panel ID="phFields" runat="server">
                                        <table cellpadding="4" cellspacing="4" width="100%">
                                            <tr>
                                                <th>
                                                    <asp:Label ID="lblCurrentTab" runat="server" Text="Tab" SkinID="eFormlabel" ToolTip="Current Tab"></asp:Label>
                                                </th>
                                                <td>
                                                    <asp:DropDownList ID="ddlCurrentTab" runat="server" SkinID="eFormDropDownList" OnSelectedIndexChanged="CurrentTab_OnSelectedIndexChanged"
                                                        AutoPostBack="true"   Width="200px"  >
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <asp:Label ID="lblFields" runat="server" SkinID="label" Text="Field" ToolTip="Current field"></asp:Label>
                                                </th>
                                                <td>
                                                    <asp:DropDownList ID="ddlFields" runat="server"  SkinID="eFormDropDownList"  Width="200px"
                                                        AutoPostBack="true" OnSelectedIndexChanged="Fields_OnSelectedIndexChanged">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <th>
                                                <asp:Label ID="lblTextBoxName" runat="server" SkinID="label" Text="Name" ToolTip="Field Name"></asp:Label>
                                            </th>
                                            <td>
                                                <asp:TextBox ID="txtTextBoxName" runat="server" MaxLength="100" SkinID="eFormMidTextBox"></asp:TextBox>
                                            </td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <asp:Label ID="lblLabelName" runat="server" SkinID="label" Text="Label" ToolTip="Label Text"></asp:Label>
                                                </th>
                                                <td>
                                                    <asp:TextBox ID="txtLabelName" runat="server" MaxLength="100" SkinID="eFormMidTextBox"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    <asp:Label ID="lblSkin" runat="server" SkinID="label" Text="Skin ID" ToolTip="Choose a existing skin id"></asp:Label>
                                                </th>
                                                <td>
                                                    <asp:TextBox ID="txtSkin" runat="server" MaxLength="100" SkinID="eFormMidTextBox"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th  align="center"   style=" font-weight:normal; font-size: 11px; ">
                                                  
                                                </th>
                                                <th>
                                                  <asp:CheckBox ID="chkFieldEnabled" runat="server" Text="Enabled" TextAlign="Left" />
                                                    &nbsp;&nbsp;
                                                    <asp:CheckBox ID="chkFieldVisible" runat="server" Text="Visible" TextAlign="Left" />
                                                
                                                </th>
                                            </tr>
                                        </table>
                                        <table cellpadding="2" cellspacing="2" border="0" style="width: 320px; height: 200px;">
                                            <tr>
                                                <td colspan="2" valign="top" align="center">
                                                    <div style="overflow: auto; height: 335px; ">
                                                        <asp:Accordion ID="accordionFormDesign" runat="server" HeaderCssClass="cssFormDesignAccordionHead"
                                                            HeaderSelectedCssClass="cssFormDesignSelectedHead" ContentCssClass="cssFormDesignAccordionContent"
                                                            Width="240px" BorderColor="#F0F0F0" BorderStyle="Solid" BorderWidth="1px" Height="240px"
                                                            FadeTransitions="false" TransitionDuration="250" FramesPerSecond="40" RequireOpenedPane="false"
                                                            SuppressHeaderPostbacks="true">
                                                            <Panes>
                                                                <asp:AccordionPane ID="TextBox" HeaderCssClass="cssFormDesignAccordionHead" HeaderSelectedCssClass="cssFormDesignSelectedHead"
                                                                    ContentCssClass="cssFormDesignAccordionContent" runat="server" ToolTip="Text Box">
                                                                    <Header>
                                                                        <asp:Label ID="lblFormTextBox" runat="server" SkinID="label" Text="Text Box"></asp:Label>
                                                                    </Header>
                                                                    <Content>
                                                                        <table cellpadding="1" cellspacing="1" border="0" style="width: 100%; height: 100%">
                                                                            <tr>
                                                                                <th>
                                                                                    <asp:Label ID="lblSize" runat="server" SkinID="label" Text="Size"></asp:Label>
                                                                                </th>
                                                                                <td align="left">
                                                                                    <asp:TextBox ID="txtSize" runat="server" MaxLength="100" SkinID="eFormTextBox"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th colspan="2">
                                                                                    <asp:Label ID="lbltxtHeight" runat="server" SkinID="label" Text="Height(px)"></asp:Label>
                                                                                    <asp:TextBox ID="txtboxHeight" runat="server" MaxLength="100" SkinID="eFormTextBoxShort"></asp:TextBox>
                                                                                    <asp:Label ID="lbltxtboxWidth" runat="server" SkinID="label" Text="Width(px)"></asp:Label>
                                                                                    <asp:TextBox ID="txtboxWidth" runat="server" MaxLength="100" SkinID="eFormTextBoxShort"></asp:TextBox>
                                                                                <th/>
                                                                            </tr>
                                                                            <tr>
                                                                                <th align="left" colspan="2">
                                                                                    <asp:RadioButton ID="radText" runat="server" GroupName="FromDesign" Checked="true" />
                                                                                    <asp:Label ID="lblText" runat="server" SkinID="label" Text="Text Box"></asp:Label>
                                                                                    <asp:RadioButton ID="radTextArea" runat="server" GroupName="FromDesign" />
                                                                                    <asp:Label ID="lblTextArea" runat="server" SkinID="label" Text="Text Area"></asp:Label>
                                                                                    <asp:RadioButton ID="radMoney" runat="server" GroupName="FromDesign" />
                                                                                    <asp:Label ID="lblMoney" runat="server" SkinID="label" Text="Money"> </asp:Label>
                                                                                </th>
                                                                            </tr>
                                                                            <tr>
                                                                                <th colspan="2">
                                                                                    <asp:Label ID="lblReadOnly" runat="server" SkinID="label" Text="Read Only"></asp:Label>
                                                                                    <asp:CheckBox ID="ChkReadOnly" runat="server" />
                                                                                    <asp:Label ID="lblMandatory" runat="server" SkinID="label" Text="Manadatory"></asp:Label>
                                                                                    <asp:CheckBox ID="chkMandatory" runat="server" AutoPostBack="true" OnCheckedChanged="OnFieldMandatoryCheckChanged" />
                                                                                </th>
                                                                            </tr>
                                                                            <tr>
                                                                                <th valign="top">
                                                                                    <asp:Label ID="lblMSG" runat="server" SkinID="label" Text="Message"></asp:Label>
                                                                                </th>
                                                                                <td>
                                                                                    <asp:TextBox ID="txtMSG" runat="server" TextMode="MultiLine" CssClass="TextAreaBoxOnDropDownList"
                                                                                        SkinID="TextBox" Height="20px" Width="170px"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </Content>
                                                                </asp:AccordionPane>
                                                                <asp:AccordionPane ID="DropDownList" HeaderCssClass="cssFormDesignAccordionHead"
                                                                    HeaderSelectedCssClass="cssFormDesignSelectedHead" ContentCssClass="cssFormDesignAccordionContent"
                                                                    runat="server" ToolTip="Drop Down List">
                                                                    <Header>
                                                                        <asp:Label ID="lblFormDropDownList" runat="server" SkinID="label" Text="Drop Down List"></asp:Label>
                                                                    </Header>
                                                                    <Content>
                                                                        <table cellpadding="0" cellspacing="0" border="0" style="height: 120px">
                                                                            <tr>
                                                                                <th   colspan="2">
                                                                                    <asp:RadioButton ID="radValueList" runat="server" GroupName="DropDownList" Checked="true"
                                                                                        AutoPostBack='true' OnCheckedChanged="OnFieldSwitchQueryAndListCheckChanged" />
                                                                                    <asp:Label ID="lblValueList" runat="server" SkinID="label" Text="List"></asp:Label>
                                                                                    <asp:RadioButton ID="radSQLStatement" runat="server" GroupName="DropDownList" AutoPostBack='true'
                                                                                        OnCheckedChanged="OnFieldSwitchQueryAndListCheckChanged" />
                                                                                    <asp:Label ID="lblQuery" runat="server" SkinID="label" Text="Query statement"></asp:Label>
                                                                                </th>
                                                                            </tr>
                                                                            <tr style="height: 70px">
                                                                                <th colspan="2" valign="top">
                                                                                    <asp:Panel ID="pnlqueryStatement" runat="server">
                                                                                        <table cellpadding="0" cellspacing="0" border="0">
                                                                                            <tr>
                                                                                                <th>
                                                                                                    <asp:Label ID="lblQueryStatement" runat="server" SkinID="label" Text="Query Statement"></asp:Label>
                                                                                                </th>
                                                                                                <td>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="2">
                                                                                                    <asp:TextBox ID="txtQuery" runat="server" TextMode="MultiLine" CssClass="TextAreaBoxOnDropDownList"
                                                                                                        Height="80px" Width="220px"></asp:TextBox>
                                                                                                    <asp:TextBoxWatermarkExtender ID="QueryWatermark" runat="server" WatermarkText="Select * from User where userid =1"
                                                                                                        TargetControlID="txtQuery" WatermarkCssClass="WaterMark">
                                                                                                    </asp:TextBoxWatermarkExtender>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                    <asp:Panel ID="pnlList" runat="server" Visible="false">
                                                                                        <table cellpadding="0" cellspacing="0" border="0">
                                                                                            <tr>
                                                                                                <th colspan="2">
                                                                                                    <asp:Label ID="lblValueLists" runat="server" SkinID="label" Text="List"></asp:Label>
                                                                                                </th>
                                                                                                <td colspan="2">
                                                                                                    &nbsp;&nbsp;<asp:DropDownList ID="ddlValueList" runat="server" SkinID="eFormEditModeDropDownList">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                </th>
                                                                            </tr>
                                                                        </table>
                                                                    </Content>
                                                                </asp:AccordionPane>
                                                                <asp:AccordionPane ID="CheckBox" HeaderCssClass="cssFormDesignAccordionHead" HeaderSelectedCssClass="cssFormDesignSelectedHead"
                                                                    ContentCssClass="cssFormDesignAccordionContent" runat="server" ToolTip="Check box">
                                                                    <Header>
                                                                        <asp:Label ID="lblFormCheckBox" runat="server" SkinID="label" Text="Check Box"></asp:Label>
                                                                    </Header>
                                                                    <Content>
                                                                        <table>
                                                                            <tr>
                                                                                <th>
                                                                                    <asp:Label ID="lblDefault" runat="server" SkinID="label" Text="Default"></asp:Label>
                                                                                </th>
                                                                                <td   style=" font-weight:normal; font-size:11px;">
                                                                                    <asp:CheckBox ID="chkChecked" runat="server" Text="Checked"  TextAlign="Left"/>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </Content>
                                                                </asp:AccordionPane>
                                                                <asp:AccordionPane ID="DateCalendar" HeaderCssClass="cssFormDesignAccordionHead"
                                                                    HeaderSelectedCssClass=".cssFormDesignSelectedHead" ContentCssClass="cssFormDesignAccordionContent"
                                                                    runat="server" ToolTip="Date">
                                                                    <Header>
                                                                        <asp:Label ID="lblFormDate" runat="server" SkinID="label" Text="Date"></asp:Label>
                                                                    </Header>
                                                                    <Content>
                                                                        <table>
                                                                            <tr>
                                                                                <th>
                                                                                    <asp:Label ID="lblddlMandatory" runat="server" SkinID="label" Text="Mandatory"></asp:Label>
                                                                                </th>
                                                                                <td>
                                                                                    <asp:CheckBox ID="chkddlMandatory" runat="server" AutoPostBack="true" OnCheckedChanged="OnFieldDDLMandatoryCheckChanged" />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th>
                                                                                    <asp:Label ID="lblddlMSG" runat="server" SkinID="label" Text="Message"></asp:Label>
                                                                                </th>
                                                                                <th>
                                                                                    <asp:TextBox ID="txtddlMSG" runat="server" MaxLength="100" SkinID="TextBox"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="right">
                                                                                    <asp:CheckBox ID="chkWithCalendar" runat="server" Checked="true" />
                                                                                </td>
                                                                                <th>
                                                                                    <asp:Label ID="lblWithCalendar" runat="server" SkinID="label" Text="With Calendar"></asp:Label>
                                                                                    <asp:Label ID="lblCalendar" runat="server" SkinID="label"></asp:Label>
                                                                                </th>
                                                                            </tr>
                                                                            <tr>
                                                                                <th>
                                                                                    <asp:Label ID="lblDateFormat" runat="server" SkinID="label" Text="Format"></asp:Label>
                                                                                </th>
                                                                                <td>
                                                                                    <asp:DropDownList ID="ddlCalendarFormat" runat="server" SkinID="EditModeDropDownList">
                                                                                    </asp:DropDownList>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th colspan="2">
                                                                                    <asp:Label ID="Label1" runat="server" SkinID="label" Text="Height(px)"></asp:Label>
                                                                                    <asp:TextBox ID="txtDateHeight" runat="server" MaxLength="100" SkinID="eFormTextBoxShort"></asp:TextBox>
                                                                                    <asp:Label ID="Label2" runat="server" SkinID="label" Text="Width(px)"></asp:Label>
                                                                                    <asp:TextBox ID="txtDateWidth" runat="server" MaxLength="100" SkinID="eFormTextBoxShort"></asp:TextBox>
                                                                                </th>
                                                                            </tr>
                                                                        </table>
                                                                    </Content>
                                                                </asp:AccordionPane>
                                                                <asp:AccordionPane ID="Image" HeaderCssClass="cssFormDesignAccordionHead" HeaderSelectedCssClass=".cssFormDesignSelectedHead"
                                                                    ContentCssClass="cssFormDesignAccordionContent" runat="server" ToolTip="Image">
                                                                    <Header>
                                                                        <asp:Label ID="lblImage" runat="server" SkinID="label" Text="Image"></asp:Label>
                                                                    </Header>
                                                                    <Content>
                                                                        <table>
                                                                            <tr>
                                                                                <th>
                                                                                    <asp:Label ID="lblHeight" runat="server" SkinID="label" Text="Width"></asp:Label>
                                                                                </th>
                                                                                <td>
                                                                                    <asp:TextBox ID="txtHeight" runat="server" MaxLength="50" SkinID="eFormTextBoxShort"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th>
                                                                                    <asp:Label ID="lblWidth" runat="server" SkinID="label" Text="Height"></asp:Label>
                                                                                </th>
                                                                                <td>
                                                                                    <asp:TextBox ID="txtWidth" runat="server" MaxLength="50" SkinID="eFormTextBoxShort"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th>
                                                                                    <asp:Label ID="lblEnlarg" runat="server" SkinID="label" Text="Enlarge"></asp:Label>
                                                                                </th>
                                                                                <td>
                                                                                    <asp:CheckBox ID="chkEnlarg" runat="server" Checked="true" />
                                                                                </td>
                                                                            </tr>
                                                                             <tr>
                                                                                <th>
                                                                                    <asp:Label ID="lblImageWithLabel" runat="server" SkinID="label" Text="With Label"></asp:Label>
                                                                                </th>
                                                                                <th>
                                                                                    <asp:CheckBox ID="chkImageWithLabel" runat="server"  />
                                                                                </th>
                                                                            </tr>
                                                                        </table>
                                                                    </Content>
                                                                </asp:AccordionPane>
                                                                <asp:AccordionPane ID="Hyperlink" HeaderCssClass="cssFormDesignAccordionHead" HeaderSelectedCssClass=".cssFormDesignSelectedHead"
                                                                    ContentCssClass="cssFormDesignAccordionContent" runat="server" Height="120px"
                                                                    ToolTip="Hyper link">
                                                                    <Header>
                                                                        <asp:Label ID="lblLinkHead" runat="server" SkinID="label" Text="HyperLink"></asp:Label>
                                                                    </Header>
                                                                    <Content>
                                                                        <table cellpadding="1" cellspacing="1" style="width: 100%; height: 100%">
                                                                            <tr>
                                                                                <th>
                                                                                    <asp:Label ID="lblLinkText" runat="server" SkinID="label" Text="Text"></asp:Label>
                                                                                </th>
                                                                                <td>
                                                                                    <asp:TextBox ID="txtText" runat="server" MaxLength="100" SkinID="TextBox"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <th>
                                                                                    <asp:Label ID="lblLink" runat="server" SkinID="label" Text="URL"></asp:Label>
                                                                                </th>
                                                                                <th>
                                                                                    <asp:TextBox ID="txtLink" runat="server" MaxLength="200" CssClass="WaterMark" Width="180px">  </asp:TextBox>
                                                                                    <asp:TextBoxWatermarkExtender ID="txtWaterMark" runat="server" WatermarkText="http://"
                                                                                        TargetControlID="txtLink" WatermarkCssClass="WaterMark">
                                                                                    </asp:TextBoxWatermarkExtender>
                                                                                </th>
                                                                            </tr>
                                                                            <tr>
                                                                                <th>
                                                                                    <asp:CheckBox ID="chkOpenWindow" runat="server" Checked="true" />
                                                                                </th>
                                                                                <th>
                                                                                    <asp:Label ID="lblOpenWindow" runat="server" SkinID="label" Text="Open a New Window"></asp:Label>
                                                                                </th>
                                                                            </tr>
                                                                            <tr>
                                                                                <th>
                                                                                    <asp:CheckBox ID="chkWithLabel" runat="server" Checked="true" AutoPostBack="true"
                                                                                        OnCheckedChanged="OnWithLabelCheckChanged" />
                                                                                </th>
                                                                                <th>
                                                                                    <asp:Label ID="lblWithLabel" runat="server" SkinID="label" Text="Not With a Label"></asp:Label>
                                                                                </th>
                                                                            </tr>
                                                                            <tr>
                                                                                <th>
                                                                                    <asp:Label ID="lblContent" runat="server" SkinID="label" Text="Content"></asp:Label>
                                                                                </th>
                                                                                <th>
                                                                                    <asp:TextBox ID="txtContent" runat="server" MaxLength="200" SkinID="TextBox"></asp:TextBox>
                                                                                </th>
                                                                            </tr>
                                                                        </table>
                                                                    </Content>
                                                                </asp:AccordionPane>
                                                            </Panes>
                                                        </asp:Accordion>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr align="center" valign="bottom">
                                                <td>
                                                    <asp:Button ID="bntFieldAdd" runat="server" Text="Add" OnClick="FieldAdd"   SkinID="bntMiddle"/>&nbsp;
                                                    <asp:Button ID="bntSaveAllFields" runat="server" Text="Save" SkinID="bntMiddle"
                                                        OnClick="FieldSave" />&nbsp;
                                                    <asp:Button ID="bntFieldDelete" runat="server" Text="Remove" SkinID="bntMiddle"
                                                        OnClick="FieldRemove" />&nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </ContentTemplate>
                            </asp:TabPanel>
                        </asp:TabContainer>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</div>
<a id="statusBox" href="#status" title="" style="display: none;">Inline</a>
<asp:HiddenField ID="hidControlList" runat="server" />
<asp:HiddenField ID="hidLabelList" runat="server" />
<div style="display: none;">
    <div id="status"  style="  width:600px; height: 100px;  ">
    </div>
</div>


