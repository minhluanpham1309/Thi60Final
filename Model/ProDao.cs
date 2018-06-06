using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class ProDao
    {
        ThiDBContext db = null;
        public ProDao()
        {
            db = new ThiDBContext();
        }
        public IEnumerable<Pro> GetListID(int id)
        {
            return db.Pros.Where(x=>x.CatID == id);
        }
    
        public bool Delete(int id)
        {
            try
            {
                var model = db.Pros.Find(id);
                db.Pros.Remove(model);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
          
        }
    }
}
