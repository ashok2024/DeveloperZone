using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("VisitorTB")]
    public partial class VisitorTb
    {
        [Key]
        public int Id { get; set; }
        [StringLength(10)]
        public string? VisitorId { get; set; }
        [StringLength(100)]
        public string? Name { get; set; }
        [StringLength(50)]
        public string? EmailId { get; set; }
        [StringLength(10)]
        public string? Contact { get; set; }
        [StringLength(100)]
        public string? Photo { get; set; }
        [StringLength(100)]
        public string? Company { get; set; }
    }
}
