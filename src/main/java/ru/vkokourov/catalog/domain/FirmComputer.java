package ru.vkokourov.catalog.domain;

import lombok.*;
import org.hibernate.Hibernate;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "firm_computers")
public class FirmComputer {
    private static final String SEQ_NAME = "firm_computer_seq";

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = SEQ_NAME)
    @SequenceGenerator(name = SEQ_NAME, sequenceName = SEQ_NAME, allocationSize = 1)
    private Long id;
    private String name;
    private String country;
    private String manufacturer;
    @Column(name = "online_order")
    private boolean onlineOrder;
    @OneToMany(mappedBy = "firmComputer")
    @ToString.Exclude
    private List<ModelComputer> modelComputerList;
}
