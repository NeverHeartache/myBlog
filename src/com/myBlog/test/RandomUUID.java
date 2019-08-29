package com.myBlog.test;

import java.util.UUID;

public class RandomUUID {
	public static String getOrderIdByUUId() {
	      int machineId = 1;//最大支持1-9个集群机器部署
	      int hashCodeV = UUID.randomUUID().toString().hashCode();
	      if(hashCodeV < 0) {//有可能是负数
	          hashCodeV = - hashCodeV;
	      }
	      // 0 代表前面补充0     
	      // 4 代表长度为4     
	      // d 代表参数为正数型
	      return machineId + String.format("%015d", hashCodeV);
	  }
	
	@SuppressWarnings("static-access")
	public static void main(String[] args) {
		UUID uuid = new UUID(16,16);
		System.out.println(uuid.toString().replace("-", ""));
		System.out.println(UUID.randomUUID().toString().replace("-", ""));
		System.out.println(getOrderIdByUUId());
	}
}
