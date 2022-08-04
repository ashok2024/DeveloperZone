using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace DeveloperZone.Models
{
    public partial class CoreDbContext : DbContext
    {
        public CoreDbContext()
        {
        }

        public CoreDbContext(DbContextOptions<CoreDbContext> options)
            : base(options)
        {
        }

        public virtual DbSet<ApiMonitorTb> ApiMonitorTbs { get; set; } = null!;
        public virtual DbSet<BookViewing> BookViewings { get; set; } = null!;
        public virtual DbSet<BranchTb> BranchTbs { get; set; } = null!;
        public virtual DbSet<CompanyTb> CompanyTbs { get; set; } = null!;
        public virtual DbSet<ContractDetail> ContractDetails { get; set; } = null!;
        public virtual DbSet<CourierTb> CourierTbs { get; set; } = null!;
        public virtual DbSet<DbsettingTb> DbsettingTbs { get; set; } = null!;
        public virtual DbSet<DepartmentTb> DepartmentTbs { get; set; } = null!;
        public virtual DbSet<DesignationTb> DesignationTbs { get; set; } = null!;
        public virtual DbSet<DeviceLogsTb> DeviceLogsTbs { get; set; } = null!;
        public virtual DbSet<DevicesTb> DevicesTbs { get; set; } = null!;
        public virtual DbSet<EmailDetail> EmailDetails { get; set; } = null!;
        public virtual DbSet<EmployeePunchTb> EmployeePunchTbs { get; set; } = null!;
        public virtual DbSet<EmployeeScheduledVisitTb> EmployeeScheduledVisitTbs { get; set; } = null!;
        public virtual DbSet<Favorite> Favorites { get; set; } = null!;
        public virtual DbSet<Feture> Fetures { get; set; } = null!;
        public virtual DbSet<Inquiry> Inquiries { get; set; } = null!;
        public virtual DbSet<MailSettingTb> MailSettingTbs { get; set; } = null!;
        public virtual DbSet<MessageDetail> MessageDetails { get; set; } = null!;
        public virtual DbSet<Package> Packages { get; set; } = null!;
        public virtual DbSet<PropertiesDetail> PropertiesDetails { get; set; } = null!;
        public virtual DbSet<PropertiesType> PropertiesTypes { get; set; } = null!;
        public virtual DbSet<PropertyLocation> PropertyLocations { get; set; } = null!;
        public virtual DbSet<RentDetail> RentDetails { get; set; } = null!;
        public virtual DbSet<Service> Services { get; set; } = null!;
        public virtual DbSet<UserTb> UserTbs { get; set; } = null!;
        public virtual DbSet<VisitorEntryTb> VisitorEntryTbs { get; set; } = null!;
        public virtual DbSet<VisitorStatusTb> VisitorStatusTbs { get; set; } = null!;
        public virtual DbSet<VisitorTb> VisitorTbs { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=.;Database=VMSDB;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<BookViewing>(entity =>
            {
                entity.HasKey(e => new { e.BookViewId, e.PropertyId, e.PackageId, e.RentId, e.TenantId, e.LandlordId });
            });

            modelBuilder.Entity<ContractDetail>(entity =>
            {
                entity.HasKey(e => new { e.ContractDetailId, e.PropertyId, e.PackageId });

                entity.HasOne(d => d.PropertiesDetails)
                    .WithMany(p => p.ContractDetails)
                    .HasForeignKey(d => new { d.PropertiesDetailsPropertiesDetailId, d.PropertiesDetailsLandlordId, d.PropertiesDetailsPropertyTypeId, d.PropertiesDetailsFeatureId })
                    .HasConstraintName("FK_ContractDetails_PropertiesDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyT~");
            });

            modelBuilder.Entity<Favorite>(entity =>
            {
                entity.HasKey(e => new { e.PropertyId, e.FavoriteId });

                entity.HasOne(d => d.PropertiesDetails)
                    .WithMany(p => p.Favorites)
                    .HasForeignKey(d => new { d.PropertiesDetailsPropertiesDetailId, d.PropertiesDetailsLandlordId, d.PropertiesDetailsPropertyTypeId, d.PropertiesDetailsFeatureId })
                    .HasConstraintName("FK_Favorite_PropertiesDetails_propertiesDetailsPropertiesDetailId_propertiesDetailsLandlordId_propertiesDetailsPropertyTypeId_p~");
            });

            modelBuilder.Entity<Inquiry>(entity =>
            {
                entity.HasKey(e => new { e.InquiryId, e.PropertyId, e.TenantId });

                entity.HasOne(d => d.PropertiesDetails)
                    .WithMany(p => p.Inquiries)
                    .HasForeignKey(d => new { d.PropertiesDetailsPropertiesDetailId, d.PropertiesDetailsLandlordId, d.PropertiesDetailsPropertyTypeId, d.PropertiesDetailsFeatureId })
                    .HasConstraintName("FK_Inquiry_PropertiesDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_Pr~");
            });

            modelBuilder.Entity<Package>(entity =>
            {
                entity.HasKey(e => new { e.PackageId, e.PropertyId });
            });

            modelBuilder.Entity<PropertiesDetail>(entity =>
            {
                entity.HasKey(e => new { e.PropertiesDetailId, e.LandlordId, e.PropertyTypeId, e.FeatureId });
            });

            modelBuilder.Entity<PropertyLocation>(entity =>
            {
                entity.HasKey(e => new { e.PropertyLocationId, e.PropertyId });

                entity.HasOne(d => d.PropertiesDetails)
                    .WithMany(p => p.PropertyLocations)
                    .HasForeignKey(d => new { d.PropertiesDetailsPropertiesDetailId, d.PropertiesDetailsLandlordId, d.PropertiesDetailsPropertyTypeId, d.PropertiesDetailsFeatureId })
                    .HasConstraintName("FK_PropertyLocation_PropertiesDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsProperty~");
            });

            modelBuilder.Entity<RentDetail>(entity =>
            {
                entity.HasKey(e => new { e.RentDetailId, e.PropertyId, e.PackageId, e.ContractId });

                entity.HasOne(d => d.PropertiesDetails)
                    .WithMany(p => p.RentDetails)
                    .HasForeignKey(d => new { d.PropertiesDetailsPropertiesDetailId, d.PropertiesDetailsLandlordId, d.PropertiesDetailsPropertyTypeId, d.PropertiesDetailsFeatureId })
                    .HasConstraintName("FK_RentDetails_PropertiesDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeI~");
            });

            modelBuilder.Entity<Service>(entity =>
            {
                entity.HasKey(e => new { e.ServiceId, e.PropertyId });

                entity.HasOne(d => d.PropertiesDetails)
                    .WithMany(p => p.Services)
                    .HasForeignKey(d => new { d.PropertiesDetailsPropertiesDetailId, d.PropertiesDetailsLandlordId, d.PropertiesDetailsPropertyTypeId, d.PropertiesDetailsFeatureId })
                    .HasConstraintName("FK_Services_PropertiesDetails_propertiesDetailsPropertiesDetailId_propertiesDetailsLandlordId_propertiesDetailsPropertyTypeId_p~");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
