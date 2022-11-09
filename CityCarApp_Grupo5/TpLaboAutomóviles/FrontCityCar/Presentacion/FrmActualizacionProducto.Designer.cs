namespace CityCarFrontEnd.Presentacion
{
    partial class FrmActualizacionProducto
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.GroupProductos = new System.Windows.Forms.GroupBox();
            this.LstProductos = new System.Windows.Forms.ListBox();
            this.GroupDetalles = new System.Windows.Forms.GroupBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.TxtPrecio = new System.Windows.Forms.TextBox();
            this.TxtDescripcion = new System.Windows.Forms.TextBox();
            this.BtnCancelar = new System.Windows.Forms.Button();
            this.BtnSalir = new System.Windows.Forms.Button();
            this.BtnConfirmar = new System.Windows.Forms.Button();
            this.BtnEliminar = new System.Windows.Forms.Button();
            this.BtnModificar = new System.Windows.Forms.Button();
            this.BtnNuevo = new System.Windows.Forms.Button();
            this.GroupProductos.SuspendLayout();
            this.GroupDetalles.SuspendLayout();
            this.SuspendLayout();
            // 
            // GroupProductos
            // 
            this.GroupProductos.Controls.Add(this.LstProductos);
            this.GroupProductos.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.GroupProductos.ForeColor = System.Drawing.Color.DarkBlue;
            this.GroupProductos.Location = new System.Drawing.Point(16, 18);
            this.GroupProductos.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.GroupProductos.Name = "GroupProductos";
            this.GroupProductos.Padding = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.GroupProductos.Size = new System.Drawing.Size(377, 306);
            this.GroupProductos.TabIndex = 0;
            this.GroupProductos.TabStop = false;
            this.GroupProductos.Text = "Productos";
            // 
            // LstProductos
            // 
            this.LstProductos.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
            this.LstProductos.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.LstProductos.Font = new System.Drawing.Font("Century Gothic", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.LstProductos.ForeColor = System.Drawing.Color.DarkBlue;
            this.LstProductos.FormattingEnabled = true;
            this.LstProductos.ItemHeight = 21;
            this.LstProductos.Location = new System.Drawing.Point(8, 29);
            this.LstProductos.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.LstProductos.Name = "LstProductos";
            this.LstProductos.Size = new System.Drawing.Size(360, 254);
            this.LstProductos.TabIndex = 0;
            this.LstProductos.SelectedIndexChanged += new System.EventHandler(this.LstProductos_SelectedIndexChanged);
            // 
            // GroupDetalles
            // 
            this.GroupDetalles.Controls.Add(this.label2);
            this.GroupDetalles.Controls.Add(this.label1);
            this.GroupDetalles.Controls.Add(this.TxtPrecio);
            this.GroupDetalles.Controls.Add(this.TxtDescripcion);
            this.GroupDetalles.Enabled = false;
            this.GroupDetalles.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.GroupDetalles.ForeColor = System.Drawing.Color.DarkBlue;
            this.GroupDetalles.Location = new System.Drawing.Point(401, 18);
            this.GroupDetalles.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.GroupDetalles.Name = "GroupDetalles";
            this.GroupDetalles.Padding = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.GroupDetalles.Size = new System.Drawing.Size(376, 217);
            this.GroupDetalles.TabIndex = 1;
            this.GroupDetalles.TabStop = false;
            this.GroupDetalles.Text = "Detalles";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(59, 126);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 20);
            this.label2.TabIndex = 3;
            this.label2.Text = "Precio";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(24, 69);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(96, 20);
            this.label1.TabIndex = 2;
            this.label1.Text = "Descripción";
            // 
            // TxtPrecio
            // 
            this.TxtPrecio.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.TxtPrecio.Location = new System.Drawing.Point(125, 122);
            this.TxtPrecio.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.TxtPrecio.Name = "TxtPrecio";
            this.TxtPrecio.Size = new System.Drawing.Size(211, 26);
            this.TxtPrecio.TabIndex = 1;
            // 
            // TxtDescripcion
            // 
            this.TxtDescripcion.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.TxtDescripcion.Location = new System.Drawing.Point(125, 65);
            this.TxtDescripcion.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.TxtDescripcion.Name = "TxtDescripcion";
            this.TxtDescripcion.Size = new System.Drawing.Size(211, 26);
            this.TxtDescripcion.TabIndex = 0;
            // 
            // BtnCancelar
            // 
            this.BtnCancelar.BackColor = System.Drawing.Color.Linen;
            this.BtnCancelar.Enabled = false;
            this.BtnCancelar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnCancelar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.BtnCancelar.ForeColor = System.Drawing.Color.DarkBlue;
            this.BtnCancelar.Location = new System.Drawing.Point(401, 289);
            this.BtnCancelar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.BtnCancelar.Name = "BtnCancelar";
            this.BtnCancelar.Size = new System.Drawing.Size(100, 35);
            this.BtnCancelar.TabIndex = 12;
            this.BtnCancelar.Text = "Cancelar";
            this.BtnCancelar.UseVisualStyleBackColor = false;
            this.BtnCancelar.Click += new System.EventHandler(this.BtnCancelar_Click);
            // 
            // BtnSalir
            // 
            this.BtnSalir.BackColor = System.Drawing.Color.Linen;
            this.BtnSalir.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnSalir.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.BtnSalir.ForeColor = System.Drawing.Color.DarkBlue;
            this.BtnSalir.Location = new System.Drawing.Point(676, 289);
            this.BtnSalir.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.BtnSalir.Name = "BtnSalir";
            this.BtnSalir.Size = new System.Drawing.Size(100, 35);
            this.BtnSalir.TabIndex = 11;
            this.BtnSalir.Text = "Salir";
            this.BtnSalir.UseVisualStyleBackColor = false;
            this.BtnSalir.Click += new System.EventHandler(this.BtnSalir_Click);
            // 
            // BtnConfirmar
            // 
            this.BtnConfirmar.BackColor = System.Drawing.Color.Linen;
            this.BtnConfirmar.Enabled = false;
            this.BtnConfirmar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnConfirmar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.BtnConfirmar.ForeColor = System.Drawing.Color.DarkBlue;
            this.BtnConfirmar.Location = new System.Drawing.Point(676, 245);
            this.BtnConfirmar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.BtnConfirmar.Name = "BtnConfirmar";
            this.BtnConfirmar.Size = new System.Drawing.Size(100, 35);
            this.BtnConfirmar.TabIndex = 10;
            this.BtnConfirmar.Text = "Confirmar";
            this.BtnConfirmar.UseVisualStyleBackColor = false;
            this.BtnConfirmar.Click += new System.EventHandler(this.BtnConfirmar_Click);
            // 
            // BtnEliminar
            // 
            this.BtnEliminar.BackColor = System.Drawing.Color.Linen;
            this.BtnEliminar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnEliminar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.BtnEliminar.ForeColor = System.Drawing.Color.DarkBlue;
            this.BtnEliminar.Location = new System.Drawing.Point(540, 245);
            this.BtnEliminar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.BtnEliminar.Name = "BtnEliminar";
            this.BtnEliminar.Size = new System.Drawing.Size(100, 35);
            this.BtnEliminar.TabIndex = 9;
            this.BtnEliminar.Text = "Eliminar";
            this.BtnEliminar.UseVisualStyleBackColor = false;
            this.BtnEliminar.Click += new System.EventHandler(this.BtnEliminar_Click);
            // 
            // BtnModificar
            // 
            this.BtnModificar.BackColor = System.Drawing.Color.Linen;
            this.BtnModificar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnModificar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.BtnModificar.ForeColor = System.Drawing.Color.DarkBlue;
            this.BtnModificar.Location = new System.Drawing.Point(401, 245);
            this.BtnModificar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.BtnModificar.Name = "BtnModificar";
            this.BtnModificar.Size = new System.Drawing.Size(100, 35);
            this.BtnModificar.TabIndex = 8;
            this.BtnModificar.Text = "Modificar";
            this.BtnModificar.UseVisualStyleBackColor = false;
            this.BtnModificar.Click += new System.EventHandler(this.BtnModificar_Click);
            // 
            // BtnNuevo
            // 
            this.BtnNuevo.BackColor = System.Drawing.Color.Linen;
            this.BtnNuevo.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnNuevo.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.BtnNuevo.ForeColor = System.Drawing.Color.DarkBlue;
            this.BtnNuevo.Location = new System.Drawing.Point(540, 289);
            this.BtnNuevo.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.BtnNuevo.Name = "BtnNuevo";
            this.BtnNuevo.Size = new System.Drawing.Size(100, 35);
            this.BtnNuevo.TabIndex = 13;
            this.BtnNuevo.Text = "Nuevo";
            this.BtnNuevo.UseVisualStyleBackColor = false;
            this.BtnNuevo.Click += new System.EventHandler(this.BtnNuevo_Click);
            // 
            // FrmActualizacionProducto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.ClientSize = new System.Drawing.Size(793, 342);
            this.Controls.Add(this.BtnNuevo);
            this.Controls.Add(this.BtnCancelar);
            this.Controls.Add(this.BtnSalir);
            this.Controls.Add(this.BtnConfirmar);
            this.Controls.Add(this.BtnEliminar);
            this.Controls.Add(this.BtnModificar);
            this.Controls.Add(this.GroupDetalles);
            this.Controls.Add(this.GroupProductos);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "FrmActualizacionProducto";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmConsultaProducto";
            this.Load += new System.EventHandler(this.FrmActualizacionProducto_Load);
            this.GroupProductos.ResumeLayout(false);
            this.GroupDetalles.ResumeLayout(false);
            this.GroupDetalles.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox GroupProductos;
        private System.Windows.Forms.GroupBox GroupDetalles;
        private System.Windows.Forms.Button BtnCancelar;
        private System.Windows.Forms.Button BtnSalir;
        private System.Windows.Forms.Button BtnConfirmar;
        private System.Windows.Forms.Button BtnEliminar;
        private System.Windows.Forms.Button BtnModificar;
        private System.Windows.Forms.ListBox LstProductos;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox TxtPrecio;
        private System.Windows.Forms.TextBox TxtDescripcion;
        private Button BtnNuevo;
    }
}