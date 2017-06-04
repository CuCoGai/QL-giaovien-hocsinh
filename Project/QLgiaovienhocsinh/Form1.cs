
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
       QuanLyGiaoVienVaHocSinhEntities db= new QuanLyGiaoVienVaHocSinhEntities();

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
            int ma = int.Parse(this.dataGridViewHS.CurrentRow.Cells[0].Value.ToString());
            HocSinh hs = db.HocSinhs.Where(s=>s.MaHS==ma).FirstOrDefault();
            txtTenHS.Text = hs.TenHS;
            txtMHS.Text = hs.MaHS.ToString();
            dtpHS.Text = hs.NgaySinh.ToString();
            cmbGioiTinhHS.Text = hs.GioiTinh.ToString();
            txtDiaChiHS.Text = hs.DiaChi;
            txtQQHS.Text = hs.QueQuan;
            txtDanTocHS.Text = hs.DanToc;
            txtTonGiaoHS.Text = hs.TonGiao;
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
            FillDataSV();
        }
        // Học Sinh
        public void FillDataSV()
        {
            cmbGioiTinhHS.Items.Clear();
            cmbGioiTinhHS.Items.Add("Nam");
            cmbGioiTinhHS.Items.Add("Nữ");
            this.dataGridViewHS.DataSource = db.HocSinhs.ToList();
            this.dataGridViewHS.Columns[0].HeaderText = "Mã";
            this.dataGridViewHS.Columns[1].HeaderText = "Tên";
            this.dataGridViewHS.Columns[2].HeaderText = "Ngày Sinh";
            this.dataGridViewHS.Columns[3].HeaderText = "Giới Tính";
            this.dataGridViewHS.Columns[4].HeaderText = "Địa Chỉ";
            this.dataGridViewHS.Columns[5].HeaderText = "Ngôn Ngữ";
            this.dataGridViewHS.Columns[6].HeaderText = "Quê Quán";
            this.dataGridViewHS.Columns[7].HeaderText = "Dân Tộc";
            this.dataGridViewHS.Columns[8].HeaderText = "Tôn Giáo";
        }

        private void tabPage2_Click(object sender, EventArgs e)
        {
            
        }

        private void btn_AddHS_Click(object sender, EventArgs e)
        {
            try
            {
                HocSinh hs = new HocSinh();
                hs.TenHS = txtTenHS.Text;
                hs.NgaySinh = DateTime.Parse(dtpHS.Text);
                Boolean gioitinh = false;
                if (cmbGioiTinhHS.Text == "Nam")
                {
                    hs.GioiTinh = true;
                }
                hs.GioiTinh = gioitinh;
                hs.DiaChi = this.txtDiaChiHS.Text;
                hs.QueQuan = this.txtQQHS.Text;
                hs.DanToc = this.txtDanTocHS.Text;
                hs.TonGiao = this.txtTonGiaoHS.Text;
                db.HocSinhs.Add(hs);
                db.SaveChanges();
                FillDataSV();
                MessageBox.Show("Insert Success!!!");
            }
            catch
            {
                MessageBox.Show("Insert fail!!");
            }
        }

        private void btn_EditHS_Click(object sender, EventArgs e)
        {
            try
            {
                int ma = int.Parse(this.dataGridViewHS.CurrentRow.Cells[0].Value.ToString());
                HocSinh hs = db.HocSinhs.Where(s => s.MaHS == ma).FirstOrDefault();
                if (this.txtTenHS.Text.Length != 0)
                    hs.TenHS = txtTenHS.Text;
                hs.NgaySinh = DateTime.Parse(dtpHS.Text);
                if (hs.GioiTinh.Value == false)
                {
                    cmbGioiTinhHS.Text = "Nữ";
                }
                else
                {
                    cmbGioiTinhHS.Text = "Nam";
                }
                if (this.txtDiaChiHS.Text.Length != 0)
                    hs.DiaChi = this.txtDiaChiHS.Text;
                if (this.txtQQHS.Text.Length != 0)
                    hs.QueQuan = this.txtQQHS.Text;
                if (this.txtDanTocHS.Text.Length != 0)
                    hs.DanToc = this.txtDanTocHS.Text;
                if (this.txtTonGiaoHS.Text.Length != 0)
                    hs.TonGiao = this.txtTonGiaoHS.Text;
                db.SaveChanges();
                FillDataSV();
                MessageBox.Show("Fix Success!!");
            }
            catch
            {
                MessageBox.Show("Fix fail!!");
            }
        }

        private void btn_DelHS_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("Are you sure?", "Confirm", MessageBoxButtons.YesNo);
            if (dr == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    int ma = int.Parse(this.dataGridViewHS.CurrentRow.Cells[0].Value.ToString());
                    HocSinh hs = db.HocSinhs.Where(s => s.MaHS == ma).FirstOrDefault();
                    db.HocSinhs.Remove(hs);
                    db.SaveChanges();
                    FillDataSV();
                    MessageBox.Show("Delete Success");
                }
                catch
                {
                    MessageBox.Show("Delete fail!!");
                }
            }
        }
    }
}
