using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormsASPNET.Dao;

namespace WebFormsASPNET
{
    public partial class CadastroCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            clientes objClientes = new clientes();
            objClientes.id = 1;
            objClientes.cnpj = txtCNPJ.Text;
            objClientes.razao_social = txtRazaoSocial.Text;

            ClienteDao cliedao = new ClienteDao();
            cliedao.CadastrarCliente(objClientes);

            gridCliente.DataBind();
        }
    }
}