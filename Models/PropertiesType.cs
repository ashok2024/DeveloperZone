using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("PropertiesType")]
    public partial class PropertiesType
    {
        public PropertiesType()
        {
            BookViewings = new HashSet<BookViewing>();
            PropertiesDetails = new HashSet<PropertiesDetail>();
        }

        [Key]
        public int PropertiesTypeId { get; set; }
        public string TypeName { get; set; } = null!;
        public int Id { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedById { get; set; }
        public DateTime UpdatedOn { get; set; }
        public Guid UpdatedById { get; set; }
        public bool Deleted { get; set; }

        [InverseProperty("PropertiesType")]
        public virtual ICollection<BookViewing> BookViewings { get; set; }
        [InverseProperty("PropertiesType")]
        public virtual ICollection<PropertiesDetail> PropertiesDetails { get; set; }
    }
}
