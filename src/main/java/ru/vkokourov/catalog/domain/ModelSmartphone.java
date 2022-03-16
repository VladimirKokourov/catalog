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
@Table(name = "model_smartphones")
public class ModelSmartphone {
    private static final String SEQ_NAME = "model_smartphone_seq";

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
    @Column(name = "sph_memory")
    private String memory;
    @Column(name = "sph_amount_cameras")
    private int amountOfCameras;
    @ManyToOne
    @JoinColumn(name = "firm_smartphone_id")
    private FirmSmartphone firmSmartphone;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        ModelSmartphone that = (ModelSmartphone) o;
        return id != null && Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}
