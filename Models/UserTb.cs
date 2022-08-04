using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("UserTB")]
    public partial class UserTb
    {
        [Key]
        public int UserId { get; set; }
        [StringLength(150)]
        public string? Name { get; set; }
        [StringLength(50)]
        public string FirstName { get; set; } = null!;
        [StringLength(50)]
        public string? MiddleName { get; set; }
        [StringLength(50)]
        public string? LastName { get; set; }
        [Column(TypeName = "date")]
        public DateTime? BirthDate { get; set; }
        [StringLength(20)]
        public string? Phone { get; set; }
        [StringLength(10)]
        public string? Gender { get; set; }
        [StringLength(250)]
        public string? Photo { get; set; }
        [StringLength(50)]
        public string? Email { get; set; }
        [StringLength(50)]
        public string? UserName { get; set; }
        [StringLength(50)]
        public string? Password { get; set; }
        [StringLength(150)]
        public string? Address { get; set; }
        [Column(TypeName = "date")]
        public DateTime? LastLoginDate { get; set; }
        [StringLength(20)]
        public string? UserType { get; set; }
        [StringLength(100)]
        public string? Company { get; set; }
        [StringLength(50)]
        public string? Designation { get; set; }
        [StringLength(50)]
        public string? Department { get; set; }
        public int? CompanyId { get; set; }
        public int? DepartmentId { get; set; }
        public int? DesignationId { get; set; }
        public int? BranchId { get; set; }
        [StringLength(20)]
        public string? EmpCode { get; set; }
        [StringLength(20)]
        public string? IdProof { get; set; }
        [StringLength(20)]
        public string? IdProofNumber { get; set; }
        public int? DeviceId { get; set; }
        [StringLength(50)]
        public string? CardNo { get; set; }
    }
}
