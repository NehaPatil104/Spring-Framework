package com.springdemo;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AnnotationBeanScopeDemoApp {

	public static void main(String[] args) {
		
		//load spring config file
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		//retrieve bean from spring container
		Coach theCoach = context.getBean("tennisCoach", Coach.class);
		Coach aplhaCoach = context.getBean("tennisCoach", Coach.class);
		
		boolean result = (theCoach == aplhaCoach);
		
		System.out.println("\nPointing to same object: " + result);
		System.out.println("\nMemory Location for theCoahc: " + theCoach);
		System.out.println("\nMemory Location for alphaCoahc: " + aplhaCoach);
		
		context.close();
	}

}
