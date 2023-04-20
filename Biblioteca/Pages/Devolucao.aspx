<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Devolucao.aspx.cs" Inherits="Biblioteca.Pages.Devolucao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style="margin-top: 3%">
        <div class="col-12">
            <span>Nome do usuário:</span>
            <asp:TextBox ID="txtNome" runat="server" class="form-control" Style="margin-bottom: 1%"></asp:TextBox>

            <span>Nome do livro:</span>
            <asp:TextBox ID="txtLivro" runat="server" class="form-control"></asp:TextBox>

            <asp:Button ID="btnFiltrar" runat="server" Text="Filtar" class="btn btn-primary mt-4" Style="margin-top: 5px" />
        </div>

    </div>
    <asp:GridView ID="GvDevolucao" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="579px" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="LIVRO" HeaderText="LIVRO" SortExpression="LIVRO" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" id="txtIsbn" />
            <asp:BoundField DataField="USUARIO" HeaderText="USUARIO" SortExpression="USUARIO"/>
            <asp:BoundField DataField="DPI" HeaderText="DPI" SortExpression="DPI" id="txtDpi"/>
            <asp:CommandField ShowEditButton="False" ShowDeleteButton="False" />
        </Columns>

        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>

</asp:Content>
