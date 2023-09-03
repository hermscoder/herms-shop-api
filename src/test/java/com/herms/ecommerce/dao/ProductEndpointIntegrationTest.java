package com.herms.ecommerce.dao;

import com.herms.ecommerce.utils.IntegrationTestConnection;
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

import static org.hamcrest.Matchers.blankOrNullString;
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
class ProductEndpointIntegrationTest extends IntegrationTestConnection {
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
    static void kafkaProperties(DynamicPropertyRegistry registry) {
        registry.add("spring.datasource.url", () -> mySQLContainer.getJdbcUrl());
        registry.add("spring.datasource.driverClassName", () -> mySQLContainer.getDriverClassName());
        registry.add("spring.datasource.username", () -> mySQLContainer.getUsername());
        registry.add("spring.datasource.password", () -> mySQLContainer.getPassword());
    }

    @Test
    void testApiUrls() throws Exception {
        this.mvc.perform(get("/api")) //
                .andDo(print()) //
                .andExpect(status().isOk()) //
                .andExpect(content().contentType(MediaTypes.HAL_JSON)) //
                .andExpect(jsonPath("$._links.products.href", is("http://localhost/api/products{?page,size,sort}")))
                .andExpect(jsonPath("$._links.productCategory.href", is("http://localhost/api/product-category{?page,size,sort}")))
                .andExpect(jsonPath("$._links.profile.href", is("http://localhost/api/profile")));
    }

    @Test
    void testProductList() throws Exception {

        this.mvc.perform(get("/api/products"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaTypes.HAL_JSON))
                .andExpect(jsonPath("$._embedded.products[0].sku", is("BOOK-TECH-1000")))
                .andExpect(jsonPath("$._embedded.products[0].name", is("JavaScript - The Fun Parts")))
                .andExpect(jsonPath("$._embedded.products[0].description", is("Learn JavaScript")))
                .andExpect(jsonPath("$._embedded.products[0].unitPrice", is(19.99)))
                .andExpect(jsonPath("$._embedded.products[0].imageUrl", is("assets/images/products/placeholder.png")))
                .andExpect(jsonPath("$._embedded.products[0].active", is(true)))
                .andExpect(jsonPath("$._embedded.products[0].unitsInStock", is(100)))
                .andExpect(jsonPath("$._embedded.products[0].dateCreated", is("2023-09-03")))
                .andExpect(jsonPath("$._embedded.products[0].lastUpdated", blankOrNullString()))
                .andExpect(jsonPath("$._embedded.products[0]._links.self.href", is("http://localhost/api/products/1")))
                .andExpect(jsonPath("$._embedded.products[0]._links.product.href", is("http://localhost/api/products/1")))
                .andExpect(jsonPath("$._embedded.products[0]._links.category.href", is("http://localhost/api/products/1/category")))
                .andExpect(jsonPath("$._links.self.href", is("http://localhost/api/products?page=0&size=20")))
                .andExpect(jsonPath("$._links.profile.href", is("http://localhost/api/profile/products")));
    }

    @Test
    void testReadOnlyProducts() throws Exception {
        this.mvc.perform(
                post("/api/products")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content("{}"))
                .andDo(print())
                .andExpect(status().isMethodNotAllowed());

        this.mvc.perform(
                put("/api/products/1")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content("{}"))
                .andDo(print())
                .andExpect(status().isMethodNotAllowed());

        this.mvc.perform(delete("/api/products/1"))
                .andDo(print())
                .andExpect(status().isMethodNotAllowed());
    }


    @Test
    void testProductCategoryList() throws Exception {

        this.mvc.perform(get("/api/product-category"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaTypes.HAL_JSON))
                .andExpect(jsonPath("$._embedded.productCategory[0].categoryName", is("BOOKS")))
                .andExpect(jsonPath("$._embedded.productCategory[0]._links.self.href", is("http://localhost/api/product-category/1")))
                .andExpect(jsonPath("$._embedded.productCategory[0]._links.productCategory.href", is("http://localhost/api/product-category/1")))
                .andExpect(jsonPath("$._embedded.productCategory[0]._links.products.href", is("http://localhost/api/product-category/1/products")))
                .andExpect(jsonPath("$._links.self.href", is("http://localhost/api/product-category?page=0&size=20")))
                .andExpect(jsonPath("$._links.profile.href", is("http://localhost/api/profile/product-category")));
    }
}
