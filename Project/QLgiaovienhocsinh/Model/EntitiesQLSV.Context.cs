﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLgiaovienhocsinh.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class EntitiesQLSV2 : DbContext
    {
        public EntitiesQLSV2()
            : base("name=EntitiesQLSV2")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Ban> Bans { get; set; }
        public virtual DbSet<GiaoVien> GiaoViens { get; set; }
        public virtual DbSet<HocSinh> HocSinhs { get; set; }
        public virtual DbSet<Khoi> Khois { get; set; }
        public virtual DbSet<Lop> Lops { get; set; }
        public virtual DbSet<LopMonHoc> LopMonHocs { get; set; }
        public virtual DbSet<MonHoc> MonHocs { get; set; }
        public virtual DbSet<PhanGiaoVienCN> PhanGiaoVienCNs { get; set; }
        public virtual DbSet<NguoiDung> NguoiDungs { get; set; }
    }
}
