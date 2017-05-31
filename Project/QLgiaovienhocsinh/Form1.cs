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
using QLgiaovienhocsinh.Model;

namespace QLgiaovienhocsinh
{

    public partial class Form1 : Form
    {
        public DataGridView dt;
        QuanLyGiaoVienvaHocSinhEntities db = new QuanLyGiaoVienvaHocSinhEntities();

        public Form1()
        {
            InitializeComponent();
            //      LoadDataGV();
            //      AddBinding(); 
        }
        public Form1(DataGridView dataGridViewGV)
        {
            InitializeComponent();
            dataGridViewGV = dt;

        }

        //  #region method

        //  void AddBinding()
        //  {
        //      tbxTenGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "TenGV"));
        //      tbxCMT.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "CMT"));
        //     dateTimePickerGV.DataBindings.Add(new Binding("Text", dataGridViewGV.DataSource, "NgaySinh",true, DataSourceUpdateMode.OnPropertyChanged));
        //      cmbGioiTinhGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "GioiTinh", true, DataSourceUpdateMode.OnPropertyChanged));
        //      tbxEmailGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "Email"));
        //      tbxSDTGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "SDT"));
        //      tbxTonGiaoGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "TonGiao"));
        //      tbxDanTocGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "DanToc"));
        //      tbxDiaChiGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "DiaChi"));
        //      tbxQQGV.DataBindings.Add(new Binding("text", dataGridViewGV.DataSource, "QueQuan"));
        //  }

        //   void LoadDataGV()
        //  {
        //      var gv = (from p in db.GiaoVien
        //               select p).ToList();
        //    dataGridViewGV.DataSource = gv;
        //  }

        //  void LoadDataHS  ()
        //  {
        //      var gv = from p in db.HocSinh
        //               select p;
        //      dataGridViewHS.DataSource = gv.ToList();
        //  }

        //   void clear( )
        //  {
        //      string st = " ";
        //      tbxCMT.Text = st;
        //      tbxTenGV.Text=st;
        //      cmbGioiTinhGV.Items.Clear();
        //      dateTimePickerGV.Value = DateTime.Parse("20-05-2017");
        //      tbxEmailGV.Text=st;
        //      tbxSDTGV.Text = st;
        //      tbxTonGiaoGV.Text = st;
        //      tbxDanTocGV.Text = st;
        //      tbxDiaChiGV.Text = st;
        //      tbxQQGV.Text = st;
        //}

        // void AddGV()
        //  {

        //      GiaoVien gv = new GiaoVien(){
        //       TenGV = tbxTenGV.Text.ToString() ,
        //      CMT = int.Parse(tbxCMT.Text),
        //      GioiTinh = bool.Parse(cmbGioiTinhGV.SelectedIndex.ToString()),
        //      NgaySinh = dateTimePickerGV.Value,
        //      Email = tbxEmailGV.Text.ToString(),
        //      SDT = tbxSDTGV.Text.ToString(),
        //      TonGiao = tbxTonGiaoGV.Text.ToString(),
        //      DanToc = tbxDanTocGV.Text.ToString(),
        //      DiaChi = tbxDiaChiGV.Text.ToString(),
        //      QueQuan = tbxQQGV.Text.ToString()
        //      };   
        //      db.GiaoVien.Add(gv);
        //  }

        //  void EditGV()
        //  {

        //  }



        //  void Save()
        //  {
        //      DialogResult dlr=MessageBox.Show("Lưu tất cả thay đổi?",
        //                      "Save", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question);
        //      if (dlr == DialogResult.Yes)
        //      {
        //          db.SaveChanges();
        //       }
        //  }

        //  #endregion

        //  #region event 
        //  private void buttonAdd_Click(object sender, EventArgs e)
        //  {
        //      AddGV();      
        //  }

        //  private void buttonShow_Click(object sender, EventArgs e)
        //  {
        //      LoadDataGV();
        //  }
        //  private void btn_ShowHS_Click(object sender, EventArgs e)
        //  {
        //      LoadDataHS();
        //  }


        //  private void dataGridViewHS_CellContentClick(object sender, DataGridViewCellEventArgs e)
        //  {

        //  }

        //  private void dataGridViewGV_CellContentClick(object sender, DataGridViewCellEventArgs e)
        //  {
        //      AddBinding();
        //  }

        //  private void buttonSave_Click(object sender, EventArgs e)
        //  {
        //      Save();
        //  }

        //  private void btn_SaveHS_Click(object sender, EventArgs e)
        //  {
        //      Save();
        //  }




