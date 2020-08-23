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
    public partial class TP1result : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EcuacionPutnam ecuacionPutnam = new EcuacionPutnam();
            string tipo = Request.QueryString["t"] ?? "";
            switch (tipo)
            {
                case "session":
                    ecuacionPutnam = (EcuacionPutnam)Session["Ecuacion"];
                    break;
                case "cookie":
                    try
                    {
                        string l = Request.Cookies["local.uai.ecuacionputman"]["L"];
                        string ck = Request.Cookies["local.uai.ecuacionputman"]["CK"];
                        string td = Request.Cookies["local.uai.ecuacionputman"]["TD"];
                        ecuacionPutnam.L = int.Parse(l);
                        ecuacionPutnam.Ck = int.Parse(ck);
                        ecuacionPutnam.tdMonth = int.Parse(td);
                        Response.Cookies.Remove("local.uai.ecuacionputman");
                    }
                    catch
                    {
                        Response.Redirect("TP1.aspx");
                    }
                    break;
                default:
                    Response.Redirect("TP1.aspx");
                    break;
            }
            ecuacionPutnam.Evaluar();

            inputL.Text = ecuacionPutnam.L.ToString();
            inputCK.Text = ecuacionPutnam.Ck.ToString();
            inputTD.Text = ecuacionPutnam.tdYear.ToString();
            inputK.Text = ecuacionPutnam.K.ToString();

        }
    }
}