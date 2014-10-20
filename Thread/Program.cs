using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

namespace Threads
{
    class Program
    {
        static void Main(string[] args)
        {
            Program pr = new Program();
            ThreadStart ts = new ThreadStart(pr.tick);
            Thread th = new Thread(ts);
            th.Start();
            int control;
            while (true)
            {
                control = Console.Read();
                if (control == (int)'s')//
                {
                    th.Abort();
                    break;
                }
            }
        }

        void tick()
        {
            while (true)
            {
                Console.WriteLine("ticked");
                Thread.Sleep(1000);
            }
        }
    }
}
