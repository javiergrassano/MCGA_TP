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
    public partial class TP1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSession_Click(object sender, EventArgs e)
        {
            EcuacionPutnam ecuacionPutnam = new EcuacionPutnam();
            ecuacionPutnam.L = int.Parse(inputL.Text);
            ecuacionPutnam.Ck = int.Parse(inputCK.Text);
            ecuacionPutnam.tdMonth = int.Parse(inputTD.Text);
            Session["Ecuacion"] = ecuacionPutnam;
            Response.Redirect("tp1result.aspx?t=session");
        }

        protected void btnCookie_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("local.uai.ecuacionputman");
            cookie.Values.Add("L", inputL.Text);
            cookie.Values.Add("CK", inputCK.Text);
            cookie.Values.Add("TD", inputTD.Text);
            cookie.Expires = DateTime.MaxValue;
            Response.SetCookie(cookie);
            Response.Redirect("tp1result.aspx?t=cookie");
        }

    }
}