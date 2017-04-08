import org.junit.*;
import static org.junit.Assert.*;
import org.sql2o.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Arrays;

public class RangerTest {
  @Rule
  public DatabaseRule database = new DatabaseRule();

  @Test
  public void Ranger_instantiatesCorrectly_true() {
    Ranger ranger = new Ranger ("Wild Bill", "K1234");
    assertEquals(true, ranger instanceof Ranger);
  }

  @Test
  public void Ranger_instantiatesWithId_int() {
    Ranger newRanger = new Ranger("Wild Bill", "K1234");
    newRanger.save();
    assertTrue(newRanger.getId() > 0);
  }

  @Test
  public void Ranger_instantiatesWithName_string() {
    Ranger ranger = new Ranger("Ray", "K1234");
    ranger.save();
    assertEquals("Ray", ranger.getName());
  }

  @Test
  public void Ranger_instantiatesWithBadge_string(){
    Ranger ranger = new Ranger("Ray", "K1234");
    ranger.save();
    assertEquals("K1234", ranger.getBadge());
  }

  @Test
  public void equals_retunsTrueIfNameEnteredIntoDBAreReturnedCorrectly_true() {
    Ranger ranger = new Ranger("Ray", "K1234");
    Ranger newRanger = new Ranger("Ray", "K1234");
    assertTrue(ranger.equals(newRanger));
  }

  @Test
  public void save_savesRangerIntoDatabase_true() {
    Ranger ranger = new Ranger("Ray", "K1234");
    ranger.save();
    assertTrue(Ranger.all().get(0).equals(ranger));
  }

  @Test
  public void all_returnsAllRangersFromDatabase_true() {
    Ranger ranger = new Ranger("Ray", "K1234");
    ranger.save();
    Ranger newRanger = new Ranger("Raymond", "K1235");
    newRanger.save();
    assertEquals(true, ranger.all().get(0).equals(ranger));
    assertTrue(ranger.all().get(1).equals(ranger));
  }

}
