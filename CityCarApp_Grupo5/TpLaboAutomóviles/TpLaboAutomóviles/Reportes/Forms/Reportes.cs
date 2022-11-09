using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TpLaboAutomóviles.Reportes.Forms
{
    public partial class Reportes : Form
    {
        public Reportes()
        {
            InitializeComponent();
        }

        private void reporte1ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new Form1().ShowDialog();
        }

        private void reporte2ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new Form2().ShowDialog();
        }

        private void reporte3ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new Form3().ShowDialog();
        }

        private void reporte4ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new Form4().ShowDialog();
        }

        private void reporte5ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new Form5().ShowDialog();
        }

        private void Form6_Load(object sender, EventArgs e)
        {

        }
    }
}
