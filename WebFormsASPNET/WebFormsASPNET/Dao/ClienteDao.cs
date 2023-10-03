using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormsASPNET.Dao
{
    public class ClienteDao
    {
        public void CadastrarCliente(clientes objCliente)
        {
            using (webforms_vsEntities ctx = new webforms_vsEntities())
            {
                ctx.clientes.Add(objCliente);
                ctx.SaveChanges();
            }
        }
    }
}