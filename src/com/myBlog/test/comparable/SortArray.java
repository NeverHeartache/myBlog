package com.myBlog.test.comparable;

public class SortArray {
	static int[] arr = new int[6]; 
	public SortArray(){
		
	}
	public static void main(String[] args) {
		for(int i=0; i < arr.length; i++){
			int m = (int)Math.round(Math.random()*100);
			arr[i] = m;
			System.out.println(m);
		}
		System.out.println("\n\n");
		for(int i=0; i < arr.length; i++){
			for(int j=i+1; j < arr.length; j++){
				if(arr[i] > arr[j]){
					int t = arr[j];
					arr[j] = arr[i];
					arr[i] = t;
				}
			}
		}
		for(int i=0; i < arr.length; i++){
			System.out.println(arr[i]);
		}
	}
}
