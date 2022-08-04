using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("Feture")]
    public partial class Feture
    {
        public Feture()
        {
            PropertiesDetails = new HashSet<PropertiesDetail>();
        }

        [Key]
        public int FetureId { get; set; }
        public string FetureName { get; set; } = null!;
        public int Id { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedById { get; set; }
        public DateTime UpdatedOn { get; set; }
        public Guid UpdatedById { get; set; }
        public bool Deleted { get; set; }

        [InverseProperty("Feture")]
        public virtual ICollection<PropertiesDetail> PropertiesDetails { get; set; }
    }
}
