<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Nome Completo: "></asp:Label>
        <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="E-mail: "></asp:Label>
        <asp:TextBox ID="TextBox2" type="email" class="form-control" runat="server"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Número de CPF: "></asp:Label>
        <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="Nome de Usuario: "></asp:Label>
        <asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Senha: "></asp:Label>
        <asp:TextBox ID="TextBox5" type="password" class="form-control" runat="server"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="Senha: "></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    </div>

    <div>
        <asp:Button ID="Cadastrar" runat="server" Text="Cadastrar" OnClick="Cadastrar_Click" />
    </div>

</asp:Content>
