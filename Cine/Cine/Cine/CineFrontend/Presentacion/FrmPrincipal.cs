using CineBackend.Fachada;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CineFrontend.Presentacion
{
    public partial class FrmPrincipal : Form
    {
        

        public FrmPrincipal()
        {
            InitializeComponent();
        }

        private void salirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if(MessageBox.Show("Desea cerrar el programa?","SALIR",MessageBoxButtons.YesNo,MessageBoxIcon.Exclamation,MessageBoxDefaultButton.Button2)==DialogResult.Yes)
            { this.Close(); }
        }

        private void nuevoProductoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmAltaCliente nuevo = new FrmAltaCliente();

            nuevo.ShowDialog();
        }

        private void consultarProductoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmConsultaCliente nuevo = new FrmConsultaCliente();
            nuevo.ShowDialog();
        }

        private void nuevaReservaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmFunciones nuevo = new FrmFunciones();
            nuevo.ShowDialog();
        }

        private void FrmPrincipal_Load(object sender, EventArgs e)
        {

        }
    }
}
