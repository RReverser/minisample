using System;
using System.Runtime.InteropServices;

public static class Lib {
	[UnmanagedCallersOnly(EntryPoint = "hello")]
	public static void Hello() {
		Console.WriteLine("Hello from C#");
	}
}
