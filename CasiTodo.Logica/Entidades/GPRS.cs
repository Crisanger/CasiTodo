//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CasiTodo.Logica.Entidades
{
    using System;
    using System.Collections.Generic;
    
    public partial class GPRS
    {
        public int gprsCodigo { get; set; }
        public string gprsSerial { get; set; }
        public string gprsUbicacion { get; set; }
        public string gprsNumero { get; set; }
        public int operCodigo { get; set; }
    
        public virtual OPERADOR OPERADOR { get; set; }
    }
}
