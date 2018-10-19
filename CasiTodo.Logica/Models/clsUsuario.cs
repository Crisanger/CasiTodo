namespace CasiTodo.Logica.Models
{
    public class clsUsuario
    {
        public int inCodigo { get; set; }
        public string stEmail { get; set; }
        public string stNombre { get; set; }
        public string stPassword { get; set; }
        public clsTipoUsuario obclsTipoUsuario { get; set; }
    }
}
