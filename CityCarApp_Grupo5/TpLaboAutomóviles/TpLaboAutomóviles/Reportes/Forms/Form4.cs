﻿using System;
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
    public partial class Form4 : Form
    {
        public Form4()
        {
            InitializeComponent();
        }

        private void Form4_Load(object sender, EventArgs e)
        {

           
        }

        private void button1_Click(object sender, EventArgs e)
        {

            if (txtBarrio.Text == string.Empty)
            {
                MessageBox.Show("Por favor, ingrese un valor !!");
            } else
            {
                string barrio;
                barrio = txtBarrio.Text;
                this.dataTable1TableAdapter.Fill(this.dataSet4.DataTable1, barrio);
            }

          
            this.reportViewer1.RefreshReport();
        }
    }
}
