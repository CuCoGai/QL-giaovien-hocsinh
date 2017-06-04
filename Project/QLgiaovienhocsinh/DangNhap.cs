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
    public partial class DangNhap : Form
    {
        public DangNhap()
        {
            InitializeComponent();
        }
        QuanLyGiaoVienVaHocSinhEntities db = new QuanLyGiaoVienVaHocSinhEntities();
        private void button1_Click(object sender, EventArgs e)
        {
            var query = (from s in db.NguoiDungs
                        where s.TenDN == textBoxTenDN.Text && s.MatKhau == textBoxMK.Text
                        select s).SingleOrDefault();


                if (query==null)
                {
                MessageBox.Show("Tai khoan khong hop le !");
               
                }

                else
                {
                Form1 f = new Form1();
                f.Show();
                this.Hide();

                }



        }
    }
}
