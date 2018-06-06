namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Cat")]
    public partial class Cat
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int CatID { get; set; }

        [StringLength(50)]
        public string CatName { get; set; }

        [StringLength(50)]
        public string CatDes { get; set; }

        public int? Status { get; set; }
    }
}
