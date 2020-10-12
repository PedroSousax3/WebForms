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
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
    <asp:GridView ID="GridView1" class="table" runat="server"
        AutoGenerateColumns="false"
        DataKeyNames="id_login"
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
    <br />
    <br />
    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>ColdFusion</asp:ListItem>
        <asp:ListItem>Asp.Net</asp:ListItem>
        <asp:ListItem>PHP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <div>
        <asp:Button ID="Button5" runat="server" Text="Button" OnClientClick="Button_Click2" OnClick="Button5_Click" />
    </div>

    <br />
    <br />
    <asp:CheckBoxList 
            ID="CheckBoxList1"
            runat="server"
            Font-Italic="true"
            Font-Names="Courier New"
            Font-Size="X-Large"
            >
            <asp:ListItem>ColdFusion</asp:ListItem>
            <asp:ListItem>PHP</asp:ListItem>
            <asp:ListItem>JSP</asp:ListItem>
            <asp:ListItem>Asp.Net</asp:ListItem>
            <asp:ListItem>Flex</asp:ListItem>
        </asp:CheckBoxList>

    <div>
        <asp:Button ID="Button2" runat="server" Text="Button" OnClientClick="Button_Click4" />
    </div>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

    <br />
    <br />

    <div>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="Item 1" Value="1"/>
            <asp:ListItem Text="Item 2" Value="2"/>
            <asp:ListItem Text="Item 3" Value="3"/>
            <asp:ListItem Text="Item 4" Value="4"/>
            <asp:ListItem Text="Item 5" Value="5"/>
        </asp:DropDownList>

        <br />
        <asp:Button ID="Button3" runat="server" Text="Button" OnClientClick="Button3_Click" OnClick="Button3_Click" />

        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
