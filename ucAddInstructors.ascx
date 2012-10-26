<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucAddInstructors.ascx.cs" Inherits="Pelesys.Scheduling.Web.Controls.ucAddInstructors" %>
<div style="visibility: visible; margin: 4px; padding: 4px; height: 488px; width: 98%;   background-color:#efefef; ">
  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
          <div style="visibility: visible; margin: 4px; padding-top: 10px; height: 330px; width: 790px; position: absolute; " class="detailEdit"  >
                <table border="0" cellpadding="6" cellspacing="6" width="98%"  >
                  
                    <tr>
                       
                        <td  colspan="2">
                           <div style=" width:100%; height:424px; border: 1px solid lightgray; background-color:#fff;  overflow: auto; "> 
                           <div style="visibility: visible; margin: 4px;"  class="detailEdit">
                        <table border="0" cellpadding="4" cellspacing="4" style="width: 100%; height: 99%;">
                         
                             <tr>
                                <th  valign="top" align="left"  style=" width: 150px;" >
                                   Other Curriculums:
                                </th>
                                <td>
                                    <asp:DropDownList ID="DropDownList1"  Width="200px" runat="server">
                                    </asp:DropDownList>
                                </td>
                                   <th valign="top" align="left"  style=" width: 150px;">
                                        Location:
                                    </th>
                                    <td valign="top">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>

                                    </td>
                            </tr>
                          

                              
                                 <tr>
                                    <th valign="top" align="left" >
                                        Job Role:
                                    </th>
                                    <td valign="top">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                                        
                                    </td>
                                     <th valign="top" align="left" >
                                        Equipment:
                                    </th>
                                    <td valign="top">
                                        <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>

                                    </td>
                                </tr>
                                
                                   <tr>
                                    <th valign="top" align="left" >
                                       Seniority:
                                    </th>
                                  
                                    <td align="left">
                                               <asp:DropDownList ID="DropDownList2" runat="server" Width="200px" >
                                                </asp:DropDownList>
                                    </td>
                                    <th valign="top" align="left" >
                                       
                                    </th>
                                    <td  align="center">
                                                    <asp:Button ID="Button1" runat="server" Text="Search" SkinID="bntMiddle" />
                                    </td>
                                          
                                </tr>
                                    <tr>
                                             <td colspan="4"  style="  height:12px; ">
                                             </td>
                                    </tr>
                                   <tr>
                                   
                                    <td colspan="4">
                                        <div style="height: 280px; width: 760px; border: 1px lightgray solid; overflow: auto;"   > 
                                            <div class="resultGridView">
                                                <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false" CssClass="griview" 
                                                    Height="0px" HeaderStyle-CssClass="HeaderStyle-CssClass" RowStyle-CssClass="RowStyle-CssClass"
                                                    AllowPaging="false" PagerSettingsVisible="false"  Width="1000px"
                                                    GridLines="None" AlternatingRowStyle-CssClass="AlternatingRowStyle-CssClass"
                                                    EditRowStyle-CssClass="SelectedRowStyle-CssClass">
                                                    <Columns>
                                                      
                                                        <asp:TemplateField HeaderText="Name" SortExpression="Name" ItemStyle-HorizontalAlign="Left"
                                                            HeaderStyle-CssClass="grid_head_center"  HeaderStyle-Width="180px">
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label1" runat="server" >   <%# Eval("LastName")   %>    <%# Eval("FirstName") %></asp:Label>
                                                              
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                          <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                                                            <HeaderTemplate>
                                                               
                                                                <asp:Label ID="Label2Inst1" runat="server" Text="All"></asp:Label>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkSingle1" runat="server" CssClass="chkSingle" ToolTip='' />
                                                              
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAll1" runat="server" CssClass="chkAll" />
                                                                <asp:Label ID="Label2test1" runat="server" Text="201"></asp:Label>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkSingle2" runat="server" CssClass="chkSingle" ToolTip='' />
                                                                <asp:Label ID="Label3t4" runat="server" Text="5"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                          <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAll2" runat="server" CssClass="chkAll" />
                                                                <asp:Label ID="Label2inst4" runat="server" Text="202"></asp:Label>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkSingle3" runat="server" CssClass="chkSingle" ToolTip='' />
                                                                <asp:Label ID="Label3instu5" runat="server" Text="7"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                          <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAll4" runat="server" CssClass="chkAll" />
                                                                <asp:Label ID="Label2inst6" runat="server" Text="203"></asp:Label>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkSingle4" runat="server" CssClass="chkSingle" ToolTip='' />
                                                                <asp:Label ID="Label3ins7" runat="server" Text="8"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                           <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAll5" runat="server" CssClass="chkAll" />
                                                                <asp:Label ID="Label2intest" runat="server" Text="201"></asp:Label>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkSingle5" runat="server" CssClass="chkSingle" ToolTip='' />
                                                                <asp:Label ID="Label3ins8" runat="server" Text="5"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                          <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAll7test1" runat="server" CssClass="chkAll" />
                                                                <asp:Label ID="Label2ins9" runat="server" Text="202"></asp:Label>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkSingle6" runat="server" CssClass="chkSingle" ToolTip='' />
                                                                <asp:Label ID="Label3ins10" runat="server" Text="7"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                          <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAll6" runat="server" CssClass="chkAll" />
                                                                <asp:Label ID="Label2ins11" runat="server" Text="203"></asp:Label>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkSingle7" runat="server" CssClass="chkSingle" ToolTip='' />
                                                                <asp:Label ID="Labelins12" runat="server" Text="8"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                           <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAll7test" runat="server" CssClass="chkAll" />
                                                                <asp:Label ID="Labelinst14" runat="server" Text="201"></asp:Label>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkSingle8" runat="server" CssClass="chkSingle" ToolTip='' />
                                                                <asp:Label ID="Labelinst15" runat="server" Text="5"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                          <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAll8" runat="server" CssClass="chkAll" />
                                                                <asp:Label ID="Labelinst16" runat="server" Text="202"></asp:Label>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkSingle" runat="server" CssClass="chkSingle" ToolTip='' />
                                                                <asp:Label ID="Labelins17" runat="server" Text="7"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                          <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAll11" runat="server" CssClass="chkAll" />
                                                                <asp:Label ID="Labelinst19" runat="server" Text="203"></asp:Label>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkSingle11" runat="server" CssClass="chkSingle" ToolTip='' />
                                                                <asp:Label ID="Label3test11" runat="server" Text="8"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                           <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAll21" runat="server" CssClass="chkAll" />
                                                                <asp:Label ID="Labelinst20" runat="server" Text="201"></asp:Label>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkSingle22" runat="server" CssClass="chkSingle" ToolTip='' />
                                                                <asp:Label ID="Labelins21" runat="server" Text="5"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                          <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAll33" runat="server" CssClass="chkAll" />
                                                                <asp:Label ID="Labelins22" runat="server" Text="202"></asp:Label>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkSingle33" runat="server" CssClass="chkSingle" ToolTip='' />
                                                                <asp:Label ID="Labelins23" runat="server" Text="7"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                          <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                                                            <HeaderTemplate>
                                                                <asp:CheckBox ID="chkAll44" runat="server" CssClass="chkAll" />
                                                                <asp:Label ID="Labelins24" runat="server" Text="203"></asp:Label>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="chkSingle44" runat="server" CssClass="chkSingle" ToolTip='' />
                                                                <asp:Label ID="Labelins25" runat="server" Text="8"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <PagerTemplate>
                                                        <pel:PelesysDataPager ID="PelesysDataPager1" runat="server" TotalRowCount="0" PageRowCount="20"
                                                            StartRowIndex="0" Text="1" Notice="" Summary=""></pel:PelesysDataPager>
                                                    </PagerTemplate>
                                                </asp:GridView>
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
                             <div id="Div1" class="SaveCancelPanel" style=" width:780px;">
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
      </div>
                        
                        </td>
                    
                    </tr>
                </table>
            </div>


             
              
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
   