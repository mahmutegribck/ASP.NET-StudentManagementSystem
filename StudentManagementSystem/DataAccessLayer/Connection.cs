using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLayer
{
    public class Connection
    {
        public static SqlConnection cnntn = new SqlConnection(@"Data Source=DESKTOP-P4A4V8S;Initial Catalog=DBstdnt;Integrated Security=True");
    }
}