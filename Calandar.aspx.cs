using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspTpValidation
{
    public partial class Calandar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.Items.Add("--Choisir Un Module");
                DropDownList1.Items.Add("Metier et Formation");
                DropDownList1.Items.Add("Maths Appliquee");
                DropDownList1.Items.Add("Configuration Un Routeur");
                DropDownList1.Items.Add("Instalation D'un post de travaile");
                DropDownList1.Items.Add("Analyse coneption POO");
                DropDownList1.Items.Add("Algorithmes");
                DropDownList1.Items.Add("ADO.NET");
                DropDownList1.Items.Add("SGBDII");
                DropDownList1.Items.Add("LangageC");
                DropDownList1.Items.Add("Gestion de Temps");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DateTime d = DateTime.Parse("10/03/2016 00:00:00");
            int x = DropDownList1.SelectedIndex + 1;
            switch (x) {
                case 2: Calendar1.VisibleDate = DateTime.Parse("16/02/2016 00:00:00"); Calendar1.SelectedDate = DateTime.Parse("16/02/2016 00:00:00"); break;
                case 3: Calendar1.SelectedDate = DateTime.Parse("16/02/2016 00:00:00"); Calendar1.VisibleDate = DateTime.Parse("16/02/2016 00:00:00"); break;
                case 4: Calendar1.SelectedDate = DateTime.Parse("17/02/2016 00:00:00"); Calendar1.VisibleDate = DateTime.Parse("17/02/2016 00:00:00"); break;
                case 5: Calendar1.SelectedDate = DateTime.Parse("17/02/2016 00:00:00"); Calendar1.VisibleDate = DateTime.Parse("17/02/2016 00:00:00"); break;
                case 6: Calendar1.SelectedDate = DateTime.Parse("23/02/2016 00:00:00"); Calendar1.VisibleDate = DateTime.Parse("23/02/2016 00:00:00"); break;
                case 7: Calendar1.SelectedDate = DateTime.Parse("23/02/2016 00:00:00"); Calendar1.VisibleDate = DateTime.Parse("23/02/2016 00:00:00"); break;
                case 8: Calendar1.SelectedDate = DateTime.Parse("24/02/2016 00:00:00"); Calendar1.VisibleDate = DateTime.Parse("24/02/2016 00:00:00"); break;
                case 9: Calendar1.SelectedDate = DateTime.Parse("24/02/2016 00:00:00"); Calendar1.VisibleDate = DateTime.Parse("24/02/2016 00:00:00"); break;
                case 10: Calendar1.SelectedDate = DateTime.Parse("08/03/2016 00:00:00"); Calendar1.VisibleDate = DateTime.Parse("08/03/2016 00:00:00"); break;
                case 11: Calendar1.SelectedDate = DateTime.Parse("08/03/2016 00:00:00"); Calendar1.VisibleDate = DateTime.Parse("08/03/2016 00:00:00"); break;
                   
            }
            Label1.Text = Calendar1.SelectedDate.ToString();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = Calendar1.SelectedDate.ToString();
            string x = Calendar1.SelectedDate.ToString();
            switch (x)
            {
                case "16/02/2016 00:00:00": Label2.Text = "Liste des Examen:<br/> Metier <br/> Formation Maths Appliquee"; break;
                case "17/02/2016 00:00:00": Label2.Text = "Liste des Examen:<br/> Configuration Un Routeur <br/> Instalation D'un post de travaile"; break;
                case "23/02/2016 00:00:00": Label2.Text = "Liste des Examen:<br/> Analyse coneption POO <br/> Algorithmes"; break;
                case "24/02/2016 00:00:00": Label2.Text = "Liste des Examen:<br/> ADO.NET <br/> SGBDII"; break;
                case "08/03/2016 00:00:00": Label2.Text = "Liste des Examen:<br/> LangageC <br/> Gestion de Temps"; break;
                default: Label2.Text = "pas d'exames"; break;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = DateTime.Parse("16/02/2016");
        }
    }
}