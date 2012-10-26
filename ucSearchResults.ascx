<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucSearchResults.ascx.cs" Inherits="Pelesys.Scheduling.Web.Controls.ucSearchResults" %>
 <div id="SearchResult" class="ResultWindowPanel"> 
 <asp:UpdatePanel ID="UpdatePanel2" runat="server"> 
 <ContentTemplate>
  <table width="100%" style="height: 25px; z-index:999;" border="0" cellpadding="6" cellspacing="6" class="detailEdit" >
        <tr>
            <td  align="left" >
                <asp:Label ID="Label1" runat="server" Text="Search Results:"></asp:Label>   
            </td>
               <td></td>
                  <td align="right">
                      <asp:ImageButton ID="ImageButton2" runat="server"   ImageAlign="Top" ImageUrl="~/images/blueminus.gif"  OnClientClick="resize('searchResultWidnow', true); return false; " />
                    
                      <asp:ImageButton ID="ImageButton1" runat="server"   ImageUrl="~/images/fancy_close.png"     OnClientClick="EFormShowPanel(false, 'searchResultWidnow'); return false;" />
                  </td>
        </tr>
         </table>
         <div id="GridviewList">
         <table width="100%" style="height: 100%; z-index:999;" border="0" cellpadding="6" cellspacing="6" class="detailEdit" >  
        <tr valign="top">
            <td colspan="3"> 
                    <div style=" height: 520px; width: 100%; border: 1px solid lightgray; overflow: auto;  ">
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

                                                                     <dx:GridViewDataHyperLinkColumn  Caption="Equipment" VisibleIndex="2">
                                                                        <DataItemTemplate>
                                                                            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text=" Airbus 322">
                                                                            </dx:ASPxLabel>
                                                                        </DataItemTemplate>
                                                                     </dx:GridViewDataHyperLinkColumn>
                                                                     
                                                                      <dx:GridViewDataHyperLinkColumn  Caption="Job Role" VisibleIndex="3">
                                                                        <DataItemTemplate>
                                                                            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Job Role">
                                                                            </dx:ASPxLabel>
                                                                        </DataItemTemplate>
                                                                     </dx:GridViewDataHyperLinkColumn>


                                                                       <dx:GridViewDataHyperLinkColumn  Caption="Group" VisibleIndex="4">
                                                                        <DataItemTemplate>
                                                                            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text=" Traing Group A">
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
                                                                      

                                                                    </Columns>
                                                                    <Settings ShowGroupPanel="False" />
                                                                    <SettingsBehavior AllowFocusedRow="False" />
                                                                     <Settings GridLines="Vertical" />
                                                                     <Styles>
                                                                        <AlternatingRow Enabled="true" />
                                                                    </Styles>
                                                                      <SettingsPager PageSize="20">
                                                                        <PageSizeItemSettings Visible="true"  ShowAllItem="true" />
                                                                    </SettingsPager>
                                                                    </dx:ASPxGridView>

                                        </div>

                    </div>
                
            </td>
        </tr>
      <tr>
            <td   colspan="3"  align="right">
                            <asp:Button ID="Button2" runat="server" CssClass="refresh" ToolTip="Search" Text="OK"
                                                                                SkinID="bntMiddle" />  &nbsp;
                                <asp:Button ID="Button1" runat="server" CssClass="refresh" ToolTip="Search" Text="Cancel"
                                                                                SkinID="bntMiddle" />  &nbsp;&nbsp;&nbsp;
            </td>
      </tr>
    </table>  
    </div>
    </ContentTemplate>
 </asp:UpdatePanel>
</div>
