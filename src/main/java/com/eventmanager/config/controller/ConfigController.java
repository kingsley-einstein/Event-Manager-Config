package com.eventmanager.config.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/")
@RestController
public class ConfigController {
  @GetMapping
  public ResponseEntity<Map<String, Object>> ping() {
    Map<String, Object> map = new HashMap<>();
    map.put("statusCode", 200);
    map.put("body", "This is the Event Manager configuration server");
    return new ResponseEntity<>(map, HttpStatus.OK);
  }
}
