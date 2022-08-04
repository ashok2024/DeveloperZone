using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DeveloperZone.Models
{
    [Table("EmployeePunchTB")]
    public partial class EmployeePunchTb
    {
        [Key]
        public int Id { get; set; }
        [Column("major")]
        [StringLength(50)]
        public string? Major { get; set; }
        [Column("minor")]
        [StringLength(50)]
        public string? Minor { get; set; }
        [Column("time", TypeName = "datetime")]
        public DateTime? Time { get; set; }
        [Column("employeeNoString")]
        [StringLength(50)]
        public string? EmployeeNoString { get; set; }
        [Column("cardNo")]
        [StringLength(50)]
        public string? CardNo { get; set; }
        [Column("cardReaderNo")]
        [StringLength(50)]
        public string? CardReaderNo { get; set; }
        [Column("doorNo")]
        [StringLength(50)]
        public string? DoorNo { get; set; }
        [Column("currentVerifyMode")]
        [StringLength(50)]
        public string? CurrentVerifyMode { get; set; }
        [Column("serialNo")]
        [StringLength(50)]
        public string? SerialNo { get; set; }
        [Column("type")]
        [StringLength(50)]
        public string? Type { get; set; }
        [Column("mask")]
        [StringLength(50)]
        public string? Mask { get; set; }
        [Column("name")]
        [StringLength(50)]
        public string? Name { get; set; }
        [Column("userType")]
        [StringLength(50)]
        public string? UserType { get; set; }
        [Column("deviceIndex")]
        [StringLength(100)]
        public string? DeviceIndex { get; set; }
        [StringLength(50)]
        public string? DeviceAccountId { get; set; }
    }
}
