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
    Ranger ranger = new Ranger ("Wild Bill");
    assertEquals(true, ranger instanceof Ranger);
  }

  @Test
  public void Ranger_instantiatesWithId_int() {
    Ranger newRanger = new Ranger("Wild Bill");
    newRanger.save();
    assertTrue(newRanger.getId() > 0);
  }

}
