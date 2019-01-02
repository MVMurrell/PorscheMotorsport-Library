package com.skilldistillery.bootmvc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@EntityScan("com.skilldistillery.JPAPorscheMotorsport")
public class BootMvcPorscheMotorsportApplication extends SpringBootServletInitializer {
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(BootMvcPorscheMotorsportApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(BootMvcPorscheMotorsportApplication.class, args);
	}

}
