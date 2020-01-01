package com.eventmanager.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@EnableConfigServer
@SpringBootApplication
public class EventManagerCloudConfigApplication {

	public static void main(String[] args) {
		SpringApplication.run(EventManagerCloudConfigApplication.class, args);
	}

}
