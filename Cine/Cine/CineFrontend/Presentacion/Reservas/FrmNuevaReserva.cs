using CineBackend.Entidades;
using CineFrontend.Presentacion;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CineBackend.Fachada.Interfaz;
using CineBackend.Fachada;
using CineFrontend.Client;
using Newtonsoft.Json;
using CineBackend.Datos;

namespace CineFrontend.Presentacion
{
    public partial class FrmFunciones : Form
    {
        
        
        List<Pelicula> lPeliculas;
        List<Funcion> lFunciones;
        Funcion oFuncion;
        List<Cliente> lCliente;
        List<Butaca> lButacas;
        Reserva nuevo;
        Cliente oCliente;
        public FrmFunciones()
        {
            InitializeComponent();            
            nuevo = new Reserva();
            //oFuncion = new Funcion();
        }

        private void FrmFunciones_Load(object sender, EventArgs e)
        {
            Limpiar();
            CargarCombo();
            Habilitar(true);
            cboFunciones.Enabled = false;
            btnReservar.Enabled = false;
        }


        //Funciones Auxiliares al Load
        private void Habilitar(bool x)
        {
            cboPeliculas.Enabled = x;
            btnBuscar.Enabled = x;
            btnReservar.Enabled = x;
            cboFunciones.Enabled = x;

            lstClientes.Enabled = !x;
            pnlReserva.Enabled = !x;

        }


        private void Limpiar()
        {
            cboPeliculas.SelectedIndex = -1;
            cboFunciones.SelectedIndex = -1;
            lstClientes.ClearSelected();
            cboButacas.SelectedIndex = -1;

        }

        private async Task CargarCombo()
        {
            lPeliculas = null;
            string url = "https://localhost:7043/Reservas/Traer_Peliculas";
            var resultado = await ClienteSinglenton.GetInstance().GetAsync(url);
            lPeliculas = JsonConvert.DeserializeObject<List<Pelicula>>(resultado);

            cboPeliculas.DataSource = lPeliculas;

            cboPeliculas.ValueMember = "Id_Pelicula";
            cboPeliculas.DisplayMember = "Nombre";
            cboPeliculas.DropDownStyle = ComboBoxStyle.DropDownList;
        }


        //Eventos 

        private async void btnBuscar_Click(object sender, EventArgs e)
        {

            //Pelicula p = servicio.ObtenerPeliXFiltro(cboPeliculas.Text);

            //Pelicula p = null;
            //string Json = JsonConvert.SerializeObject(cboPeliculas.Text.ToString());
            //string url = "https://localhost:7043/Reserva/Traer_Peliculas_Filtradas";
            //var resultado = await ClienteSinglenton.GetInstance().PostAsync(url, Json);
            //p = JsonConvert.DeserializeObject<Pelicula>(resultado);

            string aux = ((cboPeliculas.SelectedIndex) + 1).ToString();
            List<Parametro> lParametro = new List<Parametro>();
            lParametro.Add(new Parametro("@id_pelicula", aux));

            //lFunciones = servicio.TraerFunciones(p.Id_Pelicula);
            lFunciones = null;
            
            string Json = JsonConvert.SerializeObject(lParametro);
            string url = "https://localhost:7043/Reserva/Traer_Funciones";
            var resultado = await ClienteSinglenton.GetInstance().PostAsync(url,Json);
            lFunciones = JsonConvert.DeserializeObject<List<Funcion>>(resultado);





            if (lFunciones.Count()==0)
            {
                MessageBox.Show("No se encontró funciones para esta pelicula...", "Informe", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                Habilitar(true);
                cboPeliculas.Focus();
            }
            else
            {
                cboFunciones.Enabled = true;
                btnReservar.Enabled = true;
                cboFunciones.DataSource = lFunciones;
                cboFunciones.ValueMember = "Id_Funcion";
                cboFunciones.DisplayMember = "Horario";
            }

        }

        //Botón Salir
        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }


        //Botón reservar
        private void btnReservar_Click(object sender, EventArgs e)
        {
            Habilitar(false);
            pnlReserva.Enabled = false;
            CargarLista();



            //DateTime hora = Convert.ToDateTime(cboFunciones.Text);

            //oFuncion= servicio.ObtenerFuncionXFiltro(hora);

            Funcion Funcion = (Funcion)cboFunciones.SelectedItem;
            oFuncion = Funcion;
            int aux = oFuncion.Id_Funcion;
            CargarComboButacas(aux);

        }

