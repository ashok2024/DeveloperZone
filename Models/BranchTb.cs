using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("BranchTB")]
    public partial class BranchTb
    {
        [Key]
        public int Id { get; set; }
        [StringLength(50)]
        public string? Name { get; set; }
        public int? CompanyId { get; set; }
        [StringLength(100)]
        public string? ContactPerson { get; set; }
        [StringLength(10)]
        public string? Phone { get; set; }
        [StringLength(200)]
        public string? Address { get; set; }
    }
}
