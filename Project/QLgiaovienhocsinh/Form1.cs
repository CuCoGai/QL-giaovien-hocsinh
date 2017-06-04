
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
       public QuanLyGiaoVienVaHocSinhEntities db = new QuanLyGiaoVienVaHocSinhEntities();

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
            dataGridViewGV.Columns[0].HeaderText = "Tên nhân viên";
            dataGridViewGV.Columns[1].HeaderText = "Số CMT";
            dataGridViewGV.Columns[2].HeaderText = "Ngày Sinh";
            dataGridViewGV.Columns[3].HeaderText = "Giới Tính";
            dataGridViewGV.Columns[4].HeaderText = "Số điện thoại";
            dataGridViewGV.Columns[5].HeaderText = "Email";
            dataGridViewGV.Columns[6].HeaderText = "Địa chỉ";
            dataGridViewGV.Columns[7].HeaderText = "Quê quán";
            dataGridViewGV.Columns[8].HeaderText = "Dân tộc";
            dataGridViewGV.Columns[9].HeaderText = "Tôn giáo";
        }

        void LoadDataHS  ()
        {
            this.dataGridViewHS.DataSource = db.HocSinhs.ToList();
            dataGridViewHS.Columns[0].HeaderText = "Mã học sinh";
            dataGridViewHS.Columns[1].HeaderText = "Tên học sinh";
            dataGridViewHS.Columns[2].HeaderText = "Ngày Sinh";
            dataGridViewHS.Columns[3].HeaderText = "Giới Tính";
            dataGridViewGV.Columns[4].HeaderText = "Địa chỉ";
            dataGridViewGV.Columns[5].HeaderText = "Quê quán";
            dataGridViewGV.Columns[6].HeaderText = "Dân tộc";
            dataGridViewGV.Columns[7].HeaderText = "Tôn giáo";
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

        private void Form1_Load_1(object sender, EventArgs e)
        {
            LoadDataGV();
            LoadDataHS();

        }

        #region tìm kiếm
        private void textBoxTKGV_MouseClick_1(object sender, MouseEventArgs e)
        {
            textBoxTKGV.Text = null;
        }

        private void tbxTKHS_MouseClick_1(object sender, MouseEventArgs e)
        {
            tbxTKHS.Text = null;
        }

        private void btnTKHS_Click_1(object sender, EventArgs e)
        {
            var query = from s in db.HocSinhs
                        where s.TenHS.Contains(tbxTKHS.Text) || s.MaHS.ToString().Contains(tbxTKHS.Text)
                        select new
                        {
                            Ma = s.MaHS,
                            Tên = s.TenHS,
                            Date = s.NgaySinh,
                            GioiTinh = s.GioiTinh == true ? "Nam" : "Nữ",
                            Diachi = s.DiaChi,
                            Quequan = s.QueQuan,
                            Dantoc = s.DanToc,
                            Tongiao = s.TonGiao
                        };

            dataGridViewHS.DataSource = query.ToList();
            for (int i = 0; i < dataGridViewHS.RowCount; i++)
            {
                dataGridViewHS.Rows[i].HeaderCell.Value = (i + 1).ToString();
            }
            dataGridViewHS.Columns[0].HeaderText = "Mã học sinh";
            dataGridViewHS.Columns[1].HeaderText = "Tên học sinh";
            dataGridViewHS.Columns[2].HeaderText = "Ngày Sinh";
            dataGridViewHS.Columns[3].HeaderText = "Giới Tính";
            dataGridViewGV.Columns[4].HeaderText = "Địa chỉ";
            dataGridViewGV.Columns[5].HeaderText = "Quê quán";
            dataGridViewGV.Columns[6].HeaderText = "Dân tộc";
            dataGridViewGV.Columns[7].HeaderText = "Tôn giáo";
        }

        private void btnTimKiemGV_Click_1(object sender, EventArgs e)
        {
            var query = from s in db.GiaoViens
                        where s.TenGV.Contains(textBoxTKGV.Text) || s.CMT.ToString().Contains(textBoxTKGV.Text)
                        select new
                        {
                            Tên = s.TenGV,
                            CMT = s.CMT,
                            Date = s.NgaySinh,
                            GioiTinh = s.GioiTinh == true ? "Nam" : "Nữ",
                            SDT = s.SDT,
                            Email = s.Email,
                            Diachi = s.DiaChi,
                            Quequan = s.QueQuan,
                            Dantoc = s.DanToc,
                            Tongiao = s.TonGiao
                        };
            dataGridViewGV.DataSource = query.ToList();
            for (int i = 0; i < dataGridViewGV.RowCount; i++)
            {
                dataGridViewGV.Rows[i].HeaderCell.Value = (i + 1).ToString();
            }
            dataGridViewGV.Columns[0].HeaderText = "Tên nhân viên";
            dataGridViewGV.Columns[1].HeaderText = "Số CMT";
            dataGridViewGV.Columns[2].HeaderText = "Ngày Sinh";
            dataGridViewGV.Columns[3].HeaderText = "Giới Tính";
            dataGridViewGV.Columns[4].HeaderText = "Số điện thoại";
            dataGridViewGV.Columns[5].HeaderText = "Email";
            dataGridViewGV.Columns[6].HeaderText = "Địa chỉ";
            dataGridViewGV.Columns[7].HeaderText = "Quê quán";
            dataGridViewGV.Columns[8].HeaderText = "Dân tộc";
            dataGridViewGV.Columns[9].HeaderText = "Tôn giáo";
        }

        #endregion
    }
}
