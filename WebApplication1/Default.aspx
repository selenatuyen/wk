<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Movie Store</h1>
        <p class="lead">Rent movies</p>
        <p><a href="https://trakt.tv/users/sluttyone" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
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
