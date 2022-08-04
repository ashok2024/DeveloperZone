using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Index("PropertiesDetailsPropertiesDetailId", "PropertiesDetailsLandlordId", "PropertiesDetailsPropertyTypeId", "PropertiesDetailsFeatureId", Name = "IX_Services_propertiesDetailsPropertiesDetailId_propertiesDetailsLandlordId_propertiesDetailsPropertyTypeId_propertiesDetailsFe~")]
    public partial class Service
    {
        [Key]
        public int ServiceId { get; set; }
        [Key]
        public int PropertyId { get; set; }
        [Column("propertiesDetailsPropertiesDetailId")]
        public int? PropertiesDetailsPropertiesDetailId { get; set; }
        [Column("propertiesDetailsLandlordId")]
        public int? PropertiesDetailsLandlordId { get; set; }
        [Column("propertiesDetailsPropertyTypeId")]
        public int? PropertiesDetailsPropertyTypeId { get; set; }
        [Column("propertiesDetailsFeatureId")]
        public int? PropertiesDetailsFeatureId { get; set; }
        public string ServiceName { get; set; } = null!;
        public int Id { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedById { get; set; }
        public DateTime UpdatedOn { get; set; }
        public Guid UpdatedById { get; set; }
        public bool Deleted { get; set; }

        [ForeignKey("PropertiesDetailsPropertiesDetailId,PropertiesDetailsLandlordId,PropertiesDetailsPropertyTypeId,PropertiesDetailsFeatureId")]
        [InverseProperty("Services")]
        public virtual PropertiesDetail? PropertiesDetails { get; set; }
    }
}
