using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("EmployeeScheduledVisitTB")]
    public partial class EmployeeScheduledVisitTb
    {
        [Key]
        public int Id { get; set; }
        public int? VisitId { get; set; }
        public int? EmployeeId { get; set; }
    }
}
