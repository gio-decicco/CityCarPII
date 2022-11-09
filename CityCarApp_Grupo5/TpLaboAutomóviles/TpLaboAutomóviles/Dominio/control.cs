using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TpLaboAutomóviles.Reportes.Forms;

namespace TpLaboAutomóviles.Dominio
{
    public class control
    {
        private static control instancia;
        public static control ObtenerInstancia()
        {
            if (instancia == null)
            {
                instancia = new control();
            }
            return instancia;
        }
        public void reporte1()
        {
            new Form1().ShowDialog();
        }
        public void reporte2()
        {
            new Form2().ShowDialog();
        }
        public void reporte3()
        {
            new Form3().ShowDialog();
        }
        public void reporte4()
        {
            new Form4().ShowDialog();
        }
        public void reporte5()
        {
            new Form5().ShowDialog();
        }
    }
}
