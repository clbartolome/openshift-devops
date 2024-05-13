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

  public Champion(){}

  public Long getId() {
    return id;
  }
  public void setId(Long id) {
    this.id = id;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String gettitle() {
    return title;
  }
  public void settitle(String title) {
    this.title = title;
  }
  public String getPosition() {
    return position;
  }
  public void setPosition(String position) {
    this.position = position;
  }  
  
}
