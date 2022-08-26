namespace Modelss.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Tiec")]
    public partial class Tiec
    {
        [Key]
        public int MaTiec { get; set; }

        [StringLength(100)]
        public string ThoiGian { get; set; }

        [StringLength(100)]
        public string TrangThai { get; set; }
    }
}
