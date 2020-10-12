<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="Scripts/script/JavaScript.js"></script>
    <div class ="form-group">
        <label>Nome: </label>
        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Digite seu nome: " />
    </div>

    <div>
        <button type="button" id="button_mostrar" onclick="mostra_click()" class="btn btn-primary">Mostrar</button>
    </div>

    <label id="texto"></label>
</asp:Content>
