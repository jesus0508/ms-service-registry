package pe.com.project1.ms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class MsServiceRegistryApplication {

	public static void main(String[] args) {
		SpringApplication.run(MsServiceRegistryApplication.class, args);
	}

}
