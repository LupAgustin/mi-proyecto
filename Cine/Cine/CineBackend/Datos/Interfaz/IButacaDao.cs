﻿using CineBackend.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackend.Datos.Interfaz
{
    public interface IButacaDao
    {
        List<Butaca> ObtenerButaca(List<Parametro> lst);
    }
}
