package common.service;

import common.entity.User;

import java.util.List;
import java.util.Optional;

public interface UserService {

    List<User> findAll();

    List<User> search(String term);

    Optional<User> findOne(Integer id);

    void save(User user);

    void delete(Integer id);
}
