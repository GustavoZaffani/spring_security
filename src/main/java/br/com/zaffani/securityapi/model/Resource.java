package br.com.zaffani.securityapi.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import java.util.UUID;

@Table(name = "resource")
@Entity(name = "Resource")
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(of = "id")
public class Resource {

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "uuid2")
    private UUID id;

    @NotBlank
    @Column(name = "identifier", unique = true)
    private String identifier;

    @NotBlank
    @Column(name = "label")
    private String label;

    @NotBlank
    @Column(name = "description")
    private String description;

    @NotNull
    @Column(name = "deleted")
    private Boolean deleted;
}
