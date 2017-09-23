package com.apdybank.commercial.util;

import java.util.concurrent.ThreadLocalRandom;

public class ProcessingUtil {
	public static void process(int min, int max) {
		try {
			long sleep = ThreadLocalRandom.current().nextLong(min, max + 1);
			Thread.sleep(sleep);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
	
//	public static long process(int min, int max) {
//		return ThreadLocalRandom.current().nextLong(min, max + 1);
//	}
}
