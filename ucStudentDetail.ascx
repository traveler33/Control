<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucStudentDetail.ascx.cs"
    Inherits="Pelesys.Scheduling.Web.Control.ucStudentDetail" %>
    

<div  id="filed" style="visibility: visible; margin: 4px; padding: 4px; height: 505px; width: 98%;
    background-color: #efefef;">

          <div style="visibility: visible; margin: 4px; padding-top: 4px; height: 500px; width: 98%; position: absolute;  left:2px; overflow: hidden; " class="detailEdit"  >
                <table border="0" cellpadding="6" cellspacing="6" width="98%"  >
                  
                    <tr>
                       
                        <td  colspan="2">
                           <div style=" width:100%; height:440px; border: 1px solid lightgray; background-color:#fff;  overflow: auto; "> 
                           <div style="visibility: visible; margin: 4px;"  class="detailEdit">
                        <table border="0" cellpadding="4" cellspacing="4" style="width: 840px; height: 99%;">
                         
                             <tr>
                                <th  valign="top" align="left"  style=" width: 150px;" >
                                     Instructor:
                                </th>
                                <td   >
                                     <asp:TextBox ID="TextBox9" runat="server" Width="200px" ReadOnly="true" BackColor="#efefef"></asp:TextBox>
                                </td>
                                   <th valign="top" align="left"  style=" width: 150px;">
                                        Resource:
                                    </th>
                                    <td valign="top">
                                         <asp:TextBox ID="TextBox1" runat="server" Width="200px" ReadOnly="true" BackColor="#efefef"></asp:TextBox>

                                    </td>
                            </tr>
                          
                                     
                                                    <tr>
                                                            <th  style=" width:150px; "> 
                                                                <asp:Label ID="Label1" runat="server" Text="From" ></asp:Label></th>
                                                              <td> <asp:TextBox ID="TextBox2" runat="server" Width="200px" ReadOnly="true" BackColor="#efefef"></asp:TextBox></td>
                                                                <th   style=" width:150px; ">
                                                                    <asp:Label ID="Label2" runat="server" Text="To"></asp:Label></th>
                                                                  <td> <asp:TextBox ID="TextBox3" runat="server" Width="200px" ReadOnly="true" BackColor="#efefef"></asp:TextBox></td>
                                                    </tr>
                                                
                                            
                              
                            
                                    <tr>
                                             <td colspan="4"  style="  height:8px; ">
                                             </td>
                                    </tr>
                                   <tr>
                                   <td   colspan="4">
                                        <table border="0" cellpadding="2" cellspacing="2" >
                                            <tr>
                               
                                                <td>
                                               <div style="height: 350px; border: 1px lightgray solid;width: 1140px; overflow: auto; "   > 
                                            <div class="resultGridView"  style="" >
                                            
                                        <asp:GridView ID="gv" runat="server"
                                        AutoGenerateColumns ="false"
                                            CssClass="griview"
                                            Height ="0px"
                                            HeaderStyle-CssClass ="HeaderStyle-CssClass"
                                                RowStyle-CssClass="RowStyle-CssClass"
                                            AllowPaging="false"
                                            PagerSettingsVisible = "false" 
                                           onrowdatabound="gv_RowDataBound"
                                            GridLines="None"
                                            AlternatingRowStyle-CssClass="AlternatingRowStyle-CssClass"
                                                EditRowStyle-CssClass="SelectedRowStyle-CssClass"  Width="3800px"
                                                                                                            
                                                                                                       >
                                            <Columns>
                                             
                                                     <asp:BoundField HeaderText="Name" SortExpression="FirstName" DataField="FirstName"
                                             ItemStyle-HorizontalAlign="left" HeaderStyle-Width="198px"   HeaderStyle-CssClass="grid_head_center" />
                                        
                                                <asp:TemplateField HeaderText="0730"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid0730" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid7030" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                             <asp:TemplateField HeaderText="0800"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid0800" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid0800" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                               <asp:TemplateField HeaderText="0830"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid0830" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid0830" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>


                                                <asp:TemplateField HeaderText="0900"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid0900" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid0900" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                               <asp:TemplateField HeaderText="0930"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid0930" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid0930" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                               <asp:TemplateField HeaderText="1000"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1000" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1000" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                               <asp:TemplateField HeaderText="1030"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1030" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1030" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                               <asp:TemplateField HeaderText="1100"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1100" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1100" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                               <asp:TemplateField HeaderText="1130"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1130" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1130" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                               <asp:TemplateField HeaderText="1200"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1200" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1200" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="1230"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1230" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1230" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                               <asp:TemplateField HeaderText="1300"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1300" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1300" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                               <asp:TemplateField HeaderText="1330"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1330" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1330" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                               <asp:TemplateField HeaderText="1400"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1400" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1400" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                               <asp:TemplateField HeaderText="1430"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1430" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1430" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="1500"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1500" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1500" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="1530"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1530" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1530" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="1600"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1600" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1600" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="1630"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1630" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1630" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="1700"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1700" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1700" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="1730"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1730" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1730" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="1800"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1800" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1800" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="1900"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1900" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1900" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="1930"   HeaderStyle-Width="140"
                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-CssClass="grid_head_center">
                                                <ItemTemplate>

                                                    <asp:TextBox ID="txtgrid1930" runat="server"   Width="100"   CssClass="eFormtboxCoursecss"   ></asp:TextBox>
                                                    
                                                 
                                                        <asp:Image
                                                            ID="Imggrid1930" runat="server"  ImageUrl="~/Images/icon_expand.png" 
                                                           />
                                                </ItemTemplate>

                                            </asp:TemplateField>


                                            </Columns>
                                         
                                         </asp:GridView>
                                    

                                            </div>
                                        </div>
                                                
                                                </td>
                                            </tr>
                                            
                                        </table>
                                   
                                   </td>
                                    <td colspan="4">
                                
                                    </td>
                                </tr>
                                </table>
                            </div>
                           </div   
                        </td>
                    </tr>  
                   <tr>
                        <td>
                             <div id="Div1" class="SaveCancelPanel" style=" width:1162px;"    onmouseover="SelectValue(false,'')">
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


        
     <div id="CourseSelected"   style="  z-index:999999;  position:absolute; display:none;  padding:10px; margin:5px;"  >
      
           <div    class="SelectCoursePanel" style =" width:240; height:100%; overflow: auto; padding:5px;  border:1px solid lightgray;  cursor: pointer; ">
              <table border="0" cellpadding="4" cellspacing="4" width="220px" >
                <tr>
                    <th style=" font-weight:normal; font-size:11px; ">
                        <asp:Label ID="Label3" runat="server" Text="Please select courses"></asp:Label>
                    
                    </th>
                
                </tr>
                <tr>
                        <td  style=" font-weight:normal; font-size:10px; "  >
                       <div  style=" margin:4px; padding:10px; border: 1px solid lightgray; ">
                            <asp:Panel ID="Panel2" runat="server">
                            <table border="0" cellpadding="4" cellspacing="4"  width="100%">
                                <tr>
                                    <th  align="left">
                                        <asp:RadioButton ID="RadioButton1" runat="server"  GroupName="scourse"   ForeColor="Red" Text="Reg" />
                                    </th>
                                </tr>
                                 <tr>
                                    <th  align="left">
                                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Lunch"   GroupName="scourse"  ForeColor="Green"/>
                                    </th>
                                </tr>
                                   <tr>
                                    <th align="left">
                                        <asp:RadioButton ID="RadioButton3" runat="server" Text="Reception"   GroupName="scourse" ForeColor="Aqua"/>
                                    </th>
                                </tr>
                                   <tr>
                                    <th align="left">
                                        <asp:RadioButton ID="RadioButton4" runat="server" Text="Safety Brief"  GroupName="scourse"  ForeColor="Green"/>
                                    </th>
                                </tr>
                                   <tr>
                                    <th align="left">
                                        <asp:RadioButton ID="RadioButton5" runat="server" Text="Academics"   GroupName="scourse" ForeColor="YellowGreen"/>
                                    </th>
                                </tr>
                                   <tr>
                                    <th align="left">
                                        <asp:RadioButton ID="RadioButton6" runat="server" Text="Flight Period"  GroupName="scourse"  ForeColor="BurlyWood"/>
                                    </th>
                                </tr>
                                   <tr>
                                    <th align="left" >
                                        <asp:RadioButton ID="RadioButton7" runat="server" Text="206 Flight (1.9)"  GroupName="scourse"  ForeColor="AppWorkspace"/>
                                    </th>
                                </tr>
                                </tr>
                                   <tr>
                                    <th align="left" >
                                        <asp:RadioButton ID="RadioButton8" runat="server" Text="None"  GroupName="scourse" Checked="true" ForeColor="Black"/>
                                    </th>
                                </tr>
                            </table>
                            </asp:Panel>
                            </div>
                        </td>
                </tr>
              </table> 
            
               
           </div>
       
    </div>
       



    </div>