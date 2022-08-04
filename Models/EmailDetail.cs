using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    public partial class EmailDetail
    {
        [Key]
        public int EmailDetailId { get; set; }
        public string? ToEmail { get; set; }
        public string? FromEmail { get; set; }
        public string? Subject { get; set; }
        public string? Containt { get; set; }
        public int Id { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedById { get; set; }
        public DateTime UpdatedOn { get; set; }
        public Guid UpdatedById { get; set; }
        public bool Deleted { get; set; }
    }
}
