using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("PropertyLocation")]
    [Index("PropertiesDetailsPropertiesDetailId", "PropertiesDetailsLandlordId", "PropertiesDetailsPropertyTypeId", "PropertiesDetailsFeatureId", Name = "IX_PropertyLocation_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_PropertiesD~")]
    public partial class PropertyLocation
    {
        [Key]
        public int PropertyLocationId { get; set; }
        [Key]
        public int PropertyId { get; set; }
        public int? PropertiesDetailsPropertiesDetailId { get; set; }
        public int? PropertiesDetailsLandlordId { get; set; }
        public int? PropertiesDetailsPropertyTypeId { get; set; }
        public int? PropertiesDetailsFeatureId { get; set; }
        public double Latitude { get; set; }
        public double Longitude { get; set; }
        public int Id { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedById { get; set; }
        public DateTime UpdatedOn { get; set; }
        public Guid UpdatedById { get; set; }
        public bool Deleted { get; set; }

        [ForeignKey("PropertiesDetailsPropertiesDetailId,PropertiesDetailsLandlordId,PropertiesDetailsPropertyTypeId,PropertiesDetailsFeatureId")]
        [InverseProperty("PropertyLocations")]
        public virtual PropertiesDetail? PropertiesDetails { get; set; }
    }
}
