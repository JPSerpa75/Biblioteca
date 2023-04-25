<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Biblioteca.Pages.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="form">
            
            <label>Nome:</label>
            <asp:TextBox ID="txtNome" runat="server" class="form-control" ></asp:TextBox>
            <asp:Button class="btn btn-primary" ID="btnFiltrar" runat="server" Text="Buscar" OnClick="btnFiltrar_Click" /> 

        </div>
    
        <p id="txtObservacao" class="text-center">*Para uma busca completa deixe os campos em branco</p>

        <asp:GridView ID="gvUsuarios" runat="server" CellPadding="4" CellSpacing="4" HorizontalAlign="Center" Width="700px">
            <HeaderStyle Height="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
            <RowStyle Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>

    </div>

</asp:Content>
