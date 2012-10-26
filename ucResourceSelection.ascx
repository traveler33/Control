<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucResourceSelection.ascx.cs"
    Inherits="Pelesys.Scheduling.Web.Controls.ucResourceSelection" %>

    <table     class="detailEdit" cellpadding="4" cellspacing="4" border="0" width="760px" style="height: 100px"    >
        <tr>
            <td colspan="2" style="height: 30px; font-weight: bold;">
                Add Resource
            </td>
        </tr>
        <tr>
            <td style="width: 380px" valign="top">
                <table cellpadding="1" cellspacing="1" border="0">
                    <tr style="height: 24px;">
                        <th align="left" valign="top">
                            <asp:Label ID="Label1" runat="server" Text="Resource Type:" />
                        </th>
                        <td class="editFieldControl" style="padding-top: 0px;">
                            <asp:DropDownList ID="DropDownList6" runat="server" Width="240px" SkinID="eFormDropDownList">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr style="height: 24px;">
                        <th align="left" valign="top">
                            <asp:Label ID="lblLocation" runat="server" Text="Location:" />
                        </th>
                        <td class="editFieldControl" style="padding-top: 0px;">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="240px" SkinID="eFormDropDownList">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div style="height: 340px; padding: 6px;
                                overflow: auto; background-color: White; width: 340px; border: 1px solid lightgray;">
                                <div id="structureTree" class="structureTree,jstree-drop,jstree-draggable">
                                    <ul id="dbrowser" class="filetree">
                                        <li><span class="RType" style="font-size: 11px;" onclick="iframeGotoPage('Resources', 1);">
                                            Resources</span>
                                            <ul>
                                                <li class="RLoc"><span class="RLoc" style="font-size: 11px; font-weight: normal;"
                                                    onclick="iframeGotoPage('Room', 1);">Room</span>
                                                    <ul>
                                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Class Room', 2)">
                                                            Class Room</span> </li>
                                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Meeting Room', 2)">
                                                            Meeting Room</span> </li>
                                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Office Room', 2)">
                                                            Office Room</span> </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                            <ul>
                                                <li class="RLoc"><span class="RLoc" style="font-size: 11px; font-weight: normal;"
                                                    onclick="iframeGotoPage('Simulator', 1);">Simulator</span>
                                                    <ul>
                                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('A320', 1)">
                                                            A320</span>
                                                            <ul>
                                                                <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Level 1', 1)">
                                                                    Level 1</span>
                                                                    <ul>
                                                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Visual/Dispaly 4', 2)">
                                                                            Visual/Dispaly 4</span> </li>
                                                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Visual/Dispaly 5', 2)">
                                                                            Visual/Display 5</span></li>
                                                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Visual/Dispaly 6', 2)">
                                                                            Visual/Display 6</span></li>
                                                                    </ul>
                                                                </li>
                                                                <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Level 2', 2)">
                                                                    Level 2</span></li>
                                                                <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('Level 3', 2)">
                                                                    Level 3</span></li>
                                                            </ul>
                                                        </li>
                                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('B767', 1)">
                                                            B767</span></li>
                                                        <li><span class="RLoc" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoPage('B737', 1)">
                                                            B737</span></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                            <ul>
                                                <li class="RPool"><span class="RPool" style="font-size: 11px; font-weight: normal;"
                                                    onclick="iframeGotoInventoryPage('155 Manual Book', 1);">155 Manual Book</span>
                                                    <ul>
                                                        <li><span class="RPool" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoInventoryPage('244 Manual Book', 2)">
                                                            244 Manual Book</span></li>
                                                        <li><span class="RPool" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoInventoryPage('266 Manual Book', 2)">
                                                            266 Manual Book</span></li>
                                                        <li><span class="RPool" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoInventoryPage(' 288 244 Manual Book', 2)">
                                                            288 244 Manual Book</span></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                            <ul>
                                                <li class="RPool"><span class="RPool" style="font-size: 11px; font-weight: normal;"
                                                    onclick="iframeGotoPage('Office Furniture', 1);">Office Furniture</span>
                                                    <ul>
                                                        <li><span class="RPool" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoInventoryPage('Desk', 2)">
                                                            Desk</span></li>
                                                        <li><span class="RPool" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoInventoryPage('Chair', 2)">
                                                            Chair</span></li>
                                                        <li><span class="RPool" style="font-size: 11px; font-weight: normal;" onclick="iframeGotoInventoryPage('Divisions', 2)">
                                                            Divisions</span></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td   valign="top" >
            <div style=" width: 100%;  height: 405px; border: 1px solid lightgray; background-color:#fff; ">
                <dx:ASPxGridView ID="gv" ClientInstanceName="grid" runat="server" KeyFieldName="ResourcePoolID"
                    Border-BorderColor="LightGray" Border-BorderStyle="Solid" Border-BorderWidth="1"
                    Font-Names="Verdana" Font-Size="10px" ForeColor="#342F2F" AutoGenerateColumns="False"
                    Theme="Office2003Blue" EnableRowsCache="True" Width="100%" DataSourceForceStandardPaging="False"
                    SettingsPager-AlwaysShowPager="True" SettingsPager-Position="Bottom">
                    <Columns>
                        <dx:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0" Width="30px">
                            <HeaderTemplate>
                                <asp:CheckBox ID="CheckBox2" runat="server" />
                            </HeaderTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataColumn FieldName="Name" VisibleIndex="1" Caption="Name" SortOrder="Ascending" />
                        <dx:GridViewDataTextColumn Caption="Duration" VisibleIndex="3" Width="80px">
                            <DataItemTemplate>
                                <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="70px" Text="2">
                                </dx:ASPxTextBox>
                            </DataItemTemplate>
                            <CellStyle HorizontalAlign="Center">
                            </CellStyle>
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <Settings ShowGroupPanel="False" />
                    <SettingsBehavior AllowFocusedRow="false" />
                    <Settings GridLines="Vertical" />
                    <Styles>
                        <AlternatingRow Enabled="true" />
                    </Styles>
                    <SettingsPager PageSize="10">
                        <PageSizeItemSettings Visible="true" ShowAllItem="true" />
                    </SettingsPager>
                </dx:ASPxGridView>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            <div id="Div2" class="SaveCancelPanel" style="
    width: 750px;">
    <table border="0" cellpadding="2" cellspacing="2" style="width: 100%; height: 100%;">
        <tr>
            <td style="width: 70%; font-size: 10px; font-weight: normal;">
            </td>
            <td align="left">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="Button1" runat="server" Text="Remove" SkinID="bntMiddle" />
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

