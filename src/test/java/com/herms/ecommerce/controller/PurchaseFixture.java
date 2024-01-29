package com.herms.ecommerce.controller;

import com.herms.ecommerce.dto.Purchase;
import com.herms.ecommerce.entity.Address;
import com.herms.ecommerce.entity.Customer;
import com.herms.ecommerce.entity.Order;
import com.herms.ecommerce.entity.OrderItem;

import java.math.BigDecimal;
import java.util.Set;

public class PurchaseFixture {
    public static Purchase createPurchase() {
        return new Purchase(
                createCustomer(),
                createAddress(),
                createAddress(),
                createOrder(),
                createOrderItems()
        );
    }

    public static Set<OrderItem> createOrderItems() {
        OrderItem coffeemug = new OrderItem();
        coffeemug.setImageUrl("assets/images/products/books/book-luv2code-1000.png");
        coffeemug.setQuantity(1);
        coffeemug.setUnitPrice(BigDecimal.valueOf(14.99));
        coffeemug.setProductId(1L);

        OrderItem mousepad = new OrderItem();
        coffeemug.setImageUrl("assets/images/products/coffeemug/coffeemug-luv2code-1000.png");
        coffeemug.setQuantity(1);
        coffeemug.setUnitPrice(BigDecimal.valueOf(18.99));
        coffeemug.setProductId(6L);
        return Set.of(coffeemug, mousepad);
    }

    public static Order createOrder() {
        Order order = new Order();
        order.setTotalPrice(BigDecimal.valueOf(33.98));
        order.setTotalQuantity(2);
        return order;
    }

    public static Address createAddress() {
        Address address = new Address();
        address.setStreet("afasa");
        address.setCity("afasa");
        address.setState("Alberta");
        address.setCountry("Canada");
        address.setZipCode("afasa");
        return address;
    }

    public static Customer createCustomer() {
        Customer c = new Customer();
        c.setFirstName("afasa");
        c.setLastName("afasa");
        c.setEmail("afasa@test.com");
        return c;
    }
}
