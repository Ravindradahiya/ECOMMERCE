package com.ravi;

import java.util.ArrayList;

public class jvm {

	private static final int MegaBytes = 10241024;
	

    public static void main(String[] args) {
		
        ArrayList objects = new ArrayList();

	       
		long freeMemory = Runtime.getRuntime().freeMemory()/MegaBytes;
        long totalMemory = Runtime.getRuntime().totalMemory()/MegaBytes;
        long maxMemory = Runtime.getRuntime().maxMemory()/MegaBytes;

        System.out.println("JVM freeMemory: " + freeMemory);
        System.out.println("JVM totalMemory also equals to initial heap size of JVM : "
                                   + totalMemory);
        System.out.println("JVM maxMemory also equals to maximum heap size of JVM: "
                                   + maxMemory);


        for (int i = 0; i < 10000000; i++) {
               objects.add(("" + 10 * 2710));
        }

        freeMemory = Runtime.getRuntime().freeMemory() / MegaBytes;
        totalMemory = Runtime.getRuntime().totalMemory() / MegaBytes;
        maxMemory = Runtime.getRuntime().maxMemory() / MegaBytes;

        System.out.println("Used Memory in JVM: " + (maxMemory - freeMemory));
        System.out.println("freeMemory in JVM: " + freeMemory);
        System.out.println("totalMemory in JVM shows current size of java heap : "
                                   + totalMemory);
        System.out.println("maxMemory in JVM: " + maxMemory);

        
//        5. Suggested Java Memory
//        Below is my suggested value for a small to medium Java application :)
//
//        Heap = -Xms512m -Xmx1024m
//        PermGen = -XX:PermSize=64m -XX:MaxPermSize=128m
//        Thread = -Xss512k
//        P.S For most Java projects, 512k for a thread is sufficient.
//        C:\java -XX:+PrintFlagsFinal -version | findstr /i "HeapSize PermSize ThreadStackSize"
        
//      Q. What is -version?
//      A. Avoid the complaints from Java compiler, replace the “-version” with your Java application name.
//
//      	$ java -XX:+PrintFlagsFinal {your-java-program} | grep HeapSize
//      Q. What is -XX:+PrintCommandLineFlags?
//      A. This -XX:+PrintCommandLineFlags is used to print out the values that modified by VM only (indicated by this := symbol).
    }
}
