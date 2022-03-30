package common.entity;


import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name="user")
@Data
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id", unique = true, nullable = false)
    private Integer id;

    private String email;

    private String username;

    private String password;

    private String phone;

    private String address;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="id")
    private Room roomId;

}
