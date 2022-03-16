package ru.vkokourov.catalog.domain;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "firm_refrigerators")
public class FirmRefrigerator {
    private static final String SEQ_NAME = "firm_refrigerator_seq";

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = SEQ_NAME)
    @SequenceGenerator(name = SEQ_NAME, sequenceName = SEQ_NAME, allocationSize = 1)
    private Long id;
    private String name;
    private String country;
    private String manufacturer;
    @Column(name = "online_order")
    private boolean onlineOrder;
    @OneToMany(mappedBy = "firmRefrigerator")
    @ToString.Exclude
    private List<ModelRefrigerator> modelRefrigeratorList;
}
