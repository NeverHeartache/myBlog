package org.mindview.util;

public interface StaicInterface {
	default void staicInterface(){
		System.out.println("InterfaceA++showStatic");
	}
	static void showStatic() {
        System.out.println("InterfaceA++showStatic");
    }
}
