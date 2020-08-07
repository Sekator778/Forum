package com.sekator.controller;

import com.sekator.model.Message;
import com.sekator.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class MainController {
    @Autowired
    MessageRepo messageRepo;

    @GetMapping({"/", "/index"})
    public String greeting() {
        return "/index";
    }

    @GetMapping("/main")
    public String main(Map<String, Object> model) {
        model.put("messages", messageRepo.findAll());
        return "/main";
    }

    @PostMapping("/main")
    public String add(@RequestParam String text, @RequestParam String tag, Map<String, Object> model) {
        messageRepo.save(new Message(text, tag));
        model.put("messages", messageRepo.findAll());
        return "/main";
    }

    @PostMapping("filter")
    public String filter(@RequestParam String tag, Map<String, Object> model) {
        if (tag.isEmpty()) {
            model.put("messages", messageRepo.findAll());
        } else {
            model.put("messages", messageRepo.findByTag(tag));
        }
        return "/main";
    }
}