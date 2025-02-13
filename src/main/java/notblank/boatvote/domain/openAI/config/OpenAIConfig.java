package notblank.boatvote.domain.openAI.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

@Configuration
public class OpenAIConfig {
    private final String apiKey = System.getenv("GPT_API_KEY");

    @Bean
    public RestTemplate restTemplate(){
        RestTemplate template = new RestTemplate();
        template.getInterceptors().add((request, body, execution) -> {
            request.getHeaders().add(
                    "Authorization"
                    ,"Bearer "+apiKey);
            return execution.execute(request,body);
        });

        return template;

    }
}
