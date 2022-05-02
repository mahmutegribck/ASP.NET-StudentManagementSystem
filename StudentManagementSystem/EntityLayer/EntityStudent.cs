using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class EntityStudent
    {
        private string name;
        private string surname;
        private int id;
        private string number;
        private string mail;
        private string password;
        private double balance;

        public string Name { get => name; set => name = value; }
        public string Surname { get => surname; set => surname = value; }
        public int Id { get => id; set => id = value; }
        public string Number { get => number; set => number = value; }
        public string Mail { get => mail; set => mail = value; }
        public string Password { get => password; set => password = value; }
        public double Balance { get => balance; set => balance = value; }
    }
}
