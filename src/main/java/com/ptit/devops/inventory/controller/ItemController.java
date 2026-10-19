package com.ptit.devops.inventory.controller;

import com.ptit.devops.inventory.entity.Item;
import com.ptit.devops.inventory.repository.ItemRepository;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class ItemController {

    private final ItemRepository repository;

    public ItemController(ItemRepository repository) {
        this.repository = repository;
    }

    /** GET /api/items - danh sách hàng tồn kho */
    @GetMapping("/items")
    public List<Item> findAll() {
        return repository.findAll(Sort.by("id"));
    }
}
