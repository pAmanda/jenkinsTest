package br.com.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

  @GetMapping("/")
  public String webApp() {
      return "Hello Word!!!!!";
  }
}
