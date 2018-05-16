<%@ Control Language="C#" AutoEventWireup="true" CodeFile="InsertNews.ascx.cs" Inherits="moduls_administrator_InsertNews" %>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h1>Добавяне на новина</h1>

            <asp:Label ID="IblTitle" runat="server" Text="Заглавие"></asp:Label>
            <asp:TextBox ID="TextBox_Title" CssClass="form-control" runat="server"></asp:TextBox>

            <asp:Label ID="IblAuthor" runat="server" Text="Автор"></asp:Label>
            <asp:TextBox ID="TextBox_Author" CssClass="form-control" runat="server"></asp:TextBox>

            <asp:Label ID="IblImage" runat="server" Text="Снимка"></asp:Label>
            <asp:FileUpload ID="FU_Image" runat="server" />

            <asp:Label ID="IblContent" runat="server" Text="Новина"></asp:Label>
            <asp:TextBox ID="TextBox_Content" CssClass="form-control" TextMode="MultiLine" Rows="20" runat="server"></asp:TextBox>

            <asp:Button ID="ButtonInsert" runat="server" Text="Добавяне на новина" OnClick="ButtonInsert_Click" />
        </div>
    </div>
</div>
