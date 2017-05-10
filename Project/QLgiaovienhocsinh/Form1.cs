using QLgiaovienhocsinh.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLgiaovienhocsinh
{
    public partial class Form1 : Form
    {
        QuanLyGiaoVienVaHocSinhEntities db = new QuanLyGiaoVienVaHocSinhEntities();
        
        public Form1()
        {
            InitializeComponent();
            LoadDataGV();
            AddBinding(); 
        }

        #region method

        void AddBinding()
        {
            tbxTenGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "TenGV"));
            tbxCMT.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "CMT"));
           dateTimePickerGV.DataBindings.Add(new Binding("Text", dataGridViewGV.DataSource, "NgaySinh",true, DataSourceUpdateMode.OnPropertyChanged));
            cmbGioiTinhGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "GioiTinh", true, DataSourceUpdateMode.OnPropertyChanged));
            tbxEmailGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "Email"));
            tbxSDTGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "SDT"));
            tbxTonGiaoGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "TonGiao"));
            tbxDanTocGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "DanToc"));
            tbxDiaChiGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "DiaChi"));
            tbxQQGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "QueQuan"));
        }

         void LoadDataGV()
        {
            var gv = (from p in db.GiaoVien
                     select p).ToList();
          dataGridViewGV.DataSource = gv;
        }

        void LoadDataHS  ()
        {
            var gv = from p in db.HocSinh
                     select p;
            dataGridViewHS.DataSource = gv.ToList();
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
            
            GiaoVien gv = new GiaoVien(){
             TenGV = tbxTenGV.Text.ToString() ,
            CMT = int.Parse(tbxCMT.Text),
            GioiTinh = bool.Parse(cmbGioiTinhGV.SelectedIndex.ToString()),
            NgaySinh = dateTimePickerGV.Value,
            Email = tbxEmailGV.Text.ToString(),
            SDT = tbxSDTGV.Text.ToString(),
            TonGiao = tbxTonGiaoGV.Text.ToString(),
            DanToc = tbxDanTocGV.Text.ToString(),
            DiaChi = tbxDiaChiGV.Text.ToString(),
            QueQuan = tbxQQGV.Text.ToString()
            };   
            db.GiaoVien.Add(gv);
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
            AddBinding();
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
