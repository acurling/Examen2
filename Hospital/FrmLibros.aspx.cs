using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital
{
    public partial class FrmLibros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BIngresar_Click(object sender, EventArgs e)
        {
            SqlLibros.Insert();
        }

        protected void Bborrar_Click(object sender, EventArgs e)
        {
            SqlLibros.Delete();
        }


    }
}