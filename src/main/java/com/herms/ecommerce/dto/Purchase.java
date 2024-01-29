package com.herms.ecommerce.dto;

import com.herms.ecommerce.entity.Address;
import com.herms.ecommerce.entity.Customer;
import com.herms.ecommerce.entity.Order;
import com.herms.ecommerce.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {
    private final Customer customer;
    private final Address shippingAddress;
    private final Address billingAddress;
    private final Order order;
    private final Set<OrderItem> orderItems;
}
