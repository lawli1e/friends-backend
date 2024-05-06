package com.example.test04;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {
        httpSecurity
                .authorizeRequests()
                .mvcMatchers(HttpMethod.GET, "/api/**", "/now", "/").permitAll()
                .mvcMatchers("/login").permitAll() // เพิ่ม URL /login ให้สามารถเข้าถึงได้โดยไม่ต้องมีการตรวจสอบสิทธิ์
                .anyRequest().permitAll();

        // เพิ่ม CORS configuration
        httpSecurity
                .cors().and()
                .csrf().disable(); // ยกเลิกการใช้งาน CSRF
    }
}

