<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="pages_news_News" %>

<%@ Register TagPrefix="my" TagName="MainMenu" Src="~/moduls/MainMenu.ascx" %>
<%@ Register TagPrefix="my" TagName="Footer" Src="~/moduls/Footer.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Menu" Runat="Server">
    <my:MainMenu ID="MainMenu" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <!-- Page Content -->
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">News
                    <small><%=DateTime.Now.ToString("dd-MM-yyyy HH:mm:ss") %></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Blog Home Two</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <asp:ListView ID="ListView1" runat="server" DataSourceID="sdsNews">
            <ItemTemplate>
                <div class="row">
            <div class="col-md-1 text-center">
                <p><i class="fa fa-camera fa-4x"></i>
                </p>
                <p>June 17, 2014</p>
            </div>
            <div class="col-md-5">
                <a href="NewsArticle.aspx">
                    <img class="img-responsive img-hover" src="~/template_images/News/News1.jpg" alt="" runat="server"/>
                </a>
            </div>
            <div class="col-md-6">
                <h3>
                    <a href="NewsArticle.aspx"><%# Eval("Title") %></a>
                </h3>
                <p>by <a href="#"><%# Eval("Author") %></a>
                </p>
                <p><%# Eval("Content") %></p>
                <a class="btn btn-primary" href="NewsArticle.aspx">Read More <i class="fa fa-angle-right"></i></a>
            </div>
        </div>
                <hr />
            </ItemTemplate>
        </asp:ListView>

        <!-- Blog Post Row -->
        <asp:SqlDataSource runat="server" ID="sdsNews" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [news] WHERE [Id] = @Id" InsertCommand="INSERT INTO [news] ([title], [content], [author], [createDate], [image]) VALUES (@title, @content, @author, @createDate, @image)" SelectCommand="SELECT * FROM [news]" UpdateCommand="UPDATE [news] SET [title] = @title, [content] = @content, [author] = @author, [createDate] = @createDate, [image] = @image WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="title" Type="String"></asp:Parameter>
                <asp:Parameter Name="content" Type="String"></asp:Parameter>
                <asp:Parameter Name="author" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="createDate"></asp:Parameter>
                <asp:Parameter Name="image" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String"></asp:Parameter>
                <asp:Parameter Name="content" Type="String"></asp:Parameter>
                <asp:Parameter Name="author" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="createDate"></asp:Parameter>
                <asp:Parameter Name="image" Type="String"></asp:Parameter>
                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="row">
            <div class="col-md-1 text-center">
                <p><i class="fa fa-camera fa-4x"></i>
                </p>
                <p>June 17, 2014</p>
            </div>
            <div class="col-md-5">
                <a href="NewsArticle.aspx">
                    <img class="img-responsive img-hover" src="~/template_images/News/News1.jpg" alt="" runat="server"/>
                </a>
            </div>
            <div class="col-md-6">
                <h3>
                    <a href="NewsArticle.aspx">Blog Post Title</a>
                </h3>
                <p>by <a href="#">Start Bootstrap</a>
                </p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                <a class="btn btn-primary" href="NewsArticle.aspx">Read More <i class="fa fa-angle-right"></i></a>
            </div>
        </div>
        <!-- /.row -->

        <hr/>

        
    </div>
    <!-- /.container -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
      <my:Footer ID="Footer" runat="server" />
</asp:Content>

