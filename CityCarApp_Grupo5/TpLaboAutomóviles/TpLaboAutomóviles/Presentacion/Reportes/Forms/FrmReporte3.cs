﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TpLaboAutomóviles.Presentacion.Reportes.Forms
{
    public partial class FrmReporte3 : Form
    {
        public FrmReporte3()
        {
            InitializeComponent();
        }

        private void FrmReporte3_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'dSTerceraConsulta.DT3erConsulta' Puede moverla o quitarla según sea necesario.
            this.dT3erConsultaTableAdapter.Fill(this.dSTerceraConsulta.DT3erConsulta);

            this.reportViewer1.RefreshReport();
        }
    }
}
