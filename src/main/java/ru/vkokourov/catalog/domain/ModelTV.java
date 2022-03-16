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
@Table(name = "model_tvs")
public class ModelTV {
    private static final String SEQ_NAME = "model_tv_seq";

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
    @Column(name = "tv_category")
    private String tvCategory;
    @Column(name = "tv_technology")
    private String technology;
    @ManyToOne
    @JoinColumn(name = "firm_tv_id")
    private FirmTV firmTV;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        ModelTV modelTV = (ModelTV) o;
        return id != null && Objects.equals(id, modelTV.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}
