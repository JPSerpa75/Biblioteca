<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Livros.aspx.cs" Inherits="Biblioteca.Pages.Livros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="form">
            
            <label>Nome do livro:</label>
            <asp:TextBox ID="txtLivro" runat="server" class="form-control"></asp:TextBox> 
            <label>Nome do autor:</label>
            <asp:TextBox ID="txtAutor" runat="server" class="form-control"></asp:TextBox>
            <label>Gênero:</label>
            <asp:TextBox ID="txtGen" runat="server" class="form-control"></asp:TextBox>
            <asp:Button class="btn btn-primary" ID="btnFiltrar" runat="server" Text="Buscar" OnClick="btnFiltrar_Click" />
        </div>

        <p id="txtObservacao" class="text-center">*Para uma busca completa deixe os campos em branco</p>
    
        <asp:GridView ID="gvLivros" runat="server" AutoGenerateColumns="False" BorderColor="#CCCCCC" HeaderStyle-HorizontalAlign="Center" Width="1100px" CellPadding="4" CellSpacing="4" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="livro" HeaderText="LIVRO" />
            <asp:BoundField DataField="autor" HeaderText="AUTOR" />
            <asp:BoundField DataField="isbn" HeaderText="ISBN" />
            <asp:BoundField DataField="genero" HeaderText="GÊNERO" />
            <asp:BoundField DataField="status" HeaderText="STATUS" />
        </Columns>

            <HeaderStyle Height="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
            <RowStyle Height="40px" HorizontalAlign="Center" />

        </asp:GridView>
    </div>

</asp:Content>
