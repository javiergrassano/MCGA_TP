using MCGA_TP.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MCGA_TP
{
    public partial class TP2 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnWS_Click(object sender, EventArgs e)
        {
            msgError.Visible = false;
            try
            {
                int L = int.Parse(inputL.Text);
                int Ck = int.Parse(inputCK.Text);
                int td = int.Parse(inputTD.Text);

                ws.tp2 proxyws = new ws.tp2();
                double K = proxyws.CalcularPutman(L, Ck, td);
                resultK.Text = K.ToString();
            }
            catch(Exception err)
            {
                msgError.Visible = true;
                msgError.InnerText = err.Message;
            }
        }

    }
}