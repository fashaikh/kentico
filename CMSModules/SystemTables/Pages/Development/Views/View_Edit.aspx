<%@ Page Language="C#" MasterPageFile="~/CMSMasterPages/UI/SimplePage.master" AutoEventWireup="true" Inherits="CMSModules_SystemTables_Pages_Development_Views_View_Edit"
    Title="Class - Edit - Query" Theme="Default" CodeFile="View_Edit.aspx.cs" %>

<%@ Register Src="~/CMSModules/SystemTables/Controls/Views/SQLEdit.ascx" TagName="SQLEdit" TagPrefix="cms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="plcContent" runat="Server">
    <asp:Label ID="lblError" runat="server" CssClass="ErrorLabel" EnableViewState="false" Visible="false" />
    <asp:Label ID="lblInfo" runat="server" CssClass="InfoLabel" EnableViewState="false" Visible="false" />
    <cms:SQLEdit ID="editSQL" Visible="true" runat="server" DevelopmentMode="true" />
</asp:Content>
