namespace Model.EF
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ThiDBContext : DbContext
    {
        public ThiDBContext()
            : base("name=ThiDBContext")
        {
        }

        public virtual DbSet<Cat> Cats { get; set; }
        public virtual DbSet<Pro> Pros { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
