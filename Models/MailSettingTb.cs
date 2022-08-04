using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("MailSettingTB")]
    public partial class MailSettingTb
    {
        [Key]
        public int Id { get; set; }
        [StringLength(50)]
        public string? Host { get; set; }
        [Column("smtpfrom")]
        [StringLength(50)]
        public string? Smtpfrom { get; set; }
        [Column("port")]
        public int? Port { get; set; }
        [Column("username")]
        [StringLength(50)]
        public string? Username { get; set; }
        [Column("password")]
        [StringLength(50)]
        public string? Password { get; set; }
    }
}
