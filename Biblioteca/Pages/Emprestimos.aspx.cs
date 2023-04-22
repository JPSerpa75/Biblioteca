using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Biblioteca.Pages
{
    public partial class Emprestimos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEmprestimo_Click(object sender, EventArgs e)
        {
            int? resposta = null;

            BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter ta = new BibliotecaDSTableAdapters.buscaEmprestimoTableAdapter();
            ta.SetEmprestimo(txtISBN.Text, txtDPI.Text, ref resposta);

            Response.Write("resposta = " + resposta);

            if(resposta == 0)
            {
                txtResposta.InnerText = "EMPRESTIMO EFETUADO COM SUCESSO";
            }else if( resposta == 1)
            {
                txtResposta.InnerText = "Erro: Usuário não existe";
            }else if( resposta == 2)
            {
                txtResposta.InnerText = "Erro: Livro não existe";
            }else if( resposta == 3)
            {
                txtResposta.InnerText = "Erro: Livro já está emprestado";
            }
        }
    }
}