using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("BookViewing")]
    [Index("PackageId", "PropertyId", Name = "IX_BookViewing_PackageId_PropertyId")]
    [Index("PropertiesDetailId", "PropertiesLandlordId", "PropertiesPropertyTypeId", "PropertiesFeatureId", Name = "IX_BookViewing_PropertiesDetailId_PropertiesLandlordId_PropertiesPropertyTypeId_PropertiesFeatureId")]
    [Index("PropertiesTypeId", Name = "IX_BookViewing_PropertiesTypeId")]
    [Index("RentDetailsRentDetailId", "RentDetailsPropertyId", "RentDetailsPackageId", "RentDetailsContractId", Name = "IX_BookViewing_RentDetailsRentDetailId_RentDetailsPropertyId_RentDetailsPackageId_RentDetailsContractId")]
    public partial class BookViewing
    {
        [Key]
        public int BookViewId { get; set; }
        [Key]
        public int PropertyId { get; set; }
        [Key]
        public int PackageId { get; set; }
        [Key]
        public int RentId { get; set; }
        [Key]
        public int TenantId { get; set; }
        [Key]
        public int LandlordId { get; set; }
        public int? PropertiesDetailId { get; set; }
        public int? PropertiesLandlordId { get; set; }
        public int? PropertiesPropertyTypeId { get; set; }
        public int? PropertiesFeatureId { get; set; }
        public int? RentDetailsRentDetailId { get; set; }
        public int? RentDetailsPropertyId { get; set; }
        public int? RentDetailsPackageId { get; set; }
        public int? RentDetailsContractId { get; set; }
        public int? PropertiesTypeId { get; set; }
        public int Id { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedById { get; set; }
        public DateTime UpdatedOn { get; set; }
        public Guid UpdatedById { get; set; }
        public bool Deleted { get; set; }

        [ForeignKey("PackageId,PropertyId")]
        [InverseProperty("BookViewings")]
        public virtual Package P { get; set; } = null!;
        [ForeignKey("PropertiesDetailId,PropertiesLandlordId,PropertiesPropertyTypeId,PropertiesFeatureId")]
        [InverseProperty("BookViewings")]
        public virtual PropertiesDetail? Properties { get; set; }
        [ForeignKey("PropertiesTypeId")]
        [InverseProperty("BookViewings")]
        public virtual PropertiesType? PropertiesType { get; set; }
        [ForeignKey("RentDetailsRentDetailId,RentDetailsPropertyId,RentDetailsPackageId,RentDetailsContractId")]
        [InverseProperty("BookViewings")]
        public virtual RentDetail? RentDetails { get; set; }
    }
}
