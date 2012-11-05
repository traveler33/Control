<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucSelectCourse.ascx.cs"
    Inherits="Pelesys.Scheduling.Web.Control.ucSelectCourse" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<div style="visibility: visible; margin: 4px; padding: 4px; height: 505px; width: 98%;
    background-color: #efefef;">
    <asp:updatepanel id="UpdatePanel2" runat="server">
        <contenttemplate>
          <div style="visibility: visible; margin: 4px; padding-top: 4px; height: 500px; width: 98%; position: absolute;  left:2px; overflow: hidden; " class="detailEdit"  >
           <table border="0" cellpadding="2" cellspacing="2" width="100%">
            <tr>
                <td>
                    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="458px"
                        Width="100%" CssClass="gray">
                        <asp:TabPanel HeaderText="Online Course" Visible="true" runat="server" ID="dbstructure">
                            <ContentTemplate>
                                <div class="detailEdit" style="visibility: visible; margin: 4px; padding-top: 6px;
                                    width: 98%;">
                                          <table border="0" cellpadding="6" cellspacing="6" width="98%"  >
                  
                    <tr>
                       
                        <td  colspan="2">
                           <div style=" width:100%; height:380px; background-color:#fff;  overflow: auto; "> 
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
                                      
                                    </th>
                                    <td valign="top">
                                     
                            </tr>
                            <tr>
                                <th  valign="top" align="left"  style=" width: 150px;" >
                                    Course Code:
                                </th>
                                <td   >
                                     <asp:TextBox ID="txtCourseCode" runat="server" Width="200px"></asp:TextBox>
                                </td>
                                   <th valign="top" align="left"  style=" width: 150px;">
                                      
                                    </th>
                                    <td valign="top">
                                       <asp:Button ID="bntSearch" runat="server" Text="Search" SkinID="bntMiddle" />
                                    </td>
                            </tr>

                              
                              

                                </tr>
                                
                               
                                    <tr>
                                             <td colspan="4"  style="  height:8px; ">
                                             </td>
                                    </tr>
                                   <tr>
                                   
                                    <td colspan="4">
                                        <div style="height: 290px; width: 710px; border: 1px lightgray solid; overflow: auto;"   > 
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
                                                                    <dx:GridViewDataColumn FieldName="Name" VisibleIndex="1"  Caption="Name" SortOrder="Ascending"   />
                                                                        <dx:GridViewDataColumn FieldName="CourseCode" VisibleIndex="2"  Caption="Course Code" SortOrder="Ascending"   />
                                                                            <dx:GridViewDataColumn FieldName="CourseVersion" VisibleIndex="3"  Caption="Course Version" SortOrder="Ascending"   />

                                                                   
                                                                     
                                                                    
                                                                      
                                                                
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
                             <div id="Div1" class="SaveCancelPanel" style=" width:720px;">
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
</ContentTemplate> </asp:TabPanel>
<asp:tabpanel headertext="Traning Course" visible="true" runat="server" id="TabPanel1">
    <contenttemplate>
          <div style="height: 550px; width: 750px; overflow: auto;" class="detailEdit">
                    <table border="0" cellpadding="6" cellspacing="6" width="580px"  >
                          <tr>
                             <td>
                                                      <table border="0" cellpadding="4" cellspacing="4" style="height: 340px">
                                                                                <tr>
                                                                                    <th align="left" style="width: 150px;">
                                                                                        Course Name:<span class="required"></span>
                                                                                    </th>
                                                                                    <td>
                                                                                        <pel:SearchTextBox ID="txtLoginName" runat="server" Width="300px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <th align="left">
                                                                                        Course Code:<span class="required"></span>
                                                                                    </th>
                                                                                    <td>
                                                                                        <pel:SearchTextBox ID="SearchTextBox5" runat="server" Width="300px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <th valign="top" align="left">
                                                                                        Course Cost:
                                                                                    </th>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TextBox8" runat="server" Width="300px"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                        </td>
                                                                        <th valign="top" align="left">
                                                                            Cost Per Student:
                                                                        </th>
                                                                        <td>
                                                                            <asp:TextBox ID="TextBox99" runat="server" Width="300px"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th align="left" valign="top">
                                                                            Prerequisite:<asp:Button ID="Button19" runat="server" Text="..." CssClass="ShortButton" />
                                                                        </th>
                                                                        <td>
                                                                            <asp:TextBox ID="TextBox10" runat="server" Width="300px" Height="50px" TextMode="MultiLine" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th valign="top" align="left">
                                                                            Time Span:
                                                                        </th>
                                                                        <th>
                                                                            <asp:TextBox ID="TextBox12" runat="server" Width="140px"> </asp:TextBox>
                                                                            &nbsp; Time Unit:
                                                                            <asp:DropDownList ID="ddlTimeUnit1" runat="server" Width="80px">
                                                                            </asp:DropDownList>
                                                                        </th>
                                                                    </tr>
                                                             
                                                                        <tr>
                                                                            <th valign="top" align="left">
                                                                                Instructor Qualification:
                                                                            </th>
                                                                            <td valign="top">
                                                                                <asp:TextBox ID="TextBox19" runat="server" Width="300px" Height="50px" TextMode="MultiLine" />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th align="left">
                                                                                <asp:Label ID="Label5" runat="server" Text="Description:" />
                                                                            </th>
                                                                            <td class="editFieldControl" colspan="4">
                                                                                <asp:TextBox ID="TextBox22" runat="server" TextMode="MultiLine" Rows="4" onkeydown="CheckLength(this,3000,72)"
                                                                                    onkeyup="CheckLength(this,3000,72)" Width="300px" MaxLength="3000"></asp:TextBox>
                                                                                <%--<pel:ValidateTextBox ID="txtDescription" runat="server" Required="false" TextMode="MultiLine" />--%>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                                 

                         
                        </td>
                    </tr>
                    <tr>
                        <td style = "  height: 50px; ">
                        </td>
                    </tr>  
                   <tr>
                        <td>
                             <div id="Div2" class="SaveCancelPanel" style=" width:720px;">
                                <table border="0" cellpadding="2" cellspacing="2" style="width:99%; height: 100%;">
                                    <tr>
                                        <td style="width: 70%; font-size: 10px; font-weight: normal;">
                                            <asp:Panel ID="Panel11" runat="server">
                                            </asp:Panel>
                                        </td>
                                        <td align="left">
                                            <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                                                <ContentTemplate>
                         
                                                    <asp:Button ID="bntSave1" runat="server" Text="Save" SkinID="bntMiddle" />
                                                    <asp:Button ID="bntCancel1" runat="server" Text="Cancel" SkinID="bntMiddle" />
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
          </contenttemplate>
</asp:tabpanel>
</asp:TabContainer> </td> </tr>
<tr style="height: 10px;">
    <td>
    </td>
</tr>
</table> </div> </ContentTemplate> </asp:UpdatePanel> </div> 