using CineBackend.Datos;
using CineBackend.Entidades;
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
    public partial class FrmLogIn : Form
    {
        public FrmLogIn()
        {
            InitializeComponent();
        }

        private void FrmLogIn_Load(object sender, EventArgs e)
        {

        }

        private async void button1_Click(object sender, EventArgs e)
        {
            int entrar = 0;
            List<Parametro> filtros = new List<Parametro>();
            Parametro usuario = new Parametro("@usuario", txtUsuario.Text.ToString());
            Parametro contra = new Parametro("@contra", txtContra.Text.ToString());
            filtros.Add(usuario);
            filtros.Add(contra);
            string Json = JsonConvert.SerializeObject(filtros);
            string url = "https://localhost:7043/Usuario/Entrar";
            var resultado = await ClienteSinglenton.GetInstance().PostAsync(url, Json);
            entrar = Convert.ToInt32(resultado);

            if (entrar > 0)
            {
                FrmPrincipal p = new FrmPrincipal();
                p.ShowDialog();
            }
            else
            {
                MessageBox.Show("El Usuario o la Contraseña es incorrecta", "Error");
            }


            //if (txtUsuario.Text == "Admin" && txtContra.Text == "1234")
            //{
            //    FrmPrincipal p = new FrmPrincipal();
            //    p.ShowDialog();
            //}
            //else
            //{
            //    MessageBox.Show("El Usuario o la Contraseña es incorrecta", "Error");
            //}
                


        }
    }
}
