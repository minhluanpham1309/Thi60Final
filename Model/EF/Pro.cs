namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Pro")]
    public partial class Pro
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ProID { get; set; }

        [StringLength(50)]
        public string ProName { get; set; }

        [StringLength(50)]
        public string ProDes { get; set; }

        public int? Status { get; set; }

        public int? CatID { get; set; }
    }
}
