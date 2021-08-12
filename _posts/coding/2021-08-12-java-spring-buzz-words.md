---
published: true
title: Java Spring buzz words
category: coding
tags: java spring
---
## Spring

Spring Framework is the most popular application development framework of Java. The main feature of the Spring Framework is dependency Injection or Inversion of Control (IoC). With the help of Spring Framework, we can develop a loosely coupled application. It is better to use if application type or characteristics are purely defined.

Source: [https://www.javatpoint.com/spring-vs-spring-boot-vs-spring-mvc](https://www.javatpoint.com/spring-vs-spring-boot-vs-spring-mvc)

## Spring boot

Spring Boot is a module of Spring Framework. It allows us to build a stand-alone application with minimal or zero configurations. It is better to use if we want to develop a simple Spring-based application or RESTful services.

Source: [https://www.javatpoint.com/spring-vs-spring-boot-vs-spring-mvc](https://www.javatpoint.com/spring-vs-spring-boot-vs-spring-mvc)

## Spring Boot Starters

Spring Boot provides a number of starters that allow us to add jars in the classpath. Spring Boot built-in starters make development easier and rapid. Spring Boot Starters are the dependency descriptors.

Source: [https://www.javatpoint.com/spring-boot-starters](https://www.javatpoint.com/spring-boot-starters)

## spring-boot-starter-web

Compile Dependencies:
- spring-web
- spring-webmvc
- spring-boot-starter
- spring-boot-starter-json
- spring-boot-starter-tomcat

Source: [https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-starter-web/2.5.3](https://mvnrepository.com/artifact/org.springframework.boot/spring-boot-starter-web/2.5.3)

## spring-web

spring-web provides core HTTP integration, including some handy Servlet filters, Spring HTTP Invoker, infrastructure to integrate with other web frameworks and HTTP technologies e.g. Hessian, Burlap.

Source: [https://stackoverflow.com/questions/13533700/maven-dependency-spring-web-vs-spring-webmvc](https://stackoverflow.com/questions/13533700/maven-dependency-spring-web-vs-spring-webmvc)

## spring-webmvc

spring-webmvc is an implementation of Spring MVC. spring-webmvc depends on on spring-web, thus including it will transitively add spring-web. You don't have to add spring-web explicitly.

Source: [https://mvnrepository.com/artifact/org.springframework/spring-webmvc/5.3.9](https://mvnrepository.com/artifact/org.springframework/spring-webmvc/5.3.9)

Compile Dependencies:
spring-aop
spring-beans
spring-context
spring-core
spring-expression
spring-web

## Spring MVC

Spring Web MVC is the original web framework built on the Servlet API and has been included in the Spring Framework from the very beginning. The formal name, “Spring Web MVC,” comes from the name of its source module (spring-webmvc), but it is more commonly known as “Spring MVC”.

Source: [https://docs.spring.io/spring-framework/docs/current/reference/html/web.html#spring-web](https://docs.spring.io/spring-framework/docs/current/reference/html/web.html#spring-web)