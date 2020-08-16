package com.example.sweater.service;

import com.example.sweater.model.Message;
import com.example.sweater.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 */
@Service
public class MessageService {
    @Autowired
    private MessageRepo messageRepo;
    public List<Message> findByTag(String filter) {
        return messageRepo.findByTag(filter);
    }

    public Iterable<Message> findAll() {
        return messageRepo.findAll();
    }
}
