using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Index("FetureId", Name = "IX_PropertiesDetails_FetureId")]
    [Index("PropertiesTypeId", Name = "IX_PropertiesDetails_PropertiesTypeId")]
    public partial class PropertiesDetail
    {
        public PropertiesDetail()
        {
            BookViewings = new HashSet<BookViewing>();
            ContractDetails = new HashSet<ContractDetail>();
            Favorites = new HashSet<Favorite>();
            Inquiries = new HashSet<Inquiry>();
            Packages = new HashSet<Package>();
            PropertyLocations = new HashSet<PropertyLocation>();
            RentDetails = new HashSet<RentDetail>();
            Services = new HashSet<Service>();
        }

        [Key]
        public int PropertiesDetailId { get; set; }
        [Key]
        public int LandlordId { get; set; }
        [Key]
        public int PropertyTypeId { get; set; }
        [Key]
        public int FeatureId { get; set; }
        public int? PropertiesTypeId { get; set; }
        public string? PropertyName { get; set; }
        public string? Address { get; set; }
        public string? ZipCode { get; set; }
        public string? State { get; set; }
        public string? PropertyDescription { get; set; }
        public int? FetureId { get; set; }
        public int Id { get; set; }
        public DateTime CreatedOn { get; set; }
        public Guid CreatedById { get; set; }
        public DateTime UpdatedOn { get; set; }
        public Guid UpdatedById { get; set; }
        public bool Deleted { get; set; }

        [ForeignKey("FetureId")]
        [InverseProperty("PropertiesDetails")]
        public virtual Feture? Feture { get; set; }
        [ForeignKey("PropertiesTypeId")]
        [InverseProperty("PropertiesDetails")]
        public virtual PropertiesType? PropertiesType { get; set; }
        [InverseProperty("Properties")]
        public virtual ICollection<BookViewing> BookViewings { get; set; }
        [InverseProperty("PropertiesDetails")]
        public virtual ICollection<ContractDetail> ContractDetails { get; set; }
        [InverseProperty("PropertiesDetails")]
        public virtual ICollection<Favorite> Favorites { get; set; }
        [InverseProperty("PropertiesDetails")]
        public virtual ICollection<Inquiry> Inquiries { get; set; }
        [InverseProperty("Properties")]
        public virtual ICollection<Package> Packages { get; set; }
        [InverseProperty("PropertiesDetails")]
        public virtual ICollection<PropertyLocation> PropertyLocations { get; set; }
        [InverseProperty("PropertiesDetails")]
        public virtual ICollection<RentDetail> RentDetails { get; set; }
        [InverseProperty("PropertiesDetails")]
        public virtual ICollection<Service> Services { get; set; }
    }
}
