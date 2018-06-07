using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.EF
{
    public class ProWithIDCat
    {
        public int ProID { get; set; }

        [StringLength(50)]
        public string ProName { get; set; }

        [StringLength(50)]
        public string ProDes { get; set; }

        public int? Status { get; set; }

        public int? CatID { get; set; }
        [StringLength(50)]
        public string CatName { get; set; }
    }
}
