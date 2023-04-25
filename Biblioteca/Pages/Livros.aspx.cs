using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Biblioteca.Pages
{
    public partial class Livros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            var livro = txtLivro.Text;
            var autor = txtAutor.Text;
            var genero = txtGen.Text;

            BibliotecaDSTableAdapters.buscaLivroTableAdapter ta = new BibliotecaDSTableAdapters.buscaLivroTableAdapter();
            BibliotecaDS.buscaLivroDataTable bb = ta.GetLivro(livro, autor, genero);
            gvLivros.DataSource = bb;
            gvLivros.DataBind();
        }

    }
}