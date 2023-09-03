package com.herms.ecommerce.utils;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

public abstract class IntegrationTestConnection {

    @Value(value="${local.server.port}")
    private int port;
    @Value(value="${spring.data.rest.base-path}")
    private String basePath;

    private static final String LOCALHOST = "http://localhost";

    public String getUrl(String resource){
        return LOCALHOST + ":" + port + "/" + basePath + "/" + resource;
    }
    public String getUrl(){
        return getUrl("");
    }
}
