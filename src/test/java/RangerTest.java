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
  public void Ranger_rangerInstantiatesCorrectly_true() {
    Ranger ranger = new Ranger ("Wild Bill", "K1234");
    assertEquals(true, ranger instanceof Ranger);
  }

  @Test
  public void getId_rangerInstantiatesWithId_int() {
    Ranger newRanger = new Ranger("Wild Bill", "K1234");
    newRanger.save();
    assertTrue(newRanger.getId() > 0);
  }

  @Test
  public void getName_RangerInstantiatesWithName_string() {
    Ranger ranger = new Ranger("Ray", "K1234");
    ranger.save();
    assertEquals("Ray", ranger.getName());
  }

  @Test
  public void getBadge_rangerInstantiatesWithBadge_string(){
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

  @Test
  public void find_returnsSpecificRangerFromDatabase_true() {
    Ranger ranger = new Ranger("Ray", "K1234");
    ranger.save();
    assertEquals(ranger, Ranger.find(ranger.getId()));
  }

  @Test
  public void update_updatesRangerNameAndOrBadgeInDatabase_string() {
    Ranger ranger = new Ranger("Ray", "K1234");
    ranger.save();
    ranger.update("Rae", "K1235");
    assertTrue(Ranger.find(ranger.getId()).getName().equals("Rae"));
    assertEquals("K1235", Ranger.find(ranger.getId()).getBadge());
  }

  @Test
  public void delete_deletestRanger_null() {
    Ranger ranger = new Ranger("Ray", "K1234");
    ranger.save();
    ranger.delete();
    assertEquals(null, Ranger.find(ranger.getId()));
  }

}
