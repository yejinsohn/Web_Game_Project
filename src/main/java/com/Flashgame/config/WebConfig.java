package com.Flashgame.config;

import java.util.List;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.Flashgame.Interceptor.LogInterceptor;
import com.Flashgame.Interceptor.LoginCheckInterceptor;
import com.Flashgame.resolver.AuthArgumentResoler;


@Configuration
public class WebConfig implements WebMvcConfigurer {
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new LogInterceptor
				()) // LogInterceptor 등록
				.order(1)	// 적용할 필터 순서 설정
				.addPathPatterns("auth/**")
				.excludePathPatterns(""); // 인터셉터에서 제외할 패턴
		
		registry.addInterceptor(new LoginCheckInterceptor()) //LoginCheckInterceptor 등록
				.order(2)
				.addPathPatterns("auth/**")
				.excludePathPatterns("");
	}

	@Override
	public void addArgumentResolvers(List<HandlerMethodArgumentResolver> resolvers) {
		resolvers.add(new AuthArgumentResoler());
	}
	
	
}
