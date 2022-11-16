using System;
using System.Reflection;

public class Program
{
	public static void Main()
	{
		//LogTypes();
		//LogMemberInfo();
		//LogFields();
		//LogProperties();
		LogMethods();
	}
	public static void LogTypes()
    {
		//write your code here
		var assembly = Assembly.GetExecutingAssembly();
		var types = assembly.GetTypes();
		foreach (var item in types)
		{
			Console.WriteLine(item.Name);
		}
	}
	public static void LogMemberInfo()
    {
		Type theType = Type.GetType("System.Reflection.Assembly");
		Console.WriteLine("\nSingle Type is {0}\n", theType);
		MemberInfo[] mbrInfoArray = theType.GetMembers();
		foreach (MemberInfo mbrInfo in mbrInfoArray)
		{
			Console.WriteLine("{0}			{1}", mbrInfo.MemberType, mbrInfo.Name);
		}
	}
	public static void LogFields()
    {
		Type myType = typeof(University.Student);

		System.Reflection.FieldInfo[] fieldInfo = myType.GetFields();

		University.Student student = new University.Student();

		foreach (System.Reflection.FieldInfo info in fieldInfo)
		{
			switch (info.Name)
			{
				case "myString":
					info.SetValue(student, "string value");
					break;
				case "myInt":
					info.SetValue(student, 42);
					break;
				case "myInstance":
					info.SetValue(student, student);
					break;
			}
		}

		//read back the field information
		foreach (System.Reflection.FieldInfo info in fieldInfo)
		{
			Console.WriteLine(info.Name + ": " +
			   info.GetValue(student).ToString());
		}
	}
	public static void LogProperties()
    {
		Type myType = typeof(University.Student);
		var student = new University.Student();
		PropertyInfo[] propertyInfos = myType.GetProperties();

		foreach (var propertyInfo in propertyInfos)
		{
			Console.Write(propertyInfo.Name + " { ");
			MethodInfo[] accessors = propertyInfo.GetAccessors();
			foreach (var accessor in accessors)
			{
				Console.Write(accessor.Name + "; ");
			}
			Console.WriteLine("}");
			if (propertyInfo.Name == "FullName")
			{
				propertyInfo.SetValue(student, "John Smith");
			}
		}
	}
	public static void LogMethods()
	{
		Type myType = typeof(University.Student);
		var student = new University.Student();
		var methodInfos = myType.GetMethods();
		object[] param = new object[] { 123 };

		foreach (var methodInfo in methodInfos)
		{
			Console.WriteLine(methodInfo.Name);
			if (methodInfo.Name == "SomePublicMethod")
            {
				methodInfo.Invoke(student, param);
            }
		}
		var someMethod = myType.GetMethod("SomePublicMethod");
		
		someMethod.Invoke(student, param);
		var SomeStaticPublicMethod = myType.GetMethod("SomeStaticPublicMethod");
		SomeStaticPublicMethod.Invoke(null, null);
		/*var privateMethod = myType.GetMethod("SomePrivateMethod");
		privateMethod.Invoke(student, null);*/
	}
}


namespace University
{

	public class Student
	{
		public string myString;

		public Student myInstance;

		public int myInt;
		public string FullName { get; set; }

		public int Class { get; set; }

		public DateTime DateOfBirth { get; set; }

		public string GetCharacteristics()
		{
			return "";
		}
		public void SomePublicMethod(Int64 param = 0)
        {
			Console.WriteLine("call SomePublicMethod with Int64 param : {0}", param);
        }
		public static void SomeStaticPublicMethod()
		{
			Console.WriteLine("call SomeStaticPublicMethod");
		}
		void SomePrivateMethod()
		{
			Console.WriteLine("call SomePrivateMethod");
		}
	}

	namespace Department
	{

		public class Professor
		{

			public string FullName { get; set; }

		}
	}
}