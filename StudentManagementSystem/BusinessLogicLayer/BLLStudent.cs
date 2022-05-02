using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer;
using EntityLayer;

namespace BusinessLogicLayer
{
    public class BLLStudent
    {
        public static int StudentAddBLL(EntityStudent parameterAdd)
        {
            if (parameterAdd.Name != null && parameterAdd.Name != "" && parameterAdd.Surname != null && parameterAdd.Surname != "" && parameterAdd.Number != null && parameterAdd.Number != "" && parameterAdd.Password != null && parameterAdd.Password != "" && parameterAdd.Mail != null && parameterAdd.Mail != "")
            {
                return DALStudent.StudentAdd(parameterAdd);
            }
            return -1;
        }
        public static List<EntityStudent> BllList()
        {
            return DALStudent.StudentList();
        }
        public static bool StudentDeleteBLL(int parameterDel)
        {
            if (parameterDel >= 0)
            {
                return DALStudent.StudentDelete(parameterDel);
            }
            return false;
        }
        public static List<EntityStudent> BllDetailList(int pDetail)
        {
            return DALStudent.StudentDetailList(pDetail);
        }
        public static bool StudentUpdateBLL(EntityStudent pStudent)
        {
            if (pStudent.Name != null && pStudent.Surname != null && pStudent.Number != null && pStudent.Password != null && pStudent.Mail != null)
            {
                return DALStudent.StudentUpdate(pStudent);
            }
            return false;
        }
    }
}
