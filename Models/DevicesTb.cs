using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("DevicesTB")]
    public partial class DevicesTb
    {
        [Key]
        public int DeviceId { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string? DeviceName { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string? DeviceSerialNo { get; set; }
        [Column("IPAddress")]
        [StringLength(50)]
        [Unicode(false)]
        public string? Ipaddress { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string? DeviceStatus { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime? DownloadDate { get; set; }
        [StringLength(255)]
        [Unicode(false)]
        public string? DeviceLocation { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string? DeviceAccountId { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string? DeviceDirection { get; set; }
        [Column("DeviceIPAddress")]
        [StringLength(50)]
        [Unicode(false)]
        public string? DeviceIpaddress { get; set; }
        [StringLength(10)]
        [Unicode(false)]
        public string? Port { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string? UserName { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string? Password { get; set; }
    }
}
