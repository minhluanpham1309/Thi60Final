using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class CatDao
    {
        ThiDBContext db = null;
        public CatDao()
        {
            db = new ThiDBContext();
        }
        public IEnumerable<Cat> GetList()
        {
            return db.Cats;
        }
    }
}
