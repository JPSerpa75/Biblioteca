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
        public int? respostaFalha;
        protected void Carregar_Emprestimos(string nomeLivro, string nomeUser)
        {
            BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter ta = new BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter();
            BibliotecaDS.buscaEmprestimoDataTable dt = ta.GetEmprestimo(nomeLivro, nomeUser);
            lvEmprestimos.DataSource = dt;
            lvEmprestimos.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Carregar_Emprestimos("", "");
                txtResposta.InnerText = "";
            }
               
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {

            Carregar_Emprestimos(txtLivro.Text, txtNome.Text);
            txtResposta.InnerText = "";

        }

        protected void btnExcluir_Command(object sender, CommandEventArgs e)
        {
            string[] valor = e.CommandArgument.ToString().Split(',');
            var dpi = valor[1];
            var isbn = valor[0];
            BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter ta = new BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter();
            int retorno = ta.DropEmprestimo(isbn, dpi, respostaFalha: ref respostaFalha);
            if (retorno == 1) txtResposta.InnerText = "DEVOLUÇÃO EFETUADA COM SUCESSO";
            else txtResposta.InnerText = "Não foi possível realizar a devolução, entre em contato com o administrador!";
            txtResposta.Style["display"] = "block";
            Carregar_Emprestimos("", "");
        }
    }
}