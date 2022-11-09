using AppConcesionaria.Presentacion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using TpLaboAutomóviles.Presentacion;
using TpLaboAutomóviles.Reportes.Forms;
using TpLaboAutomóviles.Servicios.Concreta;

namespace TpLaboAutomóviles
{
    internal static class Program
    {
        /// <summary>
        /// Punto de entrada principal para la aplicación.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Form form = new Reportes.Forms.Reportes();
            Application.Run(form);
        }
    }
}
