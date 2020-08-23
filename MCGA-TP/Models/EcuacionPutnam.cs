using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MCGA_TP.Models
{
    public class EcuacionPutnam
    {
        public int L { get; set; }
        public int Ck { get; set; }
        public int tdMonth { get; set; }
        public double tdYear { get => (double)tdMonth/12;  }
        public double K { get; private set; }

        public double Evaluar()
        {
            K = Math.Pow(L, 3) / (Math.Pow(Ck, 3) * Math.Pow(tdYear, 4));
            return K;
        }
    }
}