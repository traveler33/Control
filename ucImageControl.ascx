<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucImageControl.ascx.cs"
    Inherits="eForm.Controls.ucImageControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<script type="text/javascript">
	    $(document).ready(function () {
	       
	        $('#<%= this.ClientID %>').fancybox({
	            'overlayShow': true,
	            'transitionIn': 'elastic',
	            'transitionOut': 'elastic',
                'padding': 0,
                'zoomOpacity': true,
                'zoomSpeedIn': 500,
                'zoomSpeedOut': 500,

	        });

	     
	    });
  

    $(document).ready(function () {
	       
	        $('#UploadFile<%= this.ClientID %>').fancybox({
	            'overlayShow': true,
	            'transitionIn': 'elastic',
	            'transitionOut': 'elastic',
                'width': 600, 
                'height': 142, 
                'padding': 6,
                'zoomOpacity': true,
                'zoomSpeedIn': 500,
                'zoomSpeedOut': 500,
                'type': 'iframe' 

	        });

	     
	    });
  function EformOpenImageEnLarge(CliendID) {

     // alert(CliendID);
      $('#' + CliendID).trigger('click');
}

</script>
<div style="display: block; visibility: visible;">
    <table border="0" cellpadding="1" cellspacing="1">
        <tr>
            <td align="right">
                <img id="ImageLoad<%= this.ClientID %>" height="<%=this.sHeight %>" width="<%=this.sWidth %>"
                     alt="<%=this.UploadToolTip %>" onclick="document.getElementById('<%=this.ImageEnlarge.ClientID %>').src = document.getElementById('ImageLoad<%= this.ClientID %>').src;EformOpenImageEnLarge('<%=this.ClientID %>'); return false "
                    src="<%=this.ImagePath %>" style="border-width: 0px; cursor: hand;" />
            </td>
            <td valign="bottom">
                <% if (IsAllowFileUpload)  %>
                <% { %>
              
                        <a id="UploadFile<%= this.ClientID %>" href="FileUpload.aspx?ImageClientID=ImageLoad<%= this.ClientID %>&ImageHiddenPath=<%=this.HidImagePath.ClientID %>">
                            <img id="Img1" alt="<%=UploadTooptip %>" src="<%= UploadIcon %>" style="border-width: 0px;
                                cursor: hand;" /></a>
                   
                <% } %>
                <asp:HiddenField ID="HidImagePath" runat="server" />
            </td>
        </tr>
    </table>
</div>
<a id="<%= this.ClientID %>" href="#eformEnlargeImage<%= this.ClientID %>" title="" style="display: none;">
    Inline</a>
<div style="display: none;">
    <div id="eformEnlargeImage<%= this.ClientID %>" style="overflow: auto; padding: 1px; background-color: black;
        max-height: 600px; max-width: 1000px;">
        <asp:Image ID="ImageEnlarge" runat="server" />
    </div>
</div>
