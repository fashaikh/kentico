<%@ Page Title="" Language="C#" Theme="Default" MasterPageFile="~/CMSMasterPages/LiveSite/Dialogs/ModalSimplePage.master"
    AutoEventWireup="true" EnableEventValidation="false" Inherits="CMSFormControls_LiveSelectors_InsertYouTubeVideo_Content"
    CodeFile="Content.aspx.cs" %>

<%@ Register Src="~/CMSAdminControls/UI/PageElements/Help.ascx" TagName="Help" TagPrefix="cms" %>
<%@ Register Src="~/CMSModules/Content/Controls/Dialogs/YouTube/YouTubeProperties.ascx"
    TagName="YouTubeProperties" TagPrefix="cms" %>
<asp:Content ID="Content3" ContentPlaceHolderID="plcContent" runat="Server">
    <div class="PageContent">
        <ajaxToolkit:ToolkitScriptManager runat="server" ID="scriptManager" />
        <cms:YouTubeProperties ID="youTubeProp" runat="server" />
    </div>
</asp:Content>
