using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Entidades
{
    public class Butaca
    {
        public int Id_Butaca { get; set; }

        public int NroButaca { get; set; }

        public string Fila { get; set; }

        public Butaca(int id, string fila, int num)
        {
            Id_Butaca = id;
            Fila = fila;
            NroButaca = num;
        }

        public override string ToString()
        {
            return Fila + ", " + NroButaca;
        }
    }
}
