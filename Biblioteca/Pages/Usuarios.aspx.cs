using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Biblioteca.Pages
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            BibliotecaDSTableAdapters.buscaUsuarioTableAdapter ta = new BibliotecaDSTableAdapters.buscaUsuarioTableAdapter();
            BibliotecaDS.buscaUsuarioDataTable bb = ta.GetUsuario(txtNome.Text);
            gvUsuarios.DataSource = bb;
            gvUsuarios.DataBind();
        }

    }
}