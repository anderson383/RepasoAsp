﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace prueba
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            txtNumero.Text = "1";
        }
       
        private void BtnSumar_Click(object sender, EventArgs e)
        {
            int n = Convert.ToInt32(txtNumero.Text);
            n++;
            txtNumero.Text = n.ToString();
        }
    }
}
