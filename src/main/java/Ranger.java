import org.sql2o.*;
import java.util.ArrayList;
import java.util.List;

public class Ranger{
  public int id;
  public String name;
  // public String badge;
  // public int stationId;

  public Ranger(String name) {
    this.id = id;
    this.name = name;
    // this.badge = badge;
    // this.stationId = stationId;
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

  public void save() {
    try(Connection con = DB.sql2o.open()) {
      String sql = "INSERT INTO rangers(name) VALUES (:name);";
      this.id = (int) con.createQuery(sql, true)
        .addParameter("name", this.name)
        .executeUpdate()
        .getKey();
    }
  }

  // public static List<Ranger> all() {
  //   String sql = "SELECT * FROM rangers;";
  //   try(Connection con = DB.sql2o.open()) {
  //     return con.createQuery(sql).exectueAndFetch(Ranger.class);
  //   }
  // }
  //
  // public static Ranger find(int id) {
  //   try(Connection con = DB.sql20.open()) {
  //     String sql = "SELECT * FROM rangers WHERE id = :id;";
  //     Ranger ranger = con.createQuery(sql)
  //       .addParameter("id", id)
  //       .executeAndFetchFirst(Ranger.class);
  //     return ranger;
  //   }
  // }
  //
  // public void updateName(String name) {
  //
  // }
  //
  // public void updateBadge(String badge) {
  //
  // }

  // public void delete() {
  //   try(Connection con = DB sql2o.open()) {
  //     String sql = "DELETE FROM rangers WHERE id = :id;";
  //     con.createQuery(sql)
  //       .addParameter("id", id);
  //       .executeUpdate();
  //   }
  // }
}
