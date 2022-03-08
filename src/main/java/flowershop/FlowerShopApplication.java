package flowershop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@ServletComponentScan
public class FlowerShopApplication {

	public static void main(String[] args) {
		SpringApplication.run(FlowerShopApplication.class, args);
	}

}
