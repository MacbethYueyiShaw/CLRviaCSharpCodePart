using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ValueTpyeArrayParse
{
    [Serializable]
    public struct Photo : IEquatable<Photo>
    {
        public uint id;
        public string title;
        public bool Equals(Photo other)
        {
            /*if (id != other.id || title != other.title || author != other.author || url != other.url) return false;
            return true;*/
            return (id == other.id);
        }
        public Photo(uint pid, string name)
        {
            id = pid;
            title = name;
        }
        public override string ToString()
        {
            return id.ToString() + title.ToString();
        }
    }
    public static class PhotoArrayExtension
    {
        public static String LogString(this Photo[] photos)
        {
            string res = "";
            foreach (var item in photos)
            {
                res = res + "id:" + item.id.ToString() + "  title:" + item.title.ToString() + "\n";
            }
            return res;
        }
    }
    class PhotosManager
    {
        Photo[] mPhotos;
        public PhotosManager()
        {
            mPhotos = new Photo[] { new Photo(1, "1"), new Photo(2, "2") };
        }
        public ref Photo[] GetPhotoRef()
        {
            return ref mPhotos;
        }
        //actually GetPhotos() will generate same il to GetPhotoRef()'s because array<valtype>[] is a refclass
        public Photo[] GetPhotos()
        {
            return mPhotos;
        }
        public void LogArray()
        {
            Console.WriteLine(mPhotos.LogString());
        }
    }
    class Entry
    {
        static void Main()
        {
            PhotosManager photosManager = new PhotosManager();
            var p = photosManager.GetPhotoRef();
            p[1].id = 3;
            Console.WriteLine(p.LogString());
            photosManager.LogArray();
            var p2 = photosManager.GetPhotos();
            p2[0].id = 4;
            Console.WriteLine(p.LogString());
            photosManager.LogArray();

            Console.WriteLine("press anykey to exit");
            Console.ReadLine();
        }
    }
}
