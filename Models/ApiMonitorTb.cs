using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("ApiMonitorTB")]
    public partial class ApiMonitorTb
    {
        [Key]
        public int Id { get; set; }
        [StringLength(50)]
        public string? Page { get; set; }
        [StringLength(50)]
        public string? Action { get; set; }
        [Column("time", TypeName = "datetime")]
        public DateTime? Time { get; set; }
        [StringLength(50)]
        public string? EmpCode { get; set; }
        [StringLength(50)]
        public string? EmpName { get; set; }
        [Column("DeviceSRNO")]
        [StringLength(50)]
        public string? DeviceSrno { get; set; }
        [StringLength(50)]
        public string? DeviceName { get; set; }
        [StringLength(50)]
        public string? Status { get; set; }
        [StringLength(50)]
        public string? Command { get; set; }
    }
}
