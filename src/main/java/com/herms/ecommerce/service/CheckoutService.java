package com.herms.ecommerce.service;

import com.herms.ecommerce.dto.Purchase;
import com.herms.ecommerce.dto.PurchaseResponse;

public interface CheckoutService {

    PurchaseResponse placeOrder(Purchase purchase);
}
