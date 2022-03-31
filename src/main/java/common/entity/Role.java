package common.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "role", uniqueConstraints = @UniqueConstraint(columnNames = "type"))
public class Role implements java.io.Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "role_id", unique = true, nullable = false)
    private int roleId;

    @Column(name = "name", nullable = false, length = 32)
    private String name;

    @Column(name = "type", unique = true, nullable = false, length = 32)
    private String type;

    @OneToOne(mappedBy = "role")
    private User user;
}
