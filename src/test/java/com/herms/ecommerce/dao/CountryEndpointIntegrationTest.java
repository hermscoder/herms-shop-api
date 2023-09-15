package com.herms.ecommerce.dao;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.hateoas.MediaTypes;
import org.springframework.http.MediaType;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.springframework.test.web.servlet.MockMvc;
import org.testcontainers.containers.MySQLContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;
import org.testcontainers.utility.DockerImageName;

import static org.hamcrest.Matchers.is;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.put;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@Testcontainers
@AutoConfigureMockMvc
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class CountryEndpointIntegrationTest {
    @Autowired
    private MockMvc mvc;

    @Container
    public static MySQLContainer<?> mySQLContainer = new MySQLContainer<>(DockerImageName.parse("mysql:8.0-debian"))
            .withDatabaseName("full-stack-ecommerce")
            .withInitScript("db/init.sql")
            .withUsername("ecommerceapp")
            .withPassword("ecommerceapp")
            .withEnv("MYSQL_ROOT_PASSWORD", "ecommerceapp");

    @DynamicPropertySource
    static void setupDatabaseProperties(DynamicPropertyRegistry registry) {
        registry.add("spring.datasource.url", () -> mySQLContainer.getJdbcUrl());
        registry.add("spring.datasource.driverClassName", () -> mySQLContainer.getDriverClassName());
        registry.add("spring.datasource.username", () -> mySQLContainer.getUsername());
        registry.add("spring.datasource.password", () -> mySQLContainer.getPassword());
    }

    @Test
    void testReadOnlyCountry() throws Exception {
        this.mvc.perform(
                post("/api/countries")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content("{}"))
                .andDo(print())
                .andExpect(status().isMethodNotAllowed());

        this.mvc.perform(
                put("/api/countries/1")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content("{}"))
                .andDo(print())
                .andExpect(status().isMethodNotAllowed());

        this.mvc.perform(delete("/api/countries/1"))
                .andDo(print())
                .andExpect(status().isMethodNotAllowed());
    }

    @Test
    void testCountryList() throws Exception {

        this.mvc.perform(get("/api/countries"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaTypes.HAL_JSON))
                .andExpect(jsonPath("$._embedded.countries[0].name", is("Andorra")))
                .andExpect(jsonPath("$._embedded.countries[0].code", is("AD")))
                .andExpect(jsonPath("$._embedded.countries[0]._links.self.href", is("http://localhost/api/countries/1")))
                .andExpect(jsonPath("$._embedded.countries[0]._links.country.href", is("http://localhost/api/countries/1")))
                .andExpect(jsonPath("$._embedded.countries[0]._links.states.href", is("http://localhost/api/countries/1/states")))
                .andExpect(jsonPath("$._links.self.href", is("http://localhost/api/countries?page=0&size=20")))
                .andExpect(jsonPath("$._links.profile.href", is("http://localhost/api/profile/countries")))
                .andExpect(jsonPath("$.page.size", is(20)))
                .andExpect(jsonPath("$.page.totalElements", is(43)));
    }
}
