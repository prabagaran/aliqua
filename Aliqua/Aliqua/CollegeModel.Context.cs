﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class aliquadbEntities1 : DbContext
    {
        public aliquadbEntities1()
            : base("name=aliquadbEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<EntityPhoneInfo> EntityPhoneInfoes { get; set; }
        public DbSet<EntityWebsiteInfo> EntityWebsiteInfoes { get; set; }
        public DbSet<LocationType> LocationTypes { get; set; }
        public DbSet<NearbyPlace> NearbyPlaces { get; set; }
        public DbSet<Table_1> Table_1 { get; set; }
        public DbSet<Table_2> Table_2 { get; set; }
        public DbSet<CollegeInfo> CollegeInfoes { get; set; }
        public DbSet<DepartmentInfo> DepartmentInfoes { get; set; }
        public DbSet<Table> Tables { get; set; }
        public DbSet<tagtable> tagtables { get; set; }
    }
}