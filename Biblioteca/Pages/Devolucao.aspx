<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Devolucao.aspx.cs" Inherits="Biblioteca.Pages.Devolucao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Content/style.css" rel="stylesheet" />
    <div class="container">
        <div class="container-main">
            <div class="content">
                <span>Nome do usuário:</span>
                <asp:TextBox ID="txtNome" runat="server" class="form-control" Style="margin-bottom: 1%"></asp:TextBox>
                <span>Nome do livro:</span>
                <asp:TextBox ID="txtLivro" runat="server" class="form-control"></asp:TextBox>
                <asp:Button ID="btnFiltrar" runat="server" Text="Filtar" OnClick="btnFiltrar_Click" class="btn btn-primary mt-4" Style="margin-top: 5px" />
                <p id="txtObservacao" class="text-center">*Para uma busca completa deixe o campo em branco</p>
                <p runat="server" class="text-center" id="txtResposta" onclick="esconderCampo()"></p>
            </div>
        </div>
    </div>

    <div class="container mt-4 w-50" runat="server">

        <h3 class="text-center mb-2">EMPRÉSTIMOS ATIVOS</h3>

        <table class="table m-auto table-hover table-bordered text-center m-auto">
            <thead class="thead-dark">
                <tr>
                    <td><b>LIVRO</b></td>
                    <td><b>ISBN</b></td>
                    <td><b>USUÁRIO</b></td>
                    <td><b>DPI</b></td>
                    <td colspan="3"><b>EXCLUIR</b></td>
                </tr>
            </thead>
            <asp:ListView ID="lvEmprestimos" runat="server">
                <ItemTemplate>
                    <tr runat="server">
                        <td><%# Eval("LIVRO")%></td>
                        <td><%# Eval("ISBN")%></td>
                        <td><%# Eval("USUARIO")%></td>
                        <td><%# Eval("DPI")%></td>
                        <td>
                            <asp:ImageButton
                                runat="server"
                                ID="btnExcluir"
                                ImageUrl="../Images/dropIcon.png"
                                ToolTip="Excluir"
                                OnCommand="btnExcluir_Command"
                                Style="width: 20px;"
                                CommandArgument='<%# Eval("ISBN") + "," + Eval("DPI") %>'
                                CommandName="Excluir" />
                        </td>
                    </tr>

                </ItemTemplate>
                <EmptyDataTemplate>
                    Não existe emprestimo cadastrado!
                </EmptyDataTemplate>
            </asp:ListView>
        </table>
    </div>
    <script type="text/javascript">
        function esconderCampo() {
            document.getElementById('MainContent_txtResposta').style.display = "none";
        }
    </script>

    <style>
        .container {
        }

        .container-main {
            display: flex;
            justify-content: center;
            margin-top: 2em;
        }
        #MainContent_btnFiltrar{
           width:100%;
        }
        #MainContent_txtResposta{
            color: red;
            font-size: 24px;
            margin: 2em 0em;
        }
        #txtObservacao{
            color: red;
            font-weight: bolder;
            margin: 2em 0em;
        }
    </style>
</asp:Content>
