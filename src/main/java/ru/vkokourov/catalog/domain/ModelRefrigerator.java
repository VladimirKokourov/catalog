package ru.vkokourov.catalog.domain;

import lombok.*;
import org.hibernate.Hibernate;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "model_refrigerators")
public class ModelRefrigerator {
    private static final String SEQ_NAME = "model_refrigerator_seq";

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = SEQ_NAME)
    @SequenceGenerator(name = SEQ_NAME, sequenceName = SEQ_NAME, allocationSize = 1)
    private Long id;
    private String name;
    @Column(name = "serial_number")
    private String serialNumber;
    private String color;
    private String size;
    private BigDecimal price;
    private boolean availability;
    @Column(name = "frig_amount_doors")
    private int amountDoors;
    @Column(name = "frig_type_compressor")
    private String typeCompressor;
    @ManyToOne
    @JoinColumn(name = "firm_refrigerator_id")
    private FirmRefrigerator firmRefrigerator;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        ModelRefrigerator that = (ModelRefrigerator) o;
        return id != null && Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}
