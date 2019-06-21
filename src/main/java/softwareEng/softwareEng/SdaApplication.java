package softwareEng.softwareEng;



import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@SpringBootApplication(scanBasePackages={"controllers"})
public class SdaApplication  {
	
	public static void main(String[] args) {
		SpringApplication.run(SdaApplication.class, args);
	}
}
