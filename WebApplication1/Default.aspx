<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Movie Store</h1>
        <p class="lead">Rent movies</p>
        <p><a href="https://trakt.tv/users/sluttyone" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <h2>AVAILABLE MOVIES</h2>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <LayoutTemplate>
              <table cellpadding="2" width="640px" border="1" runat="server" id="tblProducts">
                <tr runat="server">
                  <th runat="server">Title</th>
                  <th runat="server">Year</th>
                  <th runat="server">Director</th>
                  <th runat="server">Genre</th>
                </tr>
                <tr runat="server" id="itemPlaceholder" />
              </table>
            </LayoutTemplate>
            <ItemTemplate>
              <tr runat="server">
                <td>
                  <asp:Label ID="MovieTitle" runat="Server" Text='<%#Eval("Title") %>' />
                </td>
                <td>
                  <asp:Label ID="YearLabel" runat="Server" Text='<%#Eval("Year") %>' />
                </td>
                <td valign="top">
                  <asp:Label ID="DirectorLabel" runat="Server" Text='<%#Eval("Director") %>' />
                </td>
                <td>
                  <asp:Label ID="GenreLabel" runat="server" Text='<%#Eval("Genre") %>' />
                </td>
              </tr>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [Year], [Director], [Genre] FROM [Movies]"></asp:SqlDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
        <p>
            
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>GAME OF THRONES</h2>
            <p>
                Nine noble families fight for control over the mythical lands of Westeros, while a forgotten race returns after being dormant for thousands of years.
            </p>
            <p>
                <a class="btn btn-default" href="http://www.imdb.com/title/tt0944947/">IMDB &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>JESSICA JONES</h2>
            <p>
                Following the tragic end of her brief superhero career, Jessica Jones tries to rebuild her life as a private investigator, dealing with cases involving people with remarkable abilities in New York City.
            </p>
            <p>
                <a class="btn btn-default" href="http://www.imdb.com/title/tt2357547/">IMDB &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>THE GIFTED</h2>
            <p>
                In a world where mutated humans are treated with distrust and fear, an institute for mutants battles to achieve peaceful co-existence with humanity.
            </p>
            <p>
                <a class="btn btn-default" href="http://www.imdb.com/title/tt4396630/">IMDB &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
