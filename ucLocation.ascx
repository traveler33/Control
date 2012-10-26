<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLocation.ascx.cs" Inherits="Pelesys.Scheduling.Web.Controls.Location" %>
  <div style="visibility: visible; margin: 4px; padding: 10px; height: 488px; width: 805px;   background-color:#efefef; ">
  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
          


               <div id="structureTree" class="structureTree,jstree-drop,jstree-draggable" style=" background-color:#fff; border: solid lightgray 1px; padding:6px; width:790px; 
                   height: 400px; overflow:auto; ">
                    <ul id="ddbrowser" class="filetree">
                        <li><span class="RType" style="font-size: 11px;" onclick="iframeGotoPage('Resources', 1);">
                            Location</span>
                            <ul>
                                <li class="RLoc"><span class="RLoc" style="font-size: 11px; font-weight: normal;"
                                    onclick="iframeGotoPage('Room', 1);">
                                    <asp:CheckBox ID="CheckBox1" runat="server" /> Vancouver</span>
                                    <ul>
                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Class Room', 2)">
                                          <asp:CheckBox ID="CheckBox4" runat="server" />   Richmond</span>
                                           
                                        </li>
                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Meeting Room', 2)">
                                          <asp:CheckBox ID="CheckBox5" runat="server" />   Surrey</span>
                                           
                                        </li>
                                       
                                    </ul>
                                </li>
                            </ul>
                            <ul>
                                <li class="RLoc"><span class="RLoc" style="font-size: 11px; font-weight: normal;"
                                    onclick="iframeGotoPage('Simulator', 1);"> <asp:CheckBox ID="CheckBox13" runat="server" />China</span>
                                    <ul>
                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('A320', 1)">
                                           <asp:CheckBox ID="CheckBox2" runat="server" />  Bejing</span>
                                            <ul>
                                                <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Level 1', 1)">
                                                   <asp:CheckBox ID="CheckBox3" runat="server" />  Center Office</span>
                                                    <ul>
                                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Visual/Dispaly 4', 2)">
                                                           <asp:CheckBox ID="CheckBox6" runat="server" />  Second Floor</span> </li>
                                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Visual/Dispaly 5', 2)">
                                                         <asp:CheckBox ID="CheckBox7" runat="server" />   24th Floor</span></li>
                                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Visual/Dispaly 6', 2)">
                                                          <asp:CheckBox ID="CheckBox8" runat="server" />   40th Floor</span></li>
                                                    </ul>
                                                </li>
                                                <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Level 2', 2)">
                                                 <asp:CheckBox ID="CheckBox9" runat="server" />    North Office</span></li>
                                                <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Level 3', 2)">
                                                  <asp:CheckBox ID="CheckBox10" runat="server" />   South Office</span></li>
                                            </ul>
                                        </li>
                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('B767', 1)">
                                          <asp:CheckBox ID="CheckBox11" runat="server" />   Nanjing</span></li>
                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('B737', 1)">
                                           <asp:CheckBox ID="CheckBox12" runat="server" />  Changsha</span></li>
                                    </ul>
                                </li>
                            </ul>
                 
                   
                  </div> 
              
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <div id="Div1" class="SaveCancelPanel" style="position: absolute; top: 440px; left: 14px; width:800px;">
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