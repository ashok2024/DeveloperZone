using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Index("PropertiesDetailId", "PropertiesLandlordId", "PropertiesPropertyTypeId", "PropertiesFeatureId", Name = "IX_Packages_PropertiesDetailId_PropertiesLandlordId_PropertiesPropertyTypeId_PropertiesFeatureId")]
    public partial class Package
    {
        public Package()
        {
            BookViewings = new HashSet<BookViewing>();
            ContractDetails = new HashSet<ContractDetail>();
            RentDetails = new HashSet<RentDetail>();
        }

        [Key]
        public int PackageId { get; set; }
        [Key]
        public int PropertyId { get; set; }
        public int? PropertiesDetailId { get; set; }
        public int? PropertiesLandlordId { get; set; }
        public int? PropertiesPropertyTypeId { get; set; }
        public int? PropertiesFeatureId { get; set; }
        public double Price { get; set; }
        public string? AdverticementType { get; set; }
        public int Id { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedById { get; set; }
        public DateTime UpdatedOn { get; set; }
        public Guid UpdatedById { get; set; }
        public bool Deleted { get; set; }

        [ForeignKey("PropertiesDetailId,PropertiesLandlordId,PropertiesPropertyTypeId,PropertiesFeatureId")]
        [InverseProperty("Packages")]
        public virtual PropertiesDetail? Properties { get; set; }
        [InverseProperty("P")]
        public virtual ICollection<BookViewing> BookViewings { get; set; }
        [InverseProperty("P")]
        public virtual ICollection<ContractDetail> ContractDetails { get; set; }
        [InverseProperty("P")]
        public virtual ICollection<RentDetail> RentDetails { get; set; }
    }
}
