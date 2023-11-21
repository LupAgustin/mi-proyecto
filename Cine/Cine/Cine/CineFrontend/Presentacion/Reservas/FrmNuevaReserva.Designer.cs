namespace CineFrontend.Presentacion
{
    partial class FrmFunciones
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
            this.btnBuscar = new System.Windows.Forms.Button();
            this.lblSeleccion = new System.Windows.Forms.Label();
            this.cboPeliculas = new System.Windows.Forms.ComboBox();
            this.btnSalir = new System.Windows.Forms.Button();
            this.lstClientes = new System.Windows.Forms.ListBox();
            this.label1 = new System.Windows.Forms.Label();
            this.cboFunciones = new System.Windows.Forms.ComboBox();
            this.btnReservar = new System.Windows.Forms.Button();
            this.dgvDetalleReserva = new System.Windows.Forms.DataGridView();
            this.ColFuncion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColCodButaca = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColNroButaca = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColAcciones = new System.Windows.Forms.DataGridViewButtonColumn();
            this.btnAceptar = new System.Windows.Forms.Button();
            this.btnAgregar = new System.Windows.Forms.Button();
            this.lblAsiento = new System.Windows.Forms.Label();
            this.cboButacas = new System.Windows.Forms.ComboBox();
            this.pnlReserva = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDetalleReserva)).BeginInit();
            this.pnlReserva.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnBuscar
            // 
            this.btnBuscar.Location = new System.Drawing.Point(513, 65);
            this.btnBuscar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(166, 37);
            this.btnBuscar.TabIndex = 1;
            this.btnBuscar.Text = "Buscar Funciones";
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // lblSeleccion
            // 
            this.lblSeleccion.AutoSize = true;
            this.lblSeleccion.Location = new System.Drawing.Point(52, 39);
            this.lblSeleccion.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblSeleccion.Name = "lblSeleccion";
            this.lblSeleccion.Size = new System.Drawing.Size(173, 21);
            this.lblSeleccion.TabIndex = 4;
            this.lblSeleccion.Text = "Seleccione una película:";
            // 
            // cboPeliculas
            // 
            this.cboPeliculas.FormattingEnabled = true;
            this.cboPeliculas.Location = new System.Drawing.Point(57, 65);
            this.cboPeliculas.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.cboPeliculas.Name = "cboPeliculas";
            this.cboPeliculas.Size = new System.Drawing.Size(409, 29);
            this.cboPeliculas.TabIndex = 0;
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(1263, 594);
            this.btnSalir.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(112, 37);
            this.btnSalir.TabIndex = 3;
            this.btnSalir.Text = "Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // lstClientes
            // 
            this.lstClientes.FormattingEnabled = true;
            this.lstClientes.ItemHeight = 21;
            this.lstClientes.Location = new System.Drawing.Point(825, 65);
            this.lstClientes.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.lstClientes.Name = "lstClientes";
            this.lstClientes.Size = new System.Drawing.Size(548, 508);
            this.lstClientes.TabIndex = 0;
            this.lstClientes.SelectedIndexChanged += new System.EventHandler(this.lstClientes_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(820, 39);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(139, 21);
            this.label1.TabIndex = 1;
            this.label1.Text = "Seleccione cliente: ";
            // 
            // cboFunciones
            // 
            this.cboFunciones.FormattingEnabled = true;
            this.cboFunciones.Location = new System.Drawing.Point(57, 174);
            this.cboFunciones.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.cboFunciones.Name = "cboFunciones";
            this.cboFunciones.Size = new System.Drawing.Size(409, 29);
            this.cboFunciones.TabIndex = 5;
            // 
            // btnReservar
            // 
            this.btnReservar.Location = new System.Drawing.Point(513, 174);
            this.btnReservar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnReservar.Name = "btnReservar";
            this.btnReservar.Size = new System.Drawing.Size(166, 37);
            this.btnReservar.TabIndex = 6;
            this.btnReservar.Text = "Reservar";
            this.btnReservar.UseVisualStyleBackColor = true;
            this.btnReservar.Click += new System.EventHandler(this.btnReservar_Click);
            // 
            // dgvDetalleReserva
            // 
            this.dgvDetalleReserva.AllowUserToAddRows = false;
            this.dgvDetalleReserva.AllowUserToDeleteRows = false;
            this.dgvDetalleReserva.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDetalleReserva.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ColFuncion,
            this.ColCodButaca,
            this.ColNroButaca,
            this.ColAcciones});
            this.dgvDetalleReserva.Location = new System.Drawing.Point(27, 90);
            this.dgvDetalleReserva.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dgvDetalleReserva.Name = "dgvDetalleReserva";
            this.dgvDetalleReserva.ReadOnly = true;
            this.dgvDetalleReserva.Size = new System.Drawing.Size(666, 242);
            this.dgvDetalleReserva.TabIndex = 13;
            this.dgvDetalleReserva.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvDetalleReserva_CellContentClick);
            // 
            // ColFuncion
            // 
            this.ColFuncion.HeaderText = "Id_Funcion";
            this.ColFuncion.Name = "ColFuncion";
            this.ColFuncion.ReadOnly = true;
            // 
            // ColCodButaca
            // 
            this.ColCodButaca.HeaderText = "Id_Butaca";
            this.ColCodButaca.Name = "ColCodButaca";
            this.ColCodButaca.ReadOnly = true;
            // 
            // ColNroButaca
            // 
            this.ColNroButaca.HeaderText = "Número de Butaca";
            this.ColNroButaca.Name = "ColNroButaca";
            this.ColNroButaca.ReadOnly = true;
            // 
            // ColAcciones
            // 
            this.ColAcciones.HeaderText = "Acciones";
            this.ColAcciones.Name = "ColAcciones";
            this.ColAcciones.ReadOnly = true;
            this.ColAcciones.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.ColAcciones.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.ColAcciones.Text = "Quitar";
            this.ColAcciones.UseColumnTextForButtonValue = true;
            // 
            // btnAceptar
            // 
            this.btnAceptar.Location = new System.Drawing.Point(27, 352);
            this.btnAceptar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnAceptar.Name = "btnAceptar";
            this.btnAceptar.Size = new System.Drawing.Size(112, 37);
            this.btnAceptar.TabIndex = 14;
            this.btnAceptar.Text = "Aceptar";
            this.btnAceptar.UseVisualStyleBackColor = true;
            this.btnAceptar.Click += new System.EventHandler(this.btnAceptar_Click);
            // 
            // btnAgregar
            // 
            this.btnAgregar.Location = new System.Drawing.Point(456, 19);
            this.btnAgregar.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnAgregar.Name = "btnAgregar";
            this.btnAgregar.Size = new System.Drawing.Size(112, 37);
            this.btnAgregar.TabIndex = 12;
            this.btnAgregar.Text = "Agregar";
            this.btnAgregar.UseVisualStyleBackColor = true;
            this.btnAgregar.Click += new System.EventHandler(this.btnAgregar_Click);
            // 
            // lblAsiento
            // 
            this.lblAsiento.AutoSize = true;
            this.lblAsiento.Location = new System.Drawing.Point(22, 29);
            this.lblAsiento.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblAsiento.Name = "lblAsiento";
            this.lblAsiento.Size = new System.Drawing.Size(62, 21);
            this.lblAsiento.TabIndex = 11;
            this.lblAsiento.Text = "Asiento";
            // 
            // cboButacas
            // 
            this.cboButacas.FormattingEnabled = true;
            this.cboButacas.Location = new System.Drawing.Point(184, 24);
            this.cboButacas.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.cboButacas.Name = "cboButacas";
            this.cboButacas.Size = new System.Drawing.Size(224, 29);
            this.cboButacas.TabIndex = 10;
            // 
            // pnlReserva
            // 
            this.pnlReserva.Controls.Add(this.btnAceptar);
            this.pnlReserva.Controls.Add(this.dgvDetalleReserva);
            this.pnlReserva.Controls.Add(this.lblAsiento);
            this.pnlReserva.Controls.Add(this.btnAgregar);
            this.pnlReserva.Controls.Add(this.cboButacas);
            this.pnlReserva.Location = new System.Drawing.Point(57, 242);
            this.pnlReserva.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.pnlReserva.Name = "pnlReserva";
            this.pnlReserva.Size = new System.Drawing.Size(746, 394);
            this.pnlReserva.TabIndex = 15;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(52, 149);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(175, 21);
            this.label2.TabIndex = 16;
            this.label2.Text = "Seleccione una Funcion:";
            // 
            // FrmFunciones
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 21F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1430, 656);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.pnlReserva);
            this.Controls.Add(this.btnReservar);
            this.Controls.Add(this.cboFunciones);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.cboPeliculas);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lblSeleccion);
            this.Controls.Add(this.lstClientes);
            this.Controls.Add(this.btnBuscar);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "FrmFunciones";
            this.Text = "Buscar Funciones";
            this.Load += new System.EventHandler(this.FrmFunciones_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDetalleReserva)).EndInit();
            this.pnlReserva.ResumeLayout(false);
            this.pnlReserva.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.Label lblSeleccion;
        private System.Windows.Forms.ComboBox cboPeliculas;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.ListBox lstClientes;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cboFunciones;
        private System.Windows.Forms.Button btnReservar;
        private System.Windows.Forms.DataGridView dgvDetalleReserva;
        private System.Windows.Forms.Button btnAceptar;
        private System.Windows.Forms.Button btnAgregar;
        private System.Windows.Forms.Label lblAsiento;
        private System.Windows.Forms.ComboBox cboButacas;
        private System.Windows.Forms.Panel pnlReserva;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColFuncion;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColCodButaca;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColNroButaca;
        private System.Windows.Forms.DataGridViewButtonColumn ColAcciones;
    }
}