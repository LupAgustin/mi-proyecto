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
    
    public partial class FrmAltaCliente : Form
    {
        
        Cliente oCliente = null;
        Estado oEstado;
        List<Barrio> lBarrio;
        


        public enum Estado{ 
            nuevo,
            existente
        }

        public FrmAltaCliente()
        {
            InitializeComponent();
            oCliente = new Cliente();
            oEstado = Estado.nuevo;
        }

        public FrmAltaCliente(Cliente c, Estado e)
        {
            InitializeComponent();
            oCliente = c;
            oEstado = e;
        }


        private void FrmAltaCliente_Load(object sender, EventArgs e)
        {
            Limpiar();
            CargarCombo();

            if (oEstado == Estado.existente)
            {
                CargarExistente(oCliente);
            }
        }

        private void CargarExistente(Cliente c)
        {
            txtNombre.Text = c.Nombre;
            txtApellido.Text = c.Apellido;
            txtDirecc.Text = c.Direccion;
            txtDNI.Text = c.Nro_doc;
            dtpFechaNac.Value = c.Fecha_nac;
            cboBarrio.SelectedIndex = -1;
            //if (c.Id_Barrio == 1)
            //    cboBarrio.SelectedIndex = -1;
            //else if (c.Id_Barrio == 2)
            //    cboBarrio.SelectedIndex = -1;
            //else
            //    cboBarrio.SelectedIndex = -1;

            if (c.Sexo.Equals("F"))
            {
                rbtMujer.Checked = true;
            }
            else
                rbtHombre.Checked = true;
        }

        //Metodos auxiliares al LOAD del Formulario

        private async void CargarCombo()
        {
            lBarrio = null;
            string url = "https://localhost:7043/Clientes/Traer_Barrios";
            var resultado = await ClienteSinglenton.GetInstance().GetAsync(url);
            lBarrio = JsonConvert.DeserializeObject<List<Barrio>>(resultado);


            cboBarrio.DataSource=lBarrio;

            cboBarrio.ValueMember = "Id_Barrio";
            cboBarrio.DisplayMember = "Nombre";
            //cboBarrio.DisplayMember = "barrio";
            cboBarrio.DropDownStyle = ComboBoxStyle.DropDownList ;


        }

        private void Limpiar()
        {
            txtNombre.Text = string.Empty;
            txtApellido.Text = string.Empty;
            txtDNI.Text = string.Empty;
            txtDirecc.Text = string.Empty;
            cboBarrio.SelectedIndex = -1;
        }


        //Botón Aceptar

        private async void btnAceptar_Click(object sender, EventArgs e)
        {
            //Validar
            if (await Validar())
            {
                //Creo el objeto

                oCliente.Nombre = txtNombre.Text;
                oCliente.Apellido = txtApellido.Text;
                oCliente.Nro_doc = txtDNI.Text;
                oCliente.Direccion = txtDirecc.Text;
                oCliente.Fecha_nac = dtpFechaNac.Value;

                if (rbtHombre.Checked)
                {
                    oCliente.Sexo = "M";
                }
                else
                    oCliente.Sexo = "F";


                oCliente.Id_Barrio = (cboBarrio.SelectedIndex) + 1;


                GrabarCliente(oCliente);
                Limpiar();

            }
        }

        private async void GrabarCliente(Cliente oCliente)
        {
            if(oEstado == Estado.nuevo) 
            {
                bool aux = false;

                string Json = JsonConvert.SerializeObject(oCliente);
                string url = "https://localhost:7043/Clientes/Cargar_Cliente";
                var resultado = await ClienteSinglenton.GetInstance().PostAsync(url, Json);
                aux = resultado.Equals("true");

                //servicio.InsertarCliente(oCliente)

                if (aux)
                {
                    MessageBox.Show("Se registró con éxito el cliente...", "Informe", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    this.Dispose();

                }
                else
                {
                    MessageBox.Show("NO se pudo registrar el cliente...", "Error", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    this.Dispose();
                }
            }
            else if (oEstado == Estado.existente)
            {

                bool aux = false;

                string Json = JsonConvert.SerializeObject(oCliente);
                string url = "https://localhost:7043/Clientes/Actualizar_Cliente";
                var resultado = await ClienteSinglenton.GetInstance().PostAsync(url, Json);
                aux = resultado.Equals("true");

                //servicio.EditarCliente(oCliente)

                if (aux)
                {
                    MessageBox.Show("Cliente Actualizado...", "Informe", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    this.Dispose();

                }
                else
                {
                    MessageBox.Show("No se puedo actualizar...", "Error", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    this.Dispose();
                }
            }


        }

        ////Metodos auxiliares al Botón Aceptar del Formulario
        private async Task<bool> Validar()
        {
            //Validamos q tenga un nombre
            if(txtNombre.Text == string.Empty)
            {
                MessageBox.Show("Debe ingresar un nombre...");
                txtNombre.Focus();
                return false;
            }

            //Validamos q tenga un apellido
            if (txtApellido.Text == string.Empty)
            {
                MessageBox.Show("Debe ingresar un apellido...");
                txtNombre.Focus();
                return false;
            }

            //Validamos q tenga un dni 
            if (txtDNI.Text == string.Empty)
            {
                MessageBox.Show("Debe ingresar un dni...");
                txtDNI.Focus();
                return false;
            }

            if (oEstado == Estado.nuevo)
            {
                List<Cliente> lCliente = null;//servicio.GetClientes();

                string url = "https://localhost:7043/Reserva/Traer_Clientes";
                var resultado = await ClienteSinglenton.GetInstance().GetAsync(url);
                lCliente = JsonConvert.DeserializeObject<List<Cliente>>(resultado);

                foreach (Cliente c in lCliente)
                {
                    if (c.Nro_doc.Equals(txtDNI.Text))
                    {
                        MessageBox.Show("Ya existe un cliente con ese dni...");
                        txtDNI.Focus();
                        return false;
                    }
                }
            }
               

            //Validamos q seleccione el sexo
            if (!rbtMujer.Checked && !rbtHombre.Checked)
            {
                MessageBox.Show("Debe seleccionar un sexo...");
                rbtHombre.Focus();
                return false;
            }


            //Validamos q no sea ingresado en una fecha posterior al dia de hoy
            // del cine
            if (dtpFechaNac.Value > DateTime.Today && (DateTime.Today.Year - dtpFechaNac.Value.Year < 13))
            {
                MessageBox.Show("Debe ingresar una fecha valida y el cliente debe tener más de 13 ...");
                txtDirecc.Focus();
                return false;
            }



            //Validamos que haya ingresado una direccion

            if (txtDirecc.Text == string.Empty)
            {
                MessageBox.Show("Debe ingresar una direccion...");
                txtDirecc.Focus();
                return false;
            }



            //Validamos q haya un barrio seleccionado

            if (cboBarrio.SelectedIndex == -1)
            {
                MessageBox.Show("Debe seleccionar un barrio...");
                cboBarrio.Focus();
                return false;
            }


            return true;
        }




        //Botón Salir
        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }


    }
}
