using Cau_1.DAL;
using Cau_1.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cau_1.BAL
{
    class EmployeeBAL
    {
        EmployeeDAL dal = new EmployeeDAL();
        public List<EmployeeDTO> ReadDepartment()
        {
            List<EmployeeDTO> lstCus = dal.ReadDepartment();
            return lstCus;
        }
        public void ThemDepartment_2119110267(EmployeeDTO cn)
        {
            dal.ThemDepartment_2119110267(cn);
        }
        public void XoaDepartment_2119110267(EmployeeDTO cn)
        {
            dal.XoaDepartment_2119110267(cn);
        }
        public void SuaDepartment_2119110267(EmployeeDTO cn)
        {
            dal.SuaDepartment_2119110267(cn);
        }
    }
}
