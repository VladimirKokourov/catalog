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
@Table(name = "model_computers")
public class ModelComputer {
    private static final String SEQ_NAME = "model_computer_seq";

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
    @Column(name = "comp_category")
    private String compCategory;
    @Column(name = "comp_type_processor")
    private String typeProcessor;
    @ManyToOne
    @JoinColumn(name = "firm_computer_id")
    private FirmComputer firmComputer;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        ModelComputer that = (ModelComputer) o;
        return id != null && Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}
