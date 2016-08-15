using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rti.Util
{
    class Program
    {
        static void Main(string[] args)
        {
            foreach (var f in new DirectoryInfo(@"D:\\Projects\\Rti\\Rti\\Source").GetFiles("*.cs", SearchOption.AllDirectories))
            {
                string s = File.ReadAllText(f.FullName);
                File.WriteAllText(f.FullName, s, Encoding.UTF8);
            }
        }
    }
}
