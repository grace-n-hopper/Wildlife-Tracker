import org.sql2o.*;
import java.util.ArrayList;
import java.util.List;

public class ConservationStatus {
  public int id;
  public String name;

  public ConservationStatus(String name){
    this.name = name;
    this.id = id;
  }

  public int getId() {
    return id;
  }

  public String getName() {
    return name;
  }

  @Override
  public boolean equals(Object OtherConservationStatus) {
    if(!(OtherConservationStatus instanceof ConservationStatus)) {
      return false;
    } else {
      ConservationStatus newStatus = (ConservationStatus) OtherConservationStatus;
      return this.getName().equals(newStatus.getName());
    }
  }

  // public void save() {
  //
  // }
  //
  // public void updateName() {
  //
  // }
  //
  // public static List<ConservationStatus> all() {
  //
  // }
  //
  // public static ConservationStatus find(int id) {
  //
  // }

}
