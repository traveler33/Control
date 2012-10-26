<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucResourceProfile.ascx.cs" Inherits="Pelesys.Scheduling.Web.Controls.ucResourceProfile" %>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <div style="visibility: visible; margin: 4px; padding-top: 4px; height: 400px; width:700px ; position: absolute; ">
                <table border="0" cellpadding="6" cellspacing="6" width="100%" class="detailEdit">
                    <tr>
                        <th align="left" >
                            <asp:Label ID="Label1" runat="server" Text="Add New Resource"></asp:Label></span>
                        </th>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <th align="left" >
                            <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label><span class="required"></span>
                        </th>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" Width="58%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th valign="top" align="left" >
                            <asp:Label ID="lblDesc" runat="server" Text="Description:"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Width="80%" Height="80px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th align="left" >
                            <asp:Label ID="Label5" runat="server" Text="Locotion & Organization:"></asp:Label>
                            <span class="required">
                        </th>
                        <td class="detailEditColumn" align="left">
                            <asp:TextBox ID="TextBox4" runat="server" Width="300px" MaxLength="300"></asp:TextBox><asp:Button
                                ID="Button1" runat="server" Text="..."   CssClass="ShortButton"  />
                        </td>
                    </tr>
                    <tr>
                        <th valign="top" align="left" >
                            <asp:Label ID="lblFormList" runat="server" Text="Resource Pool:"></asp:Label><span
                                class="required"></span>
                        </th>
                        <td>
                            <asp:DropDownList ID="DropDownList9" runat="server" Width="80%">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th align="left" >
                            <asp:Label ID="Label2" runat="server" Text="Serial Number:"></asp:Label>
                            <span class="required"></span>
                        </th>
                        <td class="detailEditColumn" align="left">
                            <asp:TextBox ID="TextBox1" runat="server" Width="300px" MaxLength="400"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th align="left" >
                            <asp:Label ID="Label3" runat="server" Text="Hourly Rate:"></asp:Label>
                        </th>
                        <td class="detailEditColumn" align="left">
                            <asp:TextBox ID="TextBox2" runat="server" Width="100px" MaxLength="100"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th align="left" >
                            <asp:Label ID="Label4" runat="server" Text="Weekly Usered Hours:"></asp:Label>
                        </th>
                        <td class="detailEditColumn" align="left">
                            <asp:TextBox ID="TextBox3" runat="server" Width="100px" MaxLength="100"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
<%--    <br />
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
    </div>--%>
    