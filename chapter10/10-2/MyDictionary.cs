using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _10_2
{
    internal class MyDictionary : IEnumerable
    {
        private Int64[] mNums;
        private String[] mStrings;
        public dynamic this[Int32 index]
        {
            get
            {
                if (index > mNums.Length)
                {
                    throw new IndexOutOfRangeException();
                }
                return new { num = mNums[index], str = mStrings[index] };
            }
        }
        public Int64[] Get_mNums()
        {
            return mNums;
        }
        public String[] Get_mStrings()
        {
            return mStrings;
        }
        void Add(String str, Int64 num)
        {
            mNums.Append(num);
            mStrings.Append(str);
        }
        public override string ToString()
        {
            String res = "";
            for(Int32 i = 0; i < mNums.Length; i++)
            {
                res += "num:" + mNums[i].ToString() + " str:" + mStrings[i] + "\n";
            }
            return res;
        }
        public MyDictionary(Int64[] intArray, String[] StrArray)
        {
            mNums = new Int64[intArray.Length];
            for (int i = 0; i < intArray.Length; i++)
            {
                mNums[i] = intArray[i];
            }

            mStrings = new String[StrArray.Length];
            for (int i = 0; i < StrArray.Length; i++)
            {
                mStrings[i] = StrArray[i];
            }
        }

        // Implementation for the GetEnumerator method.
        IEnumerator IEnumerable.GetEnumerator()
        {
            return (IEnumerator)GetEnumerator();
        }

        public MyDictionaryEnum GetEnumerator()
        {
            return new MyDictionaryEnum(mNums,mStrings);
        }

    }
    internal class MyDictionaryEnum : IEnumerator
    {
        private Int64[] mNums;
        private String[] mStrings;

        // Enumerators are positioned before the first element
        // until the first MoveNext() call.
        int position = -1;

        public MyDictionaryEnum(Int64[] intArray, String[] StrArray)
        {
            mNums = intArray;
            mStrings = StrArray;
        }

        public bool MoveNext()
        {
            position++;
            return (position < mNums.Length);
        }

        public void Reset()
        {
            position = -1;
        }

        object IEnumerator.Current
        {
            get
            {
                return Current;
            }
        }

        public dynamic Current
        {
            get
            {
                try
                {
                    return new { num = mNums[position], str = mStrings[position] };
                }
                catch (IndexOutOfRangeException)
                {
                    throw new InvalidOperationException();
                }
            }
        }
    }
}
