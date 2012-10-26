<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucRecurrence.ascx.cs" Inherits="Pelesys.Scheduling.Web.Controls.ucRecurrence" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
  <div style="visibility: visible; margin: 4px; padding-top: 4px; height: 420px; width:820px ; 
                position: absolute;  ">

            <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="320px"
            Width="100%" CssClass="gray">
                 <asp:TabPanel HeaderText="Daily" Visible="true" runat="server" ID="TabPanel4">
                <ContentTemplate>
                    <div style="visibility: visible; margin: 4px;"  class="detailEdit">
                        <table border="0" cellpadding="2" cellspacing="2" width="100%">
                            <tr>
                                    <th>
                                        <div style="visibility: visible; margin: 4px; padding-top: 0px; height: 140px; width:794px ;  border: 1px solid lightgray  ">
                                            <table border="0" cellpadding="2" cellspacing="2"   width="100%"  style="  height:200px "  >
                                                <tr>
                                                    <td  style=" height:40px " > 
                                                    
                                                    
                                                    </td>
                                                
                                                </tr>
                                                <tr>
                                                    <td  align="center">
                                                       
                                                    
                                                    </td>
                                                
                                                </tr>
                                                 <tr>
                                                    <td  align="center">
                                                        <table  width="700px"  cellpadding="12" cellspacing="12"   >
                                                            <tr>
                                                                <td>
                                                                 <asp:Label ID="Label1" runat="server" Text="Daily Recurrence"></asp:Label>
                                                                </td>
                                                                <td><asp:Label ID="Label2" runat="server" Text="Every"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox1" runat="server"  Width="30px" ></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                <asp:Label ID="Label3" runat="server" Text="Day(s)"></asp:Label>
                                                                </td>
                                                                <td  style="  width:130px; "></td>
                                                                <td><asp:Label ID="Label4" runat="server" Text="Include weekends"></asp:Label></td>
                                                                <td>
                                                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                                                </td>
                                                            </tr>

                                                        </table>
                                                    
                                                    </td>
                                                
                                                </tr>
                                            
                                            
                                            </table>
                                        
                                        </div>
                                    </th>  
                            
                            </tr>
                              <tr >
                                    <td  style=" height:10px; " >  
                                       
                                    
                                    </td>
                            
                            </tr>
                             <tr>
                                    <th>
                                        <div style="visibility: visible; margin: 4px; padding-top: 0px; height: 200px; width:794px ;  border: 1px solid lightgray  ">

                                          <table border="0" cellpadding="2" cellspacing="2"   width="100%"  style="  height:200px "  >
                                                <tr>
                                                    <td  style=" height:40px " > 
                                                    
                                                    
                                                    </td>
                                                
                                                </tr>
                                                <tr>
                                                    <td  align="center">
                                                       
                                                    
                                                    </td>
                                                
                                                </tr>
                                                 <tr>
                                                    <td  align="center">
                                                        <table  width="670px"  cellpadding="8" cellspacing="8"   >
                                                            <tr>
                                                                <td>
                                                                    <asp:RadioButton ID="RadioButton1" runat="server"  Checked="true" />
                                                                </td>
                                                                <td  align="left"><asp:Label ID="Label6" runat="server" Text="End After"></asp:Label>
                                                                </td>
                                                                <td  align="left">
                                                                    <asp:TextBox ID="TextBox2" runat="server"  Width="130px" ></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                <asp:Label ID="Label7" runat="server" Text="Occurrences"></asp:Label>
                                                                </td>
                                                                <td  style="  width:300px; "></td>
                                                                
                                                            </tr>
                                                             <tr>
                                                                <td>
                                                                    <asp:RadioButton ID="RadioButton2" runat="server" />
                                                                </td>
                                                                <td  align="left"><asp:Label ID="Label5" runat="server" Text="End By"></asp:Label>
                                                                </td>
                                                                <td  align="left">
                                                                     <pel:AdvancedCalendar ID="AdvancedCalendar9" runat="server" IsRequired="false"   Width="130px" />
                                                                </td>
                                                                <td>
                                                                   
                                                                </td>
                                                                <td  style="  width:300px; "></td>
                                                                
                                                            </tr>

                                                        </table>
                                                    
                                                    </td>
                                                
                                                </tr>
                                            
                                            
                                            </table>
                                        </div>
                                    
                                    </th>
                            
                            </tr>
                             
                        </table>
                   </div>
                </ContentTemplate>
              </asp:TabPanel>
              <asp:TabPanel HeaderText="Weekly" Visible="true" runat="server" ID="TabPanel2">
                <ContentTemplate>
                    <div style="visibility: visible; margin: 4px;"  class="detailEdit">
                        <table border="0" cellpadding="2" cellspacing="2" width="100%">
                            <tr>
                                    <th>
                                        <div style="visibility: visible; margin: 4px; padding-top: 0px; height: 140px; width:794px ;  border: 1px solid lightgray  ">
                                            <table border="0" cellpadding="2" cellspacing="2"   width="100%"  style="  height:200px "  >
                                                <tr>
                                                    <td  style=" height:40px " > 
                                                    
                                                    
                                                    </td>
                                                
                                                </tr>
                                                <tr>
                                                    <td  align="center">
                                                       
                                                    
                                                    </td>
                                                
                                                </tr>
                                                 <tr>
                                                    <td  align="center">
                                                        <table  width="700px"  cellpadding="12" cellspacing="12"   >
                                                            <tr>
                                                                <td>
                                                                 <asp:Label ID="Label8" runat="server" Text="Daily Recurrence"></asp:Label>
                                                                </td>
                                                                <td><asp:Label ID="Label9" runat="server" Text="Every"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox3" runat="server"  Width="30px" ></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                <asp:Label ID="Label10" runat="server" Text="Day(s)"></asp:Label>
                                                                </td>
                                                                <td  style="  width:130px; "></td>
                                                                <td><asp:Label ID="Label11" runat="server" Text="Include weekends"></asp:Label></td>
                                                                <td>
                                                                    <asp:CheckBox ID="CheckBox2" runat="server" />
                                                                </td>
                                                            </tr>

                                                        </table>
                                                    
                                                    </td>
                                                
                                                </tr>
                                            
                                            
                                            </table>
                                        
                                        </div>
                                    </th>  
                            
                            </tr>
                              <tr >
                                    <td  style=" height:10px; " >  
                                       
                                    
                                    </td>
                            
                            </tr>
                             <tr>
                                    <th>
                                        <div style="visibility: visible; margin: 4px; padding-top: 0px; height: 200px; width:794px ;  border: 1px solid lightgray  ">

                                          <table border="0" cellpadding="2" cellspacing="2"   width="100%"  style="  height:200px "  >
                                                <tr>
                                                    <td  style=" height:40px " > 
                                                    
                                                    
                                                    </td>
                                                
                                                </tr>
                                                <tr>
                                                    <td  align="center">
                                                       
                                                    
                                                    </td>
                                                
                                                </tr>
                                                 <tr>
                                                    <td  align="center">
                                                        <table  width="670px"  cellpadding="8" cellspacing="8"   >
                                                            <tr>
                                                                <td>
                                                                    <asp:RadioButton ID="RadioButton3" runat="server"  Checked="true" />
                                                                </td>
                                                                <td  align="left"><asp:Label ID="Label12" runat="server" Text="End After"></asp:Label>
                                                                </td>
                                                                <td  align="left">
                                                                    <asp:TextBox ID="TextBox4" runat="server"  Width="130px" ></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                <asp:Label ID="Label13" runat="server" Text="Occurrences"></asp:Label>
                                                                </td>
                                                                <td  style="  width:300px; "></td>
                                                                
                                                            </tr>
                                                             <tr>
                                                                <td>
                                                                    <asp:RadioButton ID="RadioButton4" runat="server" />
                                                                </td>
                                                                <td  align="left"><asp:Label ID="Label14" runat="server" Text="End By"></asp:Label>
                                                                </td>
                                                                <td  align="left">
                                                                     <pel:AdvancedCalendar ID="AdvancedCalendar1" runat="server" IsRequired="false"   Width="130px" />
                                                                </td>
                                                                <td>
                                                                   
                                                                </td>
                                                                <td  style="  width:300px; "></td>
                                                                
                                                            </tr>

                                                        </table>
                                                    
                                                    </td>
                                                
                                                </tr>
                                            
                                            
                                            </table>
                                        </div>
                                    
                                    </th>
                            
                            </tr>
                             
                        </table>
                   </div>
                </ContentTemplate>
              </asp:TabPanel>

                  <asp:TabPanel HeaderText="Monthly" Visible="true" runat="server" ID="TabPanel1">
                <ContentTemplate>
                    <div style="visibility: visible; margin: 4px;"  class="detailEdit">
                        <table border="0" cellpadding="2" cellspacing="2" width="100%">
                            <tr>
                                    <th>
                                        <div style="visibility: visible; margin: 4px; padding-top: 0px; height: 140px; width:794px ;  border: 1px solid lightgray  ">
                                            <table border="0" cellpadding="2" cellspacing="2"   width="100%"  style="  height:200px "  >
                                                <tr>
                                                    <td  style=" height:40px " > 
                                                    
                                                    
                                                    </td>
                                                
                                                </tr>
                                                <tr>
                                                    <td  align="center">
                                                       
                                                    
                                                    </td>
                                                
                                                </tr>
                                                 <tr>
                                                    <td  align="center">
                                                        <table  width="700px"  cellpadding="12" cellspacing="12"   >
                                                            <tr>
                                                                <td>
                                                                 <asp:Label ID="Label15" runat="server" Text="Daily Recurrence"></asp:Label>
                                                                </td>
                                                                <td><asp:Label ID="Label16" runat="server" Text="Every"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox5" runat="server"  Width="30px" ></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                <asp:Label ID="Label17" runat="server" Text="Day(s)"></asp:Label>
                                                                </td>
                                                                <td  style="  width:130px; "></td>
                                                                <td><asp:Label ID="Label18" runat="server" Text="Include weekends"></asp:Label></td>
                                                                <td>
                                                                    <asp:CheckBox ID="CheckBox3" runat="server" />
                                                                </td>
                                                            </tr>

                                                        </table>
                                                    
                                                    </td>
                                                
                                                </tr>
                                            
                                            
                                            </table>
                                        
                                        </div>
                                    </th>  
                            
                            </tr>
                              <tr >
                                    <td  style=" height:10px; " >  
                                       
                                    
                                    </td>
                            
                            </tr>
                             <tr>
                                    <th>
                                        <div style="visibility: visible; margin: 4px; padding-top: 0px; height: 200px; width:794px ;  border: 1px solid lightgray  ">

                                          <table border="0" cellpadding="2" cellspacing="2"   width="100%"  style="  height:200px "  >
                                                <tr>
                                                    <td  style=" height:40px " > 
                                                    
                                                    
                                                    </td>
                                                
                                                </tr>
                                                <tr>
                                                    <td  align="center">
                                                       
                                                    
                                                    </td>
                                                
                                                </tr>
                                                 <tr>
                                                    <td  align="center">
                                                        <table  width="670px"  cellpadding="8" cellspacing="8"   >
                                                            <tr>
                                                                <td>
                                                                    <asp:RadioButton ID="RadioButton5" runat="server"  Checked="true" />
                                                                </td>
                                                                <td  align="left"><asp:Label ID="Label19" runat="server" Text="End After"></asp:Label>
                                                                </td>
                                                                <td  align="left">
                                                                    <asp:TextBox ID="TextBox6" runat="server"  Width="130px" ></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                <asp:Label ID="Label20" runat="server" Text="Occurrences"></asp:Label>
                                                                </td>
                                                                <td  style="  width:300px; "></td>
                                                                
                                                            </tr>
                                                             <tr>
                                                                <td>
                                                                    <asp:RadioButton ID="RadioButton6" runat="server" />
                                                                </td>
                                                                <td  align="left"><asp:Label ID="Label21" runat="server" Text="End By"></asp:Label>
                                                                </td>
                                                                <td  align="left">
                                                                     <pel:AdvancedCalendar ID="AdvancedCalendar2" runat="server" IsRequired="false"   Width="130px" />
                                                                </td>
                                                                <td>
                                                                   
                                                                </td>
                                                                <td  style="  width:300px; "></td>
                                                                
                                                            </tr>

                                                        </table>
                                                    
                                                    </td>
                                                
                                                </tr>
                                            
                                            
                                            </table>
                                        </div>
                                    
                                    </th>
                            
                            </tr>
                             
                        </table>
                   </div>
                </ContentTemplate>
              </asp:TabPanel>
            
                 <asp:TabPanel HeaderText="Yearly" Visible="true" runat="server" ID="TabPanel5">
                <ContentTemplate>
                   <div style="visibility: visible; margin: 4px;"  class="detailEdit">
                        <table border="0" cellpadding="2" cellspacing="2" width="100%">
                            <tr>
                                    <th>
                                        <div style="visibility: visible; margin: 4px; padding-top: 0px; height: 140px; width:794px ;  border: 1px solid lightgray  ">
                                            <table border="0" cellpadding="2" cellspacing="2"   width="100%"  style="  height:200px "  >
                                                <tr>
                                                    <td  style=" height:40px " > 
                                                    
                                                    
                                                    </td>
                                                
                                                </tr>
                                                <tr>
                                                    <td  align="center">
                                                       
                                                    
                                                    </td>
                                                
                                                </tr>
                                                 <tr>
                                                    <td  align="center">
                                                        <table  width="700px"  cellpadding="12" cellspacing="12"   >
                                                            <tr>
                                                                <td>
                                                                 <asp:Label ID="Label22" runat="server" Text="Daily Recurrence"></asp:Label>
                                                                </td>
                                                                <td><asp:Label ID="Label23" runat="server" Text="Every"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox7" runat="server"  Width="30px" ></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                <asp:Label ID="Label24" runat="server" Text="Day(s)"></asp:Label>
                                                                </td>
                                                                <td  style="  width:130px; "></td>
                                                                <td><asp:Label ID="Label25" runat="server" Text="Include weekends"></asp:Label></td>
                                                                <td>
                                                                    <asp:CheckBox ID="CheckBox4" runat="server" />
                                                                </td>
                                                            </tr>

                                                        </table>
                                                    
                                                    </td>
                                                
                                                </tr>
                                            
                                            
                                            </table>
                                        
                                        </div>
                                    </th>  
                            
                            </tr>
                              <tr >
                                    <td  style=" height:10px; " >  
                                       
                                    
                                    </td>
                            
                            </tr>
                             <tr>
                                    <th>
                                        <div style="visibility: visible; margin: 4px; padding-top: 0px; height: 200px; width:794px ;  border: 1px solid lightgray  ">

                                          <table border="0" cellpadding="2" cellspacing="2"   width="100%"  style="  height:200px "  >
                                                <tr>
                                                    <td  style=" height:40px " > 
                                                    
                                                    
                                                    </td>
                                                
                                                </tr>
                                                <tr>
                                                    <td  align="center">
                                                       
                                                    
                                                    </td>
                                                
                                                </tr>
                                                 <tr>
                                                    <td  align="center">
                                                        <table  width="670px"  cellpadding="8" cellspacing="8"   >
                                                            <tr>
                                                                <td>
                                                                    <asp:RadioButton ID="RadioButton7" runat="server"  Checked="true" />
                                                                </td>
                                                                <td  align="left"><asp:Label ID="Label26" runat="server" Text="End After"></asp:Label>
                                                                </td>
                                                                <td  align="left">
                                                                    <asp:TextBox ID="TextBox8" runat="server"  Width="130px" ></asp:TextBox>
                                                                </td>
                                                                <td>
                                                                <asp:Label ID="Label27" runat="server" Text="Occurrences"></asp:Label>
                                                                </td>
                                                                <td  style="  width:300px; "></td>
                                                                
                                                            </tr>
                                                             <tr>
                                                                <td>
                                                                    <asp:RadioButton ID="RadioButton8" runat="server" />
                                                                </td>
                                                                <td  align="left"><asp:Label ID="Label28" runat="server" Text="End By"></asp:Label>
                                                                </td>
                                                                <td  align="left">
                                                                     <pel:AdvancedCalendar ID="AdvancedCalendar3" runat="server" IsRequired="false"   Width="130px" />
                                                                </td>
                                                                <td>
                                                                   
                                                                </td>
                                                                <td  style="  width:300px; "></td>
                                                                
                                                            </tr>

                                                        </table>
                                                    
                                                    </td>
                                                
                                                </tr>
                                            
                                            
                                            </table>
                                        </div>
                                    
                                    </th>
                            
                            </tr>
                             
                        </table>
                   </div>
                </ContentTemplate>
              </asp:TabPanel>

                   <asp:TabPanel HeaderText="Random" Visible="true" runat="server" ID="TabPanel3">
                <ContentTemplate>
                    <div style="visibility: visible; margin: 4px;"  class="detailEdit">
                        <table border="0" cellpadding="2" cellspacing="2" width="100%">
                           
                        </table>
                   </div>
                </ContentTemplate>
              </asp:TabPanel>
        </asp:TabContainer>
            </div>
    <br />
    <div id="Div2" class="SaveCancelPanel" style="position: absolute; top: 442px; left: 1px; width:99%;">
        <table border="0" cellpadding="2" cellspacing="2" style="width: 100%; height: 100%;">
            <tr>
                <td style="width: 70%; font-size: 10px; font-weight: normal;">
                    <asp:Panel ID="Panel1" runat="server">
                    </asp:Panel>
                </td>
                <td align="left">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                         <asp:Button ID="Button2" runat="server" Text="Delete" SkinID="bntMiddle" />
                            <asp:Button ID="bntSave" runat="server" Text="Save" SkinID="bntMiddle"/>
                            <asp:Button ID="bntCancel" runat="server" Text="Cancel" SkinID="bntMiddle" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
        </table>
    </div>
    