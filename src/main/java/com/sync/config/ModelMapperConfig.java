package com.sync.config;

import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ModelMapperConfig {

    @Bean
    public ModelMapper getMapper() {
        ModelMapper modelMapper = new ModelMapper();
        modelMapper.getConfiguration()
                .setFieldMatchingEnabled(true)
                .setFieldAccessLevel(org.modelmapper.config.Configuration.AccessLevel.PRIVATE)
<<<<<<< HEAD
                .setMatchingStrategy(MatchingStrategies.STRICT);
=======
                .setMatchingStrategy(MatchingStrategies.LOOSE);
>>>>>>> origin/master

        return modelMapper;
    }

}