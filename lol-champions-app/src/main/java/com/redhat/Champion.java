package com.redhat;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "champion")
public class Champion  extends PanacheEntityBase {

  @Id
  @GeneratedValue
  private Long id;
  @Column(name = "name")
  private String name;
  @Column(name = "title")
  private String title;
  @Column(name = "position")
  private String position;

  public Long getId() {
    return id;
  }

  public String getName() {
    return name;
  }

  public String gettitle() {
    return title;
  }

  public String getPosition() {
    return position;
  }

}
