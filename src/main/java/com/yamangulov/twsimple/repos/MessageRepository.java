package com.yamangulov.twsimple.repos;

import com.yamangulov.twsimple.domain.Message;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepository extends CrudRepository<Message, Integer> {
}
