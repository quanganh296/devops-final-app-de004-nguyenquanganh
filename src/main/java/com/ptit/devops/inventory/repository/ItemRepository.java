package com.ptit.devops.inventory.repository;

import com.ptit.devops.inventory.entity.Item;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ItemRepository extends JpaRepository<Item, Long> {
}
