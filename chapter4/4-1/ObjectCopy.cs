using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _4_1
{
    //https://learn.microsoft.com/zh-cn/dotnet/api/system.object.memberwiseclone?view=net-6.0#system-object-memberwiseclone
    public class Employee
    {
        public IdCard card;
        public string name;
        Employee() { }
        public Employee(string name,int id)
        {
            this.name = name;
            card = new IdCard();
            this.card.id = id;
        }
        public Employee ShadowCopy()
        {
            return (Employee)this.MemberwiseClone();
        }
        public Employee DeepCopy()
        {
            Employee res = new Employee();
            res.name = this.name;
            res.card = new IdCard();
            res.card.id = this.card.id;
            return res;
        }
    }
    public class IdCard
    {
        public int id { get; set; }
    }
    internal class ObjectCopy
    {
        public static void Main()
        {
            Employee A = new Employee("A", 1);
            Employee A_SC = A.ShadowCopy();
            Employee A_DC = A.DeepCopy();

            //test sc
            Action log = () =>
            {
                Console.WriteLine("-----A-----\tname:{0},id:{1}", A.name, A.card.id);
                Console.WriteLine("----A_SC---\tname:{0},id:{1}", A_SC.name, A_SC.card.id);
                Console.WriteLine("----A_DC---\tname:{0},id:{1}", A_DC.name, A_DC.card.id);
            };
            Console.WriteLine("At Start:");
            log();

            Console.WriteLine("Modify in A, name: A->A1; id: 1->2");
            A.name = "A1";
            A.card.id = 2;
            log();

            Console.WriteLine("Modify in A_SC, name: A->A2; id: 2->3");
            A_SC.name = "A2";
            A_SC.card.id = 3;
            log();

            Console.WriteLine("Modify in A_DC, name: A->A3; id: 1->4");
            A_DC.name = "A3";
            A_DC.card.id = 4;
            log();

            Console.WriteLine("Modify ref in A, name: A1->A1; card: new(),id set to 5");
            A.card = new IdCard();
            A.card.id = 5;
            log();

            Console.WriteLine("Modify ref in A, id: 5->6");
            A.card.id = 6;
            log();
        }
    }
}
