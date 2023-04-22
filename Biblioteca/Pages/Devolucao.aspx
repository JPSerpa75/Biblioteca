<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Devolucao.aspx.cs" Inherits="Biblioteca.Pages.Devolucao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style="margin-top: 3%">
        <div class="col-12">
            <span>Nome do usuário:</span>
            <asp:TextBox ID="txtNome" runat="server" class="form-control" Style="margin-bottom: 1%"></asp:TextBox>

            <span>Nome do livro:</span>
            <asp:TextBox ID="txtLivro" runat="server" class="form-control"></asp:TextBox>
            <asp:Button ID="btnFiltrar" runat="server" Text="Filtar" OnClick="btnFiltrar_Click" class="btn btn-primary mt-4" Style="margin-top: 5px" />
            <p style="color:red; font-weight:bolder">*Para uma busca completa deixe o campo em branco</p>
            <p runat="server" id="txtResposta" visible="false" onclick="javascript:esconderCampo()" style="color:red; font-size:24px"></p>
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
</asp:Content>
