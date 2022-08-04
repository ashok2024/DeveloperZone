using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    public partial class MessageDetail
    {
        [Key]
        public int MessageDetailId { get; set; }
        public int SenderMobileNumber { get; set; }
        public int RecevierMobileNumber { get; set; }
        public string? Containt { get; set; }
        public int Id { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedById { get; set; }
        public DateTime UpdatedOn { get; set; }
        public Guid UpdatedById { get; set; }
        public bool Deleted { get; set; }
    }
}
