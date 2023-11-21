using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Entidades
{
    public class DetalleReservas
    {
        public int Id_FuncionxButaca { get; set; }


        public DetalleReservas(int Id_FuncionxButaca)
        {
            this.Id_FuncionxButaca = Id_FuncionxButaca;
        }
    }
}
