<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucSelectExistingResources.ascx.cs" Inherits="Pelesys.Scheduling.Web.Control.SelectExistingResources" %>
<div style="visibility: visible; margin: 4px; padding: 4px; height: 505px; width: 98%;
    background-color: #efefef;">
  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
          <div style="visibility: visible; margin: 4px; padding-top: 4px; height: 500px; width: 98%; position: absolute;  left:2px; overflow: hidden; " class="detailEdit"  >
                <table border="0" cellpadding="6" cellspacing="6" width="98%"  >
                  
                    <tr>
                       
                        <td  colspan="2">
                           <div style=" width:100%; height:440px; border: 1px solid lightgray; background-color:#fff;  overflow: auto; "> 
                           <div style="visibility: visible; margin: 4px;"  class="detailEdit">
                        <table border="0" cellpadding="4" cellspacing="4" style="width: 100%; height: 99%;">
                         
                                 <tr>
                                <th  valign="top" align="left"  style=" width: 150px;" >
                                     Name:
                                </th>
                                <td   >
                                     <asp:TextBox ID="TextBox9" runat="server" Width="200px"></asp:TextBox>
                                </td>
                                   <th valign="top" align="left"  style=" width: 150px;">
                                      serial number:
                                    </th>
                                    <td valign="top">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>

                                    </td>
                            </tr>
                          

                              
                                 <tr>
                                    <th valign="top" align="left" >
                                        Location:
                                    </th>
                                    <td valign="top">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                                        
                                    </td>
                                     <th valign="top" align="left" >
                                     
                                    </th>
                                    <td valign="top">
                                     

                                    </td>
                                </tr>
                                
                                  
                                    <tr>
                                             <td colspan="4"  style="  height:8px; ">
                                             </td>
                                    </tr>
                                   <tr>
                                   
                                    <td colspan="4">
                                        <div style="height: 330px; width: 780px; border: 1px lightgray solid; overflow: auto;"   > 
                                            <div class="resultGridView">
                                                  <dx:ASPxGridView ID="gv" ClientInstanceName="grid" runat="server" 
                                                               KeyFieldName="UserID"     Border-BorderColor="LightGray" Border-BorderStyle="Solid"
                                                                Border-BorderWidth=1   Font-Names="Verdana" Font-Size="10px"  ForeColor="#342F2F"  
                                                             AutoGenerateColumns="False"   Theme="Office2003Blue" 
                                                                    EnableRowsCache="True" Width="100%" DataSourceForceStandardPaging="False" SettingsPager-AlwaysShowPager="True" SettingsPager-Position="Bottom">
                                                                    <Columns>
                                                                   <dx:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0"  Width="30px" >
                                                                        <HeaderTemplate>
                                                                           <asp:CheckBox ID="CheckBox2" runat="server" />
                                                                        </HeaderTemplate>
                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                    </dx:GridViewCommandColumn>
                                                                    <dx:GridViewDataColumn FieldName="FirstName" VisibleIndex="1"  Caption="Name" SortOrder="Ascending"   />

                                                                     <dx:GridViewDataHyperLinkColumn  Caption="serial number" VisibleIndex="2">
                                                                        <DataItemTemplate>
                                                                            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text=" 3343wswww">
                                                                            </dx:ASPxLabel>
                                                                        </DataItemTemplate>
                                                                     </dx:GridViewDataHyperLinkColumn>
                                                                     
                                                                   

                                                                      

                                                                     <dx:GridViewDataImageColumn Caption="Detail" VisibleIndex="5">
                                                                       <DataItemTemplate>
                                                                           <dx:ASPxImage ID="ASPxImage1" runat="server"   ImageUrl="~/Images/sml_script.Png">
                                                                           </dx:ASPxImage>
                                                                       </DataItemTemplate>
                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                     </dx:GridViewDataImageColumn>
                                                                      
                                                                    <dx:GridViewDataColumn FieldName="FirstName" VisibleIndex="1"  Caption="Location" SortOrder="Ascending"   />

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
                            </div>
                           </div   
                        </td>
                    </tr>  
                   <tr>
                        <td>
                             <div id="Div1" class="SaveCancelPanel" style=" width:810px;">
                                <table border="0" cellpadding="2" cellspacing="2" style="width:99%; height: 100%;">
                                    <tr>
                                        <td style="width: 70%; font-size: 10px; font-weight: normal;">
                                            <asp:Panel ID="Panel1" runat="server">
                                            </asp:Panel>
                                        </td>
                                        <td align="left">
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                         
                                                    <asp:Button ID="bntSave" runat="server" Text="OK" SkinID="bntMiddle" />
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
</div>
