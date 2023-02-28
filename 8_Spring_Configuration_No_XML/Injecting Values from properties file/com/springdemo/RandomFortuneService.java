package com.springdemo;

import java.util.Random;

import org.springframework.stereotype.Component;

@Component
public class RandomFortuneService implements FortuneService {
	
	// create an array of Strings
	private String[] data = {
			"Remember...after every dark phase their will be light.",
			"You never really know a man until you walk in his shoes",
			"Your eyes show the strength of your soul"
	};
	
	// create a random number generator
	private Random  myRandom = new Random();

	@Override
	public String getFortune() {
		//pick a random string from the array
		int index = myRandom.nextInt(data.length);
		String theFortune = data[index];
		
		return theFortune;
	}

}
