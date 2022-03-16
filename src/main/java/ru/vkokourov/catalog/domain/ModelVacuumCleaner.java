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
@Table(name = "model_vacuum_cleaners")
public class ModelVacuumCleaner {
    private static final String SEQ_NAME = "model_vacuum_cleaner_seq";

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
    @Column(name = "vc_size_dust_container")
    private String sizeDustContainer;
    @Column(name = "vc_amount_modes")
    private String amountModes;
    @ManyToOne
    @JoinColumn(name = "firm_vacuum_cleaner_id")
    private FirmVacuumCleaner firmVacuumCleaner;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        ModelVacuumCleaner that = (ModelVacuumCleaner) o;
        return id != null && Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}
