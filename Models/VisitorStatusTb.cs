using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("VisitorStatusTB")]
    public partial class VisitorStatusTb
    {
        [Key]
        public int Id { get; set; }
        public int? VisitId { get; set; }
        public int? UserId { get; set; }
        [StringLength(50)]
        public string? Status { get; set; }
        [StringLength(200)]
        public string? Remark { get; set; }
    }
}
