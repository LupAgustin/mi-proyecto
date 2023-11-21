using CineBackend.Datos;
using CineBackend.Entidades;
using CineBackend.Fachada;
using CineBackend.Fachada.Interfaz;
using CineFrontend.Client;
using Newtonsoft.Json;
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
    public partial class FrmConsultaCliente : Form
    {
        
        List<Cliente> lClientes = null;
        public FrmConsultaCliente()
        {
            InitializeComponent();
            
            
        }



        private void FrmConsultaCliente_Load(object sender, EventArgs e)
        {
            Limpiar();
           
        }

        //Metodos auxiliares del Load
        private void Limpiar()
        {
            txtNombre.Text = string.Empty;
            txtApellido.Text = string.Empty;
            txtDNI.Text = string.Empty;
            txtId_Cliente.Text = string.Empty;
        }



        //Botón Buscar
        private async void btnBuscar_Click(object sender, EventArgs e)
        {
            
            List<Parametro> filtros = new List<Parametro>();
            Parametro nombre = new Parametro("@nombre", txtNombre.Text.ToString());
            Parametro apellido = new Parametro("@apellido",txtApellido.Text.ToString());
            Parametro dni = new Parametro("@nrodni", txtDNI.Text.ToString());
            Parametro id = new Parametro("@id_cliente", "");
            if (txtId_Cliente.Text.Equals(string.Empty))
            {
                id.Valor = "0";
            }
            else
            {
                id.Valor = txtId_Cliente.Text.ToString();
            }            
            filtros.Add(id);
            filtros.Add(apellido);
            filtros.Add(nombre);
            filtros.Add(dni);
            //lClientes = servicio.TraerClientePorFiltro(apellido, nombre, dni, id;
            string Json = JsonConvert.SerializeObject(filtros);
            string url = "https://localhost:7043/Clientes/Consultar_Clientes";
            var resultado = await ClienteSinglenton.GetInstance().PostAsync(url, Json);
            lClientes = JsonConvert.DeserializeObject<List<Cliente>>(resultado);


            if (lClientes.Count()==0)
            {
                MessageBox.Show("No se encontró cliente con los parametros ingresados...", "Informe", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            else
            {
                btnBuscar.Enabled = false;
                foreach (Cliente c in lClientes)
                {
                    dgvClientes.Rows.Add(new object[] { c.Id_Cliente,
                                                    c.Nombre,
                                                    c.Apellido,
                                                    c.Sexo,
                                                    c.Nro_doc,
                                                    c.Fecha_nac,
                                                    c.Direccion,
                                                    });
                }
            }
            
        }




        private async void dgvClientes_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int nro = Convert.ToInt32(dgvClientes.CurrentRow.Cells["ColCliente"].Value);
            Cliente oCliente = null;
            foreach (Cliente c in lClientes)
            {
                if (nro == c.Id_Cliente)
                {
                    oCliente = c;
                }
            }

            if (dgvClientes.CurrentCell.ColumnIndex == 7)
            {

                FrmAltaCliente editar = new FrmAltaCliente(oCliente, FrmAltaCliente.Estado.existente);

                editar.ShowDialog();
                dgvClientes.Rows.Clear();


            }
            else
            {
                if (dgvClientes.CurrentCell.ColumnIndex == 8)
                {
                    if (MessageBox.Show("Desea eliminar el cliente?", "ELIMINAR CLIENTE", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation, MessageBoxDefaultButton.Button2) == DialogResult.Yes)
                    {

                        bool aux = false;

                        string Json = JsonConvert.SerializeObject(oCliente);
                        string url = "https://localhost:7043/Clientes/Eliminar_Cliente";
                        var resultado = await ClienteSinglenton.GetInstance().PostAsync(url, Json);
                        aux = resultado.Equals("true");

                        //servicio.EliminarCliente(oCliente.Id_Cliente)

                        if (aux)
                        {
                            MessageBox.Show("Se eliminó con éxito el cliente...", "Informe", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                            this.Dispose();
                        }
                    }

                }
            }



        }



        //Botón Salir
        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnNuevaBusqueda_Click(object sender, EventArgs e)
        {
            Limpiar();
            dgvClientes.Rows.Clear();
            lClientes.Clear();
            btnBuscar.Enabled = true;
        }
    }
}
