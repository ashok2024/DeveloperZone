using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("Favorite")]
    [Index("PropertiesDetailsPropertiesDetailId", "PropertiesDetailsLandlordId", "PropertiesDetailsPropertyTypeId", "PropertiesDetailsFeatureId", Name = "IX_Favorite_propertiesDetailsPropertiesDetailId_propertiesDetailsLandlordId_propertiesDetailsPropertyTypeId_propertiesDetailsFe~")]
    public partial class Favorite
    {
        [Key]
        public int FavoriteId { get; set; }
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
        public bool IsFavorite { get; set; }
        public int Id { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedById { get; set; }
        public DateTime UpdatedOn { get; set; }
        public Guid UpdatedById { get; set; }
        public bool Deleted { get; set; }

        [ForeignKey("PropertiesDetailsPropertiesDetailId,PropertiesDetailsLandlordId,PropertiesDetailsPropertyTypeId,PropertiesDetailsFeatureId")]
        [InverseProperty("Favorites")]
        public virtual PropertiesDetail? PropertiesDetails { get; set; }
    }
}
