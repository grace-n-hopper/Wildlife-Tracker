import org.sql2o.*;
import java.util.ArrayList;
import java.util.List;

public class Location {
  public int id;
  public String name;
  public String area;

  public Location(String name, String area) {
    this.id = id;
    this.name = name;
    this.area = area;
  }

  public String getName() {
    return name;
  }

  public int getId() {
    return id;
  }

  public String getArea() {
    return area;
  }

  public void save() {

  }

  public static Location find(int id) {

  }

  public static List<Location> all() {

  }

  public void updateName() {

  }

  public void updateArea() {

  }
}
