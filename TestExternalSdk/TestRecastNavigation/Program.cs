using RecastNav;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestRecastNavigation
{
    class Program
    {
        static private float[] mPath;
        static IntPtr mRecastHandler = IntPtr.Zero;
        static void Main(string[] args)
        {
            Console.WriteLine("============init");
            try
            {
                //load navi mesh
                String name = "office_navmesh";
                byte[] navdata = File.ReadAllBytes($"../../../RecastNavData/{name}.bin");
                if (navdata == null || navdata.Length <= 0)
                {
                    Console.WriteLine("load navmesh failed!");
                    return;
                }
                mRecastHandler = RecastInterface.RecastLoad(name.GetHashCode(), navdata, navdata.Length);
                if (mRecastHandler != IntPtr.Zero)
                {
                    Console.WriteLine("load navmesh successed!");
                    DrawPath();
                }
                else
                {
                    Console.WriteLine("load navmesh failed!");
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("load navmesh failed:" + e.Message);
            }
            Console.WriteLine("press anykey to exit");
            Console.ReadLine();
        }
        static void DrawPath()
        {
            mPath = new float[RecastInterface.MAX_POLYS * 3];
            float[] extents = { 15, 10, 15 }; ;
            float[] startPos = { -0.233f, 0.011f, -1.326f };
            float[] endPos = { -4.170f, 0.011f, -14.351f };
            var mTriCount = RecastInterface.RecastFind(mRecastHandler, extents, startPos, endPos, mPath);
            for (int i = 0; i < mTriCount; i++)
            {
                var msg = String.Format("path node:{0},{1},{2}", mPath[3 * i], mPath[3 * i + 1], mPath[3 * i + 2]);
                Console.WriteLine(msg);
            }
        }
    }
}
