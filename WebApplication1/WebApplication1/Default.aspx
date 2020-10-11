<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Usuario: "></asp:Label>
        <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Senha: "></asp:Label>
        <asp:TextBox ID="TextBox2" class="form-control" runat="server" TextMode ="password"></asp:TextBox>
    </div>

    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
</asp:Content>
