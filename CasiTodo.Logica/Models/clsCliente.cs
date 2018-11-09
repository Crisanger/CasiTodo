namespace CasiTodo.Logica.Models
{
    public class clsCliente
    {
        public int inCodigo { get; set; }
        public clsTipoDeIdentificacion obclsTipoDeIdentificacion { get; set; }
        public string stIdentificacion { get; set; }
        public string stNombre { get; set; }
        public string stDireccion { get; set; }
        public clsCiudad obclsCiudad { get; set; }
        public string stTelefono { get; set; }
        public string stExtension { get; set; }
        public string stCorreo { get; set; }
        public string stRepresentanteLegal { get; set; }
        public clsEjecutivo obclsEjecutivo { get; set; }
        public clsTipoCliente obclsTipoCliente { get; set; }
        public clsServicio obclsServicio { get; set; }
        public clsPlataforma obclsPlataforma { get; set; }
        public string stVideoVerificacion { get; set; }
        public string stFechaDeInicio { get; set; }
        public string stFechaDeFin { get; set; }
    }
}
