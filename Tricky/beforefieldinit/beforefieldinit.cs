using System;
//https://codeblog.jonskeet.uk/2010/01/26/type-initialization-changes-in-net-4-0/
class Lazy
{
    private static int x = Log();
    private static int y = 0;

    private static int Log()
    {
        Console.WriteLine("Type initialized");
        return 0;
    }

    public static void StaticMethod()
    {
        Console.WriteLine("In static method");
    }

    public static void StaticMethodUsingField()
    {
        Console.WriteLine("In static method using field");
        Console.WriteLine("y = {0}", y);
    }

    public void InstanceMethod()
    {
        Console.WriteLine("In instance method");
    }
}

class LazyTest
{
    static void Main(string[] args)
    {
        Console.WriteLine("Before static method");
        Lazy.StaticMethod();
        Console.WriteLine("Before construction");
        Lazy lazy = new Lazy();
        Console.WriteLine("Before instance method");
        lazy.InstanceMethod();
        Console.WriteLine("Before static method using field");
        Lazy.StaticMethodUsingField();
        Console.WriteLine("End");
    }
}