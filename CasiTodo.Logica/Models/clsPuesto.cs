namespace CasiTodo.Logica.Models
{
    public class clsPuesto
    {
        public int inCodigo { get; set; }
        public string stIoc { get; set; }
        public string stNombre { get; set; }
        public clsCiudad obclsCiudad { get; set; }
        public string stDireccion { get; set; }
        public string stBarrio { get; set; }
        public string stTelefono { get; set; }
        public string stExtencion { get; set; }
        public clsZona obclsZona { get; set; }
        public clsEjecutivo obclsEjecutivo { get; set; }
    }
}
