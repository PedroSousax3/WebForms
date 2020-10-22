<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="Scripts/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(document).ready(
            function ($) {
                $("#btnSubmeter").click(function (e) {
                    e.preventDefault();
                    let item = $("#TextBox1")[0].style;
                    if (item.display == "none") {
                        item.display = "block";
                        window.scrollBy(0, 1000);
                    }
                    else
                        item.display = "none";
                    console.log(item);
                })
            }
        );
    </script>

    <style type="text/css">
        .defaultText
        {
    	    font-style:italic;
    	    color:#CCCCCC;
        }

        #btnSubmeter {
            position: fixed;
            right: 0;
            bottom: 0;
        }
    </style>

    <h2><%: Title %>.</h2>

    <div>
        <div>
           <fieldset style="width:400px;height:80px;">
            <p>
                <div style="display: none;margin-top: 100vh; " id="TextBox1">Informe seu critério de busca</div>
                <button id="btnSubmeter">Procurar</button>
            </p>
           </fieldset>
        </div>
    </div>
    
</asp:Content>
