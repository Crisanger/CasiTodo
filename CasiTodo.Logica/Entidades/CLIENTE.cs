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
    
    public partial class CLIENTE
    {
        public int clieCodigo { get; set; }
        public int tipiCodigo { get; set; }
        public string clieIdentificacion { get; set; }
        public string clieNombre { get; set; }
        public string clieDireccion { get; set; }
        public int ciudCodigo { get; set; }
        public string clieTelefono { get; set; }
        public string clieExtencion { get; set; }
        public string clieCorreo { get; set; }
        public string clieRepresentanteLegal { get; set; }
        public int ejecCodigo { get; set; }
        public int tipcCodigo { get; set; }
        public int servCodigo { get; set; }
        public int platCodigo { get; set; }
        public string clieVideoVerificacion { get; set; }
        public string clieFechaDeInicio { get; set; }
        public string clieFechaDeFin { get; set; }
    
        public virtual CIUDAD CIUDAD { get; set; }
        public virtual TIPODEIDENTIFICACION TIPODEIDENTIFICACION { get; set; }
        public virtual EJECUTIVO EJECUTIVO { get; set; }
        public virtual TIPOCLIENTE TIPOCLIENTE { get; set; }
        public virtual SERVICIO SERVICIO { get; set; }
        public virtual PLATAFORMA PLATAFORMA { get; set; }
    }
}
