using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspTpValidation
{
    public partial class Resume : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void FonctionValidation(object source, ServerValidateEventArgs args)
        {
            int valeur = int.Parse(args.Value);
            args.IsValid=((valeur%2)!= 0);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}