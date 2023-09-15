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
public class StateEndpointIntegrationTest {
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
                post("/api/states")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content("{}"))
                .andDo(print())
                .andExpect(status().isMethodNotAllowed());

        this.mvc.perform(
                put("/api/states/1")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content("{}"))
                .andDo(print())
                .andExpect(status().isMethodNotAllowed());

        this.mvc.perform(delete("/api/states/1"))
                .andDo(print())
                .andExpect(status().isMethodNotAllowed());
    }

    @Test
    void testFindStatesByCountryCode() throws Exception {

        this.mvc.perform(get("/api/states/search/findByCountryCode?code=CA"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaTypes.HAL_JSON))
                .andExpect(jsonPath("$._embedded.states[0].id", is(426)))
                .andExpect(jsonPath("$._embedded.states[0].name", is("Alberta")))
                .andExpect(jsonPath("$._embedded.states[0]._links.self.href", is("http://localhost/api/states/426")))
                .andExpect(jsonPath("$._embedded.states[0]._links.state.href", is("http://localhost/api/states/426")))
                .andExpect(jsonPath("$._embedded.states[0]._links.country.href", is("http://localhost/api/states/426/country")))
                .andExpect(jsonPath("$._links.self.href", is("http://localhost/api/states/search/findByCountryCode?code=CA")));
    }
}