        private async void CargarLista()
        {
            lCliente = null;//servicio.GetClientes();

            
            string url = "https://localhost:7043/Reserva/Traer_Clientes";
            var resultado = await ClienteSinglenton.GetInstance().GetAsync(url);
            lCliente = JsonConvert.DeserializeObject<List<Cliente>>(resultado);


            lstClientes.DataSource = lCliente;
        }
        private void lstClientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            pnlReserva.Enabled = true;
            
        }

        private async void CargarComboButacas(int id )
        {

            lButacas = null; //servicio.TraerButaca(id);


            List<Parametro> lParametro = new List<Parametro>();
            lParametro.Add(new Parametro("@id_funcion", id));            

            string Json = JsonConvert.SerializeObject(lParametro);
            string url = "https://localhost:7043/Reserva/Traer_Butacas";
            var resultado = await ClienteSinglenton.GetInstance().PostAsync(url, Json);
            lButacas = JsonConvert.DeserializeObject<List<Butaca>>(resultado);



            if (lButacas != null)
            {
                cboButacas.DataSource = lButacas;
                cboButacas.ValueMember = "Id_Butaca";
                cboButacas.DisplayMember = "NroButaca";
                cboButacas.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            else
            {
                MessageBox.Show("Seleccione un asiento...", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            
        }

        private async void btnAgregar_Click(object sender, EventArgs e)
        {
            if (cboButacas.SelectedIndex == -1)
            {
                MessageBox.Show("Seleccione un asiento...", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }


            foreach (DataGridViewRow row in dgvDetalleReserva.Rows)
            {
                if (row.Cells["ColCodButaca"].Value.ToString().Equals(cboButacas.Text))
                {
                    
                    MessageBox.Show("Ya reservó este asiento", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return;
                }
            }

            Butaca item = (Butaca)cboButacas.SelectedItem;
            int but = item.Id_Butaca;
            int fun = oFuncion.Id_Funcion;

            int nroButaca = Convert.ToInt32(item.NroButaca);




            int FUNCIONXBUTACA = 0;// servicio.ObternerCod(item.Id_Butaca, oFuncion.Id_Funcion);

            List<Parametro> lParametro = new List<Parametro>();
            lParametro.Add(new Parametro("@id_butaca", but));
            lParametro.Add(new Parametro("@id_Funcion", fun));

            string Json = JsonConvert.SerializeObject(lParametro);
            string url = "https://localhost:7043/Reserva/Traer_FunBut";
            var resultado = await ClienteSinglenton.GetInstance().PostAsync(url, Json);
            FUNCIONXBUTACA = Convert.ToInt32(resultado);


            DetalleReservas dr = new DetalleReservas(FUNCIONXBUTACA);



            nuevo.AgregarDetalle(dr);

            dgvDetalleReserva.Rows.Add(new object[] { oFuncion.Id_Funcion, item.Id_Butaca, nroButaca });


        }

        private void dgvDetalleReserva_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvDetalleReserva.CurrentCell.ColumnIndex == 3)
            {
                nuevo.QuitarDetalle(dgvDetalleReserva.CurrentRow.Index);
                dgvDetalleReserva.Rows.RemoveAt(dgvDetalleReserva.CurrentRow.Index);
            }
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            if(lstClientes.SelectedItems.Count == 0 || lstClientes.SelectedItems.Count>1 ) 
            {
                MessageBox.Show("Debe seleccionar un cliente...", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;

            }
            oCliente = (Cliente)lstClientes.SelectedItem;

            if (dgvDetalleReserva.Rows.Count == 0)
            {
                MessageBox.Show("Debe ingresar al menos una butaca...", "Control", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            GrabarReserva(oCliente);
        }


        private async void GrabarReserva(Cliente c)
        {
            nuevo.oCliente = c;
            nuevo.FechaAlta = DateTime.Today;
            nuevo.HoraVto = nuevo.ObtenerVto(oFuncion.Horario);

            //No ponemos presupuesto numero porque es identity
            bool aux = false;

            string Json = JsonConvert.SerializeObject(nuevo);
            string url = "https://localhost:7043/Reserva/Cargar_Reserva";
            var resultado = await ClienteSinglenton.GetInstance().PostAsync(url, Json);
            aux = resultado.Equals("true");



            //servicio.SaveReserva(nuevo);

            if (aux)
            {
                MessageBox.Show("Se registó la reserva con éxito...", "Informacion", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.Dispose(); //Si se grabó cierro
            }
            else
            {
                MessageBox.Show("No se pudo registrar la reserva...", "Error", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);

            }

        }



    }
}
