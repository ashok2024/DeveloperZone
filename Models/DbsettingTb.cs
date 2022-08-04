using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("DBSettingTB")]
    public partial class DbsettingTb
    {
        [Key]
        public int Id { get; set; }
        [StringLength(50)]
        public string? DataSource { get; set; }
        [Column("DBName")]
        [StringLength(50)]
        public string? Dbname { get; set; }
        [StringLength(50)]
        public string? UserId { get; set; }
        [StringLength(50)]
        public string? Password { get; set; }
    }
}
