import org.sql2o.*;
import java.util.ArrayList;
import java.util.List;

public class Ranger implements BasicInterface {
  public int id;
  public String name;
  public String badge;
  public int stationId;

  public Ranger(String name) {
    this.id = id;
    this.name = name;
    this.badge = badge;
    this.stationId = stationId;
  }

  public int getId() {
    return id;
  }

  public String getName() {
    return name;
  }

  @Override
  public boolean equals(Object otherRanger) {
    if(!(otherRanger instanceof Ranger)) {
      return false;
    } else {
      Ranger newRanger = (Ranger) otherRanger;
      return this.getName().equals(newRanger.getName());
    }
  }

  @Override
  public void save() {

  }

  public static List<Ranger> all() {

  }

  public static Ranger find(int id) {

  }

  public void updateName(String name) {

  }

  public void updateBadge(String badge) {

  }

  @Override
  public void delete() {

  }
}