        //#endregion
        public void load()
        {
            cmbGioiTinhGV.Items.Clear();
            cmbGioiTinhGV.Items.Add("Nam");
            cmbGioiTinhGV.Items.Add("Nữ");
            dataGridViewGV.DataSource = db.GiaoViens.Select(d => new
            {
                Tên = d.TenGV,
                CMT = d.CMT,
                Date = d.NgaySinh,
                GioiTinh = d.GioiTinh == true ? "Nam" : "Nữ",
                SDT = d.SDT,
                Email = d.Email,
                Diachi = d.DiaChi,
                Quequan = d.QueQuan,
                Dantoc = d.DanToc,
                Tongiao = d.TonGiao
            }).ToList();
            dataGridViewGV.Columns[0].HeaderText = "Tên nhân viên";
            dataGridViewGV.Columns[1].HeaderText = "Số CMT";
            dataGridViewGV.Columns[2].HeaderText = "Ngày Sinh";
            dataGridViewGV.Columns[3].HeaderText = "Giới Tính";
            dataGridViewGV.Columns[4].HeaderText = "SDT";
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            load();
        }
        private void cmbGioiTinhGV_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        private void dataGridViewGV_CellContentClick_1(object sender, DataGridViewCellEventArgs e)
        { 
            int cmt = int.Parse(dataGridViewGV.CurrentRow.Cells[1].Value.ToString());
            GiaoVien gv = db.GiaoViens.SingleOrDefault(s => s.CMT == cmt);
            tbxTenGV.Text = gv.TenGV;
            tbxCMT.Text = gv.CMT.ToString();

            if (gv.GioiTinh.Value == false)
            {
                cmbGioiTinhGV.Text = "Nữ";
            }
            else
            {
                cmbGioiTinhGV.Text = "Nam";
            }
            dtk_ngaysinh.Text = gv.NgaySinh.ToString();
            tbxSDTGV.Text = gv.SDT;
            tbxEmailGV.Text = gv.Email;
            tbxDiaChiGV.Text = gv.DiaChi;
            tbxQQGV.Text = gv.QueQuan;
            tbxDanTocGV.Text = gv.DanToc;
            tbxTonGiaoGV.Text = gv.TonGiao;
        }

        private void buttonAdd_Click(object sender, EventArgs e)
        {
            GiaoVien gv = new GiaoVien();
            gv.TenGV = tbxTenGV.Text;
            gv.CMT = int.Parse(tbxCMT.Text);
            Boolean gioitinh = false;
            if (cmbGioiTinhGV.Text == "Nam")
            {
                gv.GioiTinh = true;
            }
            gv.GioiTinh = gioitinh;
            gv.NgaySinh = DateTime.Parse(dtk_ngaysinh.Text);
            gv.Email = tbxEmailGV.Text;
            gv.SDT = tbxSDTGV.Text;
            gv.DiaChi = tbxDiaChiGV.Text;
            gv.QueQuan = tbxQQGV.Text;
            gv.DanToc = tbxDanTocGV.Text;
            gv.TonGiao = tbxDanTocGV.Text;
            db.GiaoViens.Add(gv);
            try
            {
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi" + ex);
            }
            load();


        }

        private void buttonEdit_Click(object sender, EventArgs e)
        {
            int cmt = Int32.Parse(tbxCMT.Text);
            var g = db.GiaoViens.FirstOrDefault(x => x.CMT == cmt);

            g.CMT = int.Parse(tbxCMT.Text);


            g.TenGV = tbxTenGV.Text;

            Boolean gioiTinh = false;
            if (cmbGioiTinhGV.Text == "Nam")
            {
                gioiTinh = true;
            }
            g.GioiTinh = gioiTinh;
            g.NgaySinh = DateTime.Parse(dtk_ngaysinh.Text);
            g.Email = tbxEmailGV.Text;
            g.SDT = tbxSDTGV.Text;
            g.DiaChi = tbxDiaChiGV.Text;
            g.QueQuan = tbxQQGV.Text;
            g.DanToc = tbxDanTocGV.Text;
            g.TonGiao = tbxTonGiaoGV.Text;

            try
            {
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi" + ex);
            }
            load();
        }

        private void buttonDel_Click(object sender, EventArgs e)
        {
            if (dataGridViewGV.SelectedRows.Count == 0)
            {
                MessageBox.Show("Cần chọn dữ liệu để xóa!", "Thông báo");
                return;
            }
            DialogResult = MessageBox.Show("Bạn có chắc muốn xóa!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            if (DialogResult == DialogResult.OK)
            {
                int cmt = int.Parse(dataGridViewGV.CurrentRow.Cells[1].Value.ToString());
                GiaoVien gv = db.GiaoViens.Single(s => s.CMT == cmt);
                db.GiaoViens.Remove(gv);
                db.SaveChanges();
                load();
            }
        }
    }
}
