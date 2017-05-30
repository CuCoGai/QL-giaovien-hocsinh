
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QLgiaovienhocsinh.Model;

namespace QLgiaovienhocsinh
{
    public partial class Form1 : Form
    {
        QuanLyGiaoVienVaHocSinhEntities db = new QuanLyGiaoVienVaHocSinhEntities();

        public Form1()
        {
            InitializeComponent();
            
        }

        #region method

        void AddBinding()
        {

        }

         void LoadDataGV()
        {
            this.dataGridViewGV.DataSource = db.GiaoViens.ToList();

        }

        void LoadDataHS  ()
        {
            this.dataGridViewGV.DataSource = db.GiaoViens.ToList();

        }

         void clear( )
        {
            string st = " ";
            tbxCMT.Text = st;
            tbxTenGV.Text=st;
            cmbGioiTinhGV.Items.Clear();
            dateTimePickerGV.Value = DateTime.Parse("20-05-2017");
            tbxEmailGV.Text=st;
            tbxSDTGV.Text = st;
            tbxTonGiaoGV.Text = st;
            tbxDanTocGV.Text = st;
            tbxDiaChiGV.Text = st;
            tbxQQGV.Text = st;
      }

       void AddGV()
        {            
            
        }

        void EditGV()
        {

        }



        void Save()
        {
            DialogResult dlr=MessageBox.Show("Lưu tất cả thay đổi?",
                            "Save", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question);
            if (dlr == DialogResult.Yes)
            {
                db.SaveChanges();
             }
        }

        #endregion

        #region event 
        private void buttonAdd_Click(object sender, EventArgs e)
        {
            AddGV();      
        }

        private void buttonShow_Click(object sender, EventArgs e)
        {
            LoadDataGV();
        }
        private void btn_ShowHS_Click(object sender, EventArgs e)
        {
            LoadDataHS();
        }


        private void dataGridViewHS_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dataGridViewGV_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void buttonSave_Click(object sender, EventArgs e)
        {
            Save();
        }

        private void btn_SaveHS_Click(object sender, EventArgs e)
        {
            Save();
        }




        #endregion

        private void Form1_Load(object sender, EventArgs e)
        {
            
        }
    }
}
