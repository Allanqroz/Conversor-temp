using System;
using System.Web.UI;

namespace Teste_C
{
    public partial class Teste : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Execute apenas na primeira carga da página
            {
                if (Session["Tema Escuro"] != null && Session["Tema Escuro"].ToString() == "true")
                {
                    Body.Attributes.Add("class", "tema-escuro");
                }
                else
                {
                    Body.Attributes.Add("class", "tema-claro");
                }
            }
        }

        protected void Button1_click(object sender, EventArgs e)
        {
            // Lógica de conversão de temperatura
            int temperatura = Convert.ToInt32(TextBox1.Text);
            string opcao = RadioButtonList.SelectedValue;
            if (opcao == "C")
            {
                double temperatura_f = Math.Round(temperatura * 1.8 + 32, 2);
                int temperatura_k = temperatura + 273;
                Resultado1.Text = ($"O valor dessa temperatura em F : {temperatura_f}");
                Resultado2.Text = ($"O valor dessa temperatura em K : {temperatura_k}");
            }
            else if (opcao == "F")
            {
                double temperatura_c = Math.Round(5.0 / 9.0 * (temperatura - 32), 2);
                double temperatura_k = Math.Round((temperatura - 32) * 5.0 / 9.0 + 273, 2);
                Resultado1.Text = ($"O valor dessa temperatura em °C : {temperatura_c}");
                Resultado2.Text = ($"O valor dessa temperatura em K : {temperatura_k}");
            }
            else // K
            {
                int temperatura_c = temperatura - 273;
                double temperatura_f = Math.Round((temperatura - 273) * 1.8 + 32, 2);
                Resultado1.Text = ($"O valor dessa temperatura em °C : {temperatura_c}");
                Resultado2.Text = ($"O valor dessa temperatura em F : {temperatura_f}");
            }
        }

        protected void Button2_click(object sender, EventArgs e)
        {
            // Alterna o tema escuro
            if (Session["Tema Escuro"] == null || Session["Tema Escuro"].ToString() == "false")
            {
                Session["Tema Escuro"] = "true";
            }
            else
            {
                Session["Tema Escuro"] = "false";
            }
            Response.Redirect(Request.RawUrl); // Recarregar a página
        }
    }
}
