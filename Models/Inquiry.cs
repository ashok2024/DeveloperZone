using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("Inquiry")]
    [Index("PropertiesDetailsPropertiesDetailId", "PropertiesDetailsLandlordId", "PropertiesDetailsPropertyTypeId", "PropertiesDetailsFeatureId", Name = "IX_Inquiry_PropertiesDetailsPropertiesDetailId_PropertiesDetailsLandlordId_PropertiesDetailsPropertyTypeId_PropertiesDetailsFea~")]
    public partial class Inquiry
    {
        [Key]
        public int InquiryId { get; set; }
        [Key]
        public int PropertyId { get; set; }
        [Key]
        public int TenantId { get; set; }
        public int? PropertiesDetailsPropertiesDetailId { get; set; }
        public int? PropertiesDetailsLandlordId { get; set; }
        public int? PropertiesDetailsPropertyTypeId { get; set; }
        public int? PropertiesDetailsFeatureId { get; set; }
        public string? Query { get; set; }
        public string? QueryDescription { get; set; }
        public string? Status { get; set; }
        public bool IsActive { get; set; }
        public int Id { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedById { get; set; }
        public DateTime UpdatedOn { get; set; }
        public Guid UpdatedById { get; set; }
        public bool Deleted { get; set; }

        [ForeignKey("PropertiesDetailsPropertiesDetailId,PropertiesDetailsLandlordId,PropertiesDetailsPropertyTypeId,PropertiesDetailsFeatureId")]
        [InverseProperty("Inquiries")]
        public virtual PropertiesDetail? PropertiesDetails { get; set; }
    }
}
