using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("DesignationTB")]
    public partial class DesignationTb
    {
        [Key]
        public int Id { get; set; }
        [StringLength(50)]
        public string? Name { get; set; }
        public int? DepartmentId { get; set; }
        public int? CompanyId { get; set; }
        public int? BranchId { get; set; }
    }
}
