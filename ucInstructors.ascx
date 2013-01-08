<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucInstructors.ascx.cs" Inherits="Pelesys.Scheduling.Web.Control.ucInstructors" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<div style="visibility: visible; margin: 4px; padding: 4px; height: 568px; width: 98%;   background-color:#efefef; ">
  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>


          <div style="visibility: visible; margin: 4px; padding-top: 10px; height: 330px; width: 690px; position: absolute; " class="detailEdit"  >
                <table border="0" cellpadding="6" cellspacing="6" width="650px"  >
                  
                    <tr>
                       
                        <td  colspan="2">
                         
                        <table border="0" cellpadding="4" cellspacing="4" style="width: 650px; height: 99%;">
                         
                             <tr>
                                <th  valign="top" align="left"  style=" width: 220px;" >
                                    <h3>Add Instructors</h3>
                                </th>
                                <td>
                                   
                                </td>
                                   <th valign="top" align="left"  style=" ">
                                         
                                    </th>
                                  
                               </tr>
                          

                              
                                 <tr>
                                  
                                    <td valign="top">
                                      <asp:TextBox ID="txtName" runat="server"  
                                                Height="20px" Width="280px"></asp:TextBox>
                                            <asp:TextBoxWatermarkExtender ID="NameWatermark" runat="server" WatermarkText=" Instructor..."
                                                TargetControlID="txtName" WatermarkCssClass="SearchWaterMark">
                                            </asp:TextBoxWatermarkExtender>
                                        
                                    </td>
                                     <th valign="top" align="left" >
                                        <asp:Button ID="bntSearch" runat="server" Text="Search" SkinID="bntMiddle" />
                                        <asp:Button ID="bntClear" runat="server" Text="Clear" SkinID="bntMiddle"/>
                                    </th>
                                    <td valign="top"   align="left">
                                       
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        <table  width="600px" cellpadding="4" cellspacing="4"  border="0" >
                                            <tr>
                                               <th>
                                               <asp:RadioButton runat="server"  text="Qualified" GroupName="radSearch" checked="true"></asp:RadioButton> 
                                               </th> 
                                                 <th><asp:RadioButton runat="server" text="Not Qualified"  GroupName="radSearch"></asp:RadioButton> </th> 
                                                  <th> <asp:RadioButton runat="server" text="To be expired in 90 days" GroupName="radSearch" ></asp:RadioButton></th> 
                                            </tr>
                                        </table>
                                    </td>
                                   
                                </tr>
                               
                                    <td colspan="4">
                                        <div style="height: 390px; width: 660px; border: 1px lightgray solid; overflow: auto;"   > 
                                            <div class="resultGridView">
                                                     <dx:ASPxGridView ID="gv" ClientInstanceName="grid" runat="server" 
                                                               KeyFieldName="UserID"     Border-BorderColor="LightGray" Border-BorderStyle="Solid"
                                                                Border-BorderWidth=1   Font-Names="Verdana" Font-Size="10px"  ForeColor="#342F2F"  
                                                             AutoGenerateColumns="False"   Theme="Office2003Blue" OnHtmlRowCreated ="AssingLabe_OnHtmlRowCreated"
                                                                    EnableRowsCache="True" Width="99%" DataSourceForceStandardPaging="False" SettingsPager-AlwaysShowPager="True" SettingsPager-Position="Bottom">
                                                                    <Columns>
                                                                   <dx:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0"  Width="30px" >
                                                                        <HeaderTemplate>
                                                                           <asp:CheckBox ID="CheckBox2" runat="server" />
                                                                        </HeaderTemplate>
                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                    </dx:GridViewCommandColumn>
                                                                    <dx:GridViewDataColumn FieldName="Name" VisibleIndex="1"  Caption="Name" SortOrder="Ascending"   />
                                                                       <dx:GridViewDataHyperLinkColumn Caption="Qualification" VisibleIndex="4"   Width="120px" >
                                                                                                <DataItemTemplate   >
                                                                                                  
                                                                                                  <asp:Label runat="server" ID="lblSign" BackColor="Green" Width="20px" Height="20px" ></asp:Label>
                                                                                                </DataItemTemplate>
                                                                                                 <HeaderStyle HorizontalAlign="Center" />
                                                                                                   <CellStyle HorizontalAlign="Center" />
                                                                                            </dx:GridViewDataHyperLinkColumn>
                                                                    </Columns>
                                                                    <Settings ShowGroupPanel="False" />
                                                                    <SettingsBehavior AllowFocusedRow="False" />
                                                                     <Settings GridLines="Vertical" />
                                                                     <Styles>
                                                                        <AlternatingRow Enabled="true" />
                                                                    </Styles>
                                                                      <SettingsPager PageSize="10">
                                                                        <PageSizeItemSettings Visible="true"  ShowAllItem="true" />
                                                                    </SettingsPager>
                                                                    </dx:ASPxGridView>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                        </table>
                 
                        </td>
                    </tr>  
                    <tr>
                        <td>
                             <div id="Div1" class="SaveCancelPanel" style=" width:660px;">
                                <table border="0" cellpadding="2" cellspacing="2" style="width:99%; height: 100%;">
                                    <tr>
                                        <td style="width: 70%; font-size: 10px; font-weight: normal;">
                                            <asp:Panel ID="Panel1" runat="server">
                                            </asp:Panel>
                                        </td>
                                        <td align="left">
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                         
                                                    <asp:Button ID="bntSave" runat="server" Text="Add" SkinID="bntMiddle" />
                                                    <asp:Button ID="bntCancel" runat="server" Text="Cancel" SkinID="bntMiddle" />
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                              
                        
                        </td>
                    
                    </tr>
                </table>
            </div>


             
              
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
   