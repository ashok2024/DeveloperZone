using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("VisitorEntryTB")]
    public partial class VisitorEntryTb
    {
        [Key]
        public int Id { get; set; }
        public int? VisitId { get; set; }
        [StringLength(20)]
        public string? VisitorId { get; set; }
        [StringLength(50)]
        public string? Name { get; set; }
        [StringLength(100)]
        public string? Company { get; set; }
        [StringLength(150)]
        public string? Address { get; set; }
        [StringLength(20)]
        public string? InTime { get; set; }
        [StringLength(20)]
        public string? OutTime { get; set; }
        [Column(TypeName = "date")]
        public DateTime? FromDate { get; set; }
        [Column(TypeName = "date")]
        public DateTime? ToDate { get; set; }
        [StringLength(50)]
        public string? EmailId { get; set; }
        [StringLength(20)]
        public string? Contact { get; set; }
        [StringLength(200)]
        public string? Purpose { get; set; }
        [StringLength(200)]
        public string? Remark { get; set; }
        [StringLength(10)]
        public string? Priority { get; set; }
        public int? UserId { get; set; }
        public int? EmployeeId { get; set; }
        [StringLength(20)]
        public string? IdProof { get; set; }
        [StringLength(20)]
        public string? IdProofNumber { get; set; }
        [StringLength(100)]
        public string? Photo { get; set; }
        [StringLength(100)]
        public string? Material { get; set; }
        [StringLength(50)]
        public string? VehicleNo { get; set; }
        [StringLength(50)]
        public string? VehicleType { get; set; }
        [Column("VehiclePUCNo")]
        [StringLength(50)]
        public string? VehiclePucno { get; set; }
        [Column("PUCEndDate", TypeName = "date")]
        public DateTime? PucendDate { get; set; }
        [StringLength(50)]
        public string? VisitorType { get; set; }
        [StringLength(50)]
        public string? DeviceName { get; set; }
        public int? DeviceId { get; set; }
        [StringLength(50)]
        public string? CardNo { get; set; }
        [StringLength(500)]
        public string? CertificateImagePath { get; set; }
    }
}
