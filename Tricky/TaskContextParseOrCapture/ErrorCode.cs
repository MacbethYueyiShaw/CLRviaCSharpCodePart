using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace GritRiver.Feature.Navigation
{
    class pro
    {
        public static void Main()
        {
            //Error occurs because controller got a inner singleton in itself but the instance we init here is not the singleton
            NavigationController controller = new NavigationController();
            
            controller.OnH5RouteClicked("1");
            while (true)
            {
                controller.Update();
            }
        }
    }
    class Component
    {
        public string name;
        public int id;
        public Component(int x,int y)
        {
            id = x;
            name = y.ToString();
        }
    }
    class PathNodePool<T>
    {
        int mCount;
        Func<T> factory;
        Stack<T> mStack = new Stack<T>();

        public PathNodePool(int initialSize, Func<T> factory)
        {
            this.mCount = initialSize;
            this.factory = factory;
            for (int i = 0; i < initialSize; i++)
            {
                T item = factory();
                mStack.Push(item);
            }
        }

        public T Aquire()
        {
            int newCount = Interlocked.Decrement(ref mCount);
            if (newCount < 0)
            {
                Interlocked.Increment(ref mCount);
                return factory();
            }
            else
            {
                return mStack.Pop();
            }
        }

        public void Release(T item)
        {
            mStack.Push(item);
            Interlocked.Increment(ref mCount);
        }
    }

    sealed class NavigationController
    {
        //static NavigationController mInstance = new NavigationController();
        bool mIsRequesting = false;
        bool mIsRouting = false;
        Component mDestinationModel;
        List<Component> mPathNodeList;

        const float mMinimalScaleDistance = 20f;

        /*public static NavigationController Instance()
        {
            return mInstance;
        }*/

        public void Update()
        {
            if (!mIsRouting) return;

            //adjust destination model posture
            foreach(var item in mPathNodeList)
            {
                Console.WriteLine(item.id);
                Console.WriteLine(item.name);
            }
        }

        public void OnH5RouteClicked(string msg)
        {
            if (mIsRequesting) return;
            if (msg == "false")
            {
                //TODO:Exit Route Here
                return;
            }

            //UI thread start a backend task
            mIsRequesting = true;
            mIsRouting = false;
            Task.Run(() => NavigationService.Instance().HandleNavigationRequestAsync())
                .ContinueWith(
                (t) =>
                {
                    //mPathNodeList = new List<Component>();
                    SyncServiceData(t.Result);
                }
                );
        }

        public void SyncServiceData(bool taskResult)
        {
            if (taskResult)
            {
                mPathNodeList = NavigationService.Instance().GetPathNodeList();
                mIsRouting = taskResult;
            }
            mIsRequesting = false;
        }
    }

    class NavigationService
    {
        private static readonly NavigationService mInstance = new NavigationService();
        List<Component> mPathNodeList = new List<Component>();

        static NavigationService()
        {

        }

        private NavigationService()
        {

        }

        public static NavigationService Instance()
        {
            return mInstance;
        }

        public List<Component> GetPathNodeList()
        {
            return mPathNodeList;
        }

        public async Task<bool> HandleNavigationRequestAsync()
        {
            //simulate network delay
            await Task.Delay(1000);
            //handle respone
            for(int i = 0; i < 10; i++)
            {
                mPathNodeList.Add(new Component(i,i));
            }
            return true;
        }
    }
}