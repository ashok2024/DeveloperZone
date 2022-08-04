using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Index("ContractDetailsContractDetailId", "ContractDetailsPropertyId", "ContractDetailsPackageId", Name = "IX_RentDetails_ContractDetailsContractDetailId_ContractDetailsPropertyId_ContractDetailsPackageId")]
    [Index("PackageId", "PropertyId", Name = "IX_RentDetails_PackageId_PropertyId")]
    [Index("PropertiesDetailsPropertiesDetailId", "PropertiesDetailsLandlordId", "PropertiesDetailsPropertyTypeId", "PropertiesDetailsFeatureId", Name = "IX_RentDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_PropertiesDetail~")]
    public partial class RentDetail
    {
        public RentDetail()
        {
            BookViewings = new HashSet<BookViewing>();
        }

        [Key]
        public int RentDetailId { get; set; }
        [Key]
        public int PropertyId { get; set; }
        [Key]
        public int PackageId { get; set; }
        [Key]
        public int ContractId { get; set; }
        [Column("RentDetail")]
        public string? RentDetail1 { get; set; }
        public int? PropertiesDetailsPropertiesDetailId { get; set; }
        public int? PropertiesDetailsLandlordId { get; set; }
        public int? PropertiesDetailsPropertyTypeId { get; set; }
        public int? PropertiesDetailsFeatureId { get; set; }
        public int? ContractDetailsContractDetailId { get; set; }
        public int? ContractDetailsPropertyId { get; set; }
        public int? ContractDetailsPackageId { get; set; }
        public int Id { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedById { get; set; }
        public DateTime UpdatedOn { get; set; }
        public Guid UpdatedById { get; set; }
        public bool Deleted { get; set; }

        [ForeignKey("ContractDetailsContractDetailId,ContractDetailsPropertyId,ContractDetailsPackageId")]
        [InverseProperty("RentDetails")]
        public virtual ContractDetail? ContractDetails { get; set; }
        [ForeignKey("PackageId,PropertyId")]
        [InverseProperty("RentDetails")]
        public virtual Package P { get; set; } = null!;
        [ForeignKey("PropertiesDetailsPropertiesDetailId,PropertiesDetailsLandlordId,PropertiesDetailsPropertyTypeId,PropertiesDetailsFeatureId")]
        [InverseProperty("RentDetails")]
        public virtual PropertiesDetail? PropertiesDetails { get; set; }
        [InverseProperty("RentDetails")]
        public virtual ICollection<BookViewing> BookViewings { get; set; }
    }
}
