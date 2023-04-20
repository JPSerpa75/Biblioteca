using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Biblioteca.Pages
{
    public partial class Devolucao : System.Web.UI.Page
    {
        private int? retorno;

        protected void Carregar_Emprestimos(string nomeLivro, string nomeUser)
        {
            BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter ta = new BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter();
            BibliotecaDS.buscaEmprestimoDataTable dt = ta.GetEmprestimo(nomeLivro, nomeUser);
            GvDevolucao.DataSource = dt;
            GvDevolucao.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Carregar_Emprestimos("", "");
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {

            Carregar_Emprestimos(txtLivro.Text, txtNome.Text);

        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Button btn = new Button();
                btn.Text = "Apagar";
                btn.CommandName = "Apagar";
                btn.CommandArgument = e.Row.RowIndex.ToString();
                btn.Click += new EventHandler(btn_Click);
                e.Row.Cells[4].Controls.Add(btn);
            }
        }

        void btn_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            GridViewRow row = btn.NamingContainer as GridViewRow;
            string index = btn.CommandArgument;
            BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter ta = new BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter();
            BibliotecaDS.buscaEmprestimoDataTable dt = ta.DropEmprestimo(txtIsbn.ToString() , txtDpi.ToString(), ref(retorno));
            GvDevolucao.DataSource = dt;
            GvDevolucao.DataBind();

        }

    }
}