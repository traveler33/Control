<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucImageControl.ascx.cs"
    Inherits="eForm.Controls.ucImageControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>



<div style="display: block; visibility: visible;">
    <table border="0" cellpadding="1" cellspacing="1">
        <tr>
            <td align="right">
                <img id="ImageLoad<%= this.ClientID %>" height="<%=this.sHeight %>" width="<%=this.sWidth %>"
                     alt="<%=this.UploadToolTip %>" onclick="EformOpenImageEnLarge('<%=this.ClientID %>'); return false "
                    src="<%=this.ImagePath %>" style="border-width: 0px; cursor: hand;" />
            </td>
            <td valign="bottom">
                <% if (IsAllowFileUpload)  %>
                <% { %>
              
                        <a id="UploadFile" href="FileUpload.aspx?ImageClientID=ImageLoad<%= this.ClientID %>&ImageHiddenPath=<%=this.HidImagePath.ClientID %>">
                            <img id="Img1" alt="<%=UploadTooptip %>" src="<%= UploadIcon %>" style="border-width: 0px;
                                cursor: hand;" /></a>
                   
                <% } %>
                <asp:HiddenField ID="HidImagePath" runat="server" />
            </td>
        </tr>
    </table>
</div>
<a id="EnlargeImage" href="#eformEnlargeImage<%= this.ClientID %>" title="" style="display: none;">
    Inline</a>
<div style="display: none;">
    <div id="eformEnlargeImage<%= this.ClientID %>" style="overflow: auto; padding: 1px; background-color: black;
        max-height: 600px; max-width: 1000px;">
        <asp:Image ID="ImageEnlarge" runat="server" />
    </div>
</div>
