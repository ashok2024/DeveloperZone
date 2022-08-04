using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Index("PackageId", "PropertyId", Name = "IX_ContractDetails_PackageId_PropertyId")]
    [Index("PropertiesDetailsPropertiesDetailId", "PropertiesDetailsLandlordId", "PropertiesDetailsPropertyTypeId", "PropertiesDetailsFeatureId", Name = "IX_ContractDetails_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_PropertiesDe~")]
    public partial class ContractDetail
    {
        public ContractDetail()
        {
            RentDetails = new HashSet<RentDetail>();
        }

        [Key]
        public int ContractDetailId { get; set; }
        [Key]
        public int PropertyId { get; set; }
        [Key]
        public int PackageId { get; set; }
        [Column("ContractDetail")]
        public string? ContractDetail1 { get; set; }
        public int? PropertiesDetailsPropertiesDetailId { get; set; }
        public int? PropertiesDetailsLandlordId { get; set; }
        public int? PropertiesDetailsPropertyTypeId { get; set; }
        public int? PropertiesDetailsFeatureId { get; set; }
        public int Id { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedById { get; set; }
        public DateTime UpdatedOn { get; set; }
        public Guid UpdatedById { get; set; }
        public bool Deleted { get; set; }

        [ForeignKey("PackageId,PropertyId")]
        [InverseProperty("ContractDetails")]
        public virtual Package P { get; set; } = null!;
        [ForeignKey("PropertiesDetailsPropertiesDetailId,PropertiesDetailsLandlordId,PropertiesDetailsPropertyTypeId,PropertiesDetailsFeatureId")]
        [InverseProperty("ContractDetails")]
        public virtual PropertiesDetail? PropertiesDetails { get; set; }
        [InverseProperty("ContractDetails")]
        public virtual ICollection<RentDetail> RentDetails { get; set; }
    }
}
