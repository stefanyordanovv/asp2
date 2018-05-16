<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InsertNews.aspx.cs" Inherits="pages_administrator_InsertNews" %>

<%@ Register TagPrefix ="my" TagName="Insert" Src="~/moduls/administrator/InsertNews.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Menu" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <my:Insert  ID="Insert" runat="server"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>

