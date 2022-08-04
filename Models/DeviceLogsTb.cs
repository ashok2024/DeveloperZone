using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("DeviceLogsTB")]
    public partial class DeviceLogsTb
    {
        [Key]
        public int LogId { get; set; }
        public int? DeviceAccountId { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime? DownloadDate { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime? AttendDate { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string? PunchStatus { get; set; }
        [Column("EmpID")]
        public int? EmpId { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string? AccessCardNo { get; set; }
        [Column("ADate", TypeName = "date")]
        public DateTime? Adate { get; set; }
        [Column("ATime")]
        public TimeSpan? Atime { get; set; }
    }
}
