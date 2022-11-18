using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Tools;

namespace stringOpCost
{
    class Entry
    {
        static void Main()
        {
            string target = "jkli";
            string str = "wasd jkli".Split(' ').Last();
            using (new OperationTimer("using a reference"))
            {
                for (Int32 i = 0; i < 10000; i++)
                {
                    String a = target;
                }
            }
            using (new OperationTimer("using string operator + to concat a str"))
            {
                for (Int32 i = 0; i < 10000; i++)
                {
                    String a = "mh" + "tr";
                }
            }
            using (new OperationTimer("using string method op to get a str"))
            {
                for (Int32 i = 0; i < 10000; i++)
                {
                    String a = str.Split(' ').Last();
                }
            }
            
            //simulate network file io
            string mPhotoPath = "../../data/";
            string url = "https://bucketname.oss-cn-cityname.aliyuncs.com/pictures/somefile.text";
            /*using (new OperationTimer("using a reference"))
            {
                var path = "../../data/somefile.text";
                //update config file
                var fs = File.Open(path, FileMode.Create);
                String json = "sadasdawdwadwadawdasaxsacadwadascxsadawdsaxacdasdawd";
                byte[] info = new UTF8Encoding(true).GetBytes(json);
                fs.Write(info, 0, info.Length);
                fs.Close();
            }*/
            using (new OperationTimer("using string method op to get a str"))
            {
                string mFileName = url.Split('/').Last();
                //update config file
                var fs = File.Open(mPhotoPath + mFileName, FileMode.Create);
                String json = "sadasdawdwadwadawdasaxsacadwadascxsadawdsaxacdasdawd";
                byte[] info = new UTF8Encoding(true).GetBytes(json);
                fs.Write(info, 0, info.Length);
                fs.Close();
            }
            Thread.Sleep(10000);
        }
    }
}
