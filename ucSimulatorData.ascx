<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucSimulatorData.ascx.cs" Inherits="Pelesys.Scheduling.Web.Control.ucSimulatorData" %>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <div style="visibility: visible; margin: 4px; padding-top: 4px; height: 320px; width:98% ; position: absolute; ">
            <table border="0" cellpadding="6" cellspacing="6" width="97%" class="detailEdit">
                    <tr>
                        <th align="left" >
                            <asp:Label ID="Label1" runat="server" Text="Simulator Information"></asp:Label></span>
                        </th>
                        <td>
                        </td>
                    </tr>
            <tr>
            <td style="width:60%">
                <table border="0" cellpadding="6" cellspacing="6" width="100%" class="detailEdit">
                    <tr>
                        <th valign="top" align="left" >
                            <asp:Label ID="Label6" runat="server" Text="Aircraft Type:" ></asp:Label><span
                                class="required"></span>
                        </th>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="183px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th valign="top" align="left" >
                            <asp:Label ID="Label7" runat="server" Text="Simulator Level:"></asp:Label><span
                                class="required"></span>
                        </th>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="183px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th align="left" >
                            <asp:Label ID="Label5" runat="server" Text="Supplier:"></asp:Label>
                           <%-- <span class="required"></span>--%>
                        </th>
                        <td class="detailEditColumn" align="left">
                            <asp:TextBox ID="TextBox4" runat="server" Width="180px" MaxLength="400"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th valign="top" align="left" >
                            <asp:Label ID="lblFormList" runat="server" Text="Calibrated in:"></asp:Label><%--<span
                                class="required"></span>--%>
                        </th>
                        <td>
                            <asp:DropDownList ID="DropDownList9" runat="server" Width="183px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th align="left" >
                            <asp:Label ID="Label2" runat="server" Text="Visual/Display:"></asp:Label>
<%--                            <span class="required"></span>--%>
                        </th>
                        <td class="detailEditColumn" align="left">
                            <asp:TextBox ID="TextBox1" runat="server" Width="180px" MaxLength="400"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th align="left" >
                            <asp:Label ID="Label3" runat="server" Text="Motion axis:"></asp:Label>
<%--                            <span class="required"></span>--%>
                        </th>
                        <td class="detailEditColumn" align="left">
                            <asp:TextBox ID="TextBox2" runat="server" Width="180px" MaxLength="400"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th align="left" >
                            <asp:Label ID="Label4" runat="server" Text="Civil Aviation Authority Approval:" Width="190px"></asp:Label>
                        </th>
                        <td class="detailEditColumn" align="left">
                            <asp:TextBox ID="TextBox3" runat="server" Width="180px" MaxLength="100"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th align="left" >
                            <asp:Label ID="Label9" runat="server" Text="Civil Aviation Approval Date:" Width="190px"></asp:Label>
                        </th>
                        <td class="detailEditColumn" align="left">
                            <dx:ASPxDateEdit ID="ASPxDateEdit1" runat="server" Width="183px">
                            </dx:ASPxDateEdit>
                        </td>
                    </tr>
                    <tr>
                        <th align="left" >
                            <asp:Label ID="Label10" runat="server" Text="Enter Service Date:" Width="190px"></asp:Label>
                        </th>
                        <td class="detailEditColumn" align="left">
                            <dx:ASPxDateEdit ID="ASPxDateEdit2" runat="server" Width="183px">
                            </dx:ASPxDateEdit>
                        </td>
                    </tr>
                    <tr>
                        <th align="left" >
                            <asp:Label ID="Label11" runat="server" Text="Withdrawn From Service Date:" Width="190px"></asp:Label>
                        </th>
                        <td class="detailEditColumn" align="left">
                            <dx:ASPxDateEdit ID="ASPxDateEdit3" runat="server" Width="183px">
                            </dx:ASPxDateEdit>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
            <table border="0" cellpadding="6" cellspacing="6" width="100%" class="detailEdit">
                    <tr>
                        <th valign="top" align="left" >
                            <asp:Label ID="lblDesc" runat="server" Text="Address:" ></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Width="100%" Height="95px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <th align="left" >
                            <asp:Label ID="Label12" runat="server" Text="Contact number:" Width="100"></asp:Label>
                          <%--  <span class="required"></span>--%>
                        </th>
                        <td class="detailEditColumn" align="left">
                            <asp:TextBox ID="TextBox6" runat="server" Width="100%" MaxLength="400"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th valign="top" align="left" >
                            <asp:Label ID="Label8" runat="server" Text="Remarks:"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="100%" Height="95px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            </tr>
              </table>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>