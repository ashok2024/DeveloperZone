using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("CourierTB")]
    public partial class CourierTb
    {
        [Key]
        public int Id { get; set; }
        [StringLength(50)]
        public string? CourierNo { get; set; }
        [StringLength(100)]
        public string? EmployeeName { get; set; }
        [StringLength(50)]
        public string? CourierCompany { get; set; }
        [StringLength(100)]
        public string? CourierPersonName { get; set; }
        [StringLength(20)]
        public string? Time { get; set; }
        [Column(TypeName = "date")]
        public DateTime? Date { get; set; }
        public int? UserId { get; set; }
        [StringLength(200)]
        public string? Description { get; set; }
        public int? EmployeeId { get; set; }
        [StringLength(1000)]
        public string? PhotoPath { get; set; }
        [StringLength(1000)]
        public string? CertifactePath { get; set; }
    }
}
