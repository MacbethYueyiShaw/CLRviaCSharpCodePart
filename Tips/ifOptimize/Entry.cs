using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace ifOptimize
{
    class Entry
    {
        static void Main()
        {
            var p1 = new photo1() { author = "a", id = 1, url = "www.xxx111.com", title = "1" };
            var p1a = new photo1() { author = "1a", id = 11, url = "www.xxx111aaa.com", title = "1" };
            var p2 = new photo2() { author = "a", id = 1, url = "www.xxx111.com", title = "1" };
            var p2a = new photo2() { author = "1a", id = 11, url = "www.xxx111aaa.com", title = "1" };
            var p3 = new photo3() { author = "a", id = 1, url = "www.xxx111.com", title = "1" };
            var p3a = new photo3() { author = "1a", id = 11, url = "www.xxx111aaa.com", title = "1" };
            using (new OperationTimer("compare in one expression"))
            {
                Int32 counter = 0;
                for(Int32 i = 0; i < 100; i++)
                {
                    if (p2.Equals(p2a)) counter++;
                    if (p2.Equals(p2)) counter++;
                }
            }
            using (new OperationTimer("only compare id"))
            {
                Int32 counter = 0;
                for (Int32 i = 0; i < 100; i++)
                {
                    if (p1.Equals(p1a)) counter++;
                    if (p1.Equals(p1)) counter++;
                }
            }
            using (new OperationTimer("compare in mutliple expressions"))
            {
                Int32 counter = 0;
                for (Int32 i = 0; i < 100; i++)
                {
                    if (p3.Equals(p3a)) counter++;
                    if (p3.Equals(p3)) counter++;
                }
            }
            Thread.Sleep(10000);
        }
        // This is useful for doing operation performance timing.
        private sealed class OperationTimer : IDisposable
        {
            private Stopwatch m_stopwatch;
            private String m_text;
            private Int32 m_collectionCount;

            public OperationTimer(String text)
            {
                PrepareForOperation();

                m_text = text;
                m_collectionCount = GC.CollectionCount(0);

                // This should be the last statement in this 
                // method to keep timing as accurate as possible
                m_stopwatch = Stopwatch.StartNew();
            }

            public void Dispose()
            {
                Console.WriteLine("{0} (GCs={1,3}) {2}",
                   (m_stopwatch.Elapsed),
                   GC.CollectionCount(0) - m_collectionCount, m_text);
            }

            private static void PrepareForOperation()
            {
                GC.Collect();
                GC.WaitForPendingFinalizers();
                GC.Collect();
            }
        }
    }
    public struct photo1 : IEquatable<photo1>
    {
        public uint id;
        public string title;
        public string url;
        public string author;

        public bool Equals(photo1 other)
        {
            /*if (id != other.id || title != other.title || author != other.author || url != other.url) return false;
            return true;*/
            return (id == other.id);
        }
    }
    public struct photo2 : IEquatable<photo2>
    {
        public uint id;
        public string title;
        public string url;
        public string author;

        public bool Equals(photo2 other)
        {
            if (id != other.id || title != other.title || author != other.author || url != other.url) return false;
            return true;
            /*if (id == other.id && title == other.title && author == other.author && url == other.url) return true;
            return false;*/
        }
    }
    public struct photo3 : IEquatable<photo3>
    {
        public uint id;
        public string title;
        public string url;
        public string author;

        public bool Equals(photo3 other)
        {
            if (id != other.id) return false;
            if (title != other.title) return false;
            if (author != other.author) return false;
            if (url != other.url) return false;
            return true;
        }
    }
}