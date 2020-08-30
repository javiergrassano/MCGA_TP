using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace MCGA_TP.ws
{
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    public class tp2 : System.Web.Services.WebService
    {
        /// <summary>
        /// Calcula la ecuacion de Putman despejando K.
        /// </summary>
        /// <param name="L">Líneas de código en miles.</param>
        /// <param name="Ck">Constante Tecnológica de desarrollo en meses.</param>
        /// <param name="td">Tiempo de desarrollo en años.</param>
        /// <returns>El valor de K Esfuerzo (persona/año).</returns>
        [WebMethod]
        public double CalcularPutman(int L, int Ck, int td)
        {
            string errores = "";
            if (L < 0) errores += "\nEl valor de L es incorrecto tiene que ser mayor a 0";
            if (Ck < 0 || Ck > 11000) errores += "\nEl valor de Ck es incorrecto tiene que estar entre 0 y 11000";
            if (td < 0) errores += "\nEl valor de td es incorrecto tiene que ser mayor a 0";
            if (!string.IsNullOrEmpty(errores)) throw new Exception(errores);

            double tdYear = (double)td / 12;
            double K = Math.Pow(L, 3) / (Math.Pow(Ck, 3) * Math.Pow(tdYear, 4));
            return K;
        }
    }
}
