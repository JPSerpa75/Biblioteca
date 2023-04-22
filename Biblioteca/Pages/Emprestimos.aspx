<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Emprestimos.aspx.cs" Inherits="Biblioteca.Pages.Emprestimos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="form">

            <label>DPI do usuário:</label>
            <asp:TextBox ID="txtDPI" runat="server" class="form-control"></asp:TextBox>

            <label>ISBN do livro:</label>
            <asp:TextBox ID="txtISBN" runat="server" class="form-control"></asp:TextBox>

            <asp:Button class="btn btn-primary" ID="btnEmprestimo" runat="server" Text="Emprestar" OnClick="btnEmprestimo_Click" />

        </div>

            <p id="txtResposta" runat="server" onclick="escondeTexto()"></p>


    </div>

    <script>

        function escondeTexto() {
            document.getElementById("MainContent_txtResposta").style.display = "none"
        }


        var inputDPI = document.getElementById("MainContent_txtDPI");
        var inputISBN = document.getElementById("MainContent_txtISBN");


        inputDPI.addEventListener("keypress", function (e) {
            var keycode = (e.keyCode ? e.keyCode : e.wich)


            if (keycode < 48 || keycode > 58) {
                e.preventDefault();
            }

        })

        inputISBN.addEventListener("keypress", function (e) {
            var keycode = (e.keyCode ? e.keyCode : e.wich)

            console.log(keycode)
            if (keycode < 48 || keycode > 58) {

                e.preventDefault();
            }

        })


    </script>

</asp:Content>
