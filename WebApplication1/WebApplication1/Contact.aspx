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

    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server"
        AutoGenerateColumns="false"
        DataKeyNames="ID"
    >
    <Columns>
        <asp:TemplateField HeaderText="ID">
            <ItemTemplate>
                <%#Container.DataItemIndex+1 %> 
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Nome">
            <ItemTemplate>
                <%#Eval("nm_usuario") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Senha">
            <ItemTemplate>
                <%#Eval("ds_senha") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Ultimo Login">
            <ItemTemplate>
                <%#Eval("dt_ultimo_login") %>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    </asp:GridView>
</asp:Content>
