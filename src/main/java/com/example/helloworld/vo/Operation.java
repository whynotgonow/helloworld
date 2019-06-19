package com.example.helloworld.vo;

import lombok.Value;

@Value
public class Operation {
    private String name;
    private String uri;
    private String method;
}
