package common.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "room")
@Data
public class Room {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private int id;

    private Boolean status;
    private String address;
}
