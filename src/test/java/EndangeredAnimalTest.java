import org.junit.*;
import static org.junit.Assert.*;
import org.sql2o.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Arrays;

public class EndangeredAnimalTest {
  @Rule
  public DatabaseRule database = new DatabaseRule();

  @Test
  public void endangeredAnimal_instantiatesCorrectly_true() {
    EndangeredAnimal testEndangeredAnimal = new EndangeredAnimal("Fox");
    assertEquals(true, testEndangeredAnimal instanceof EndangeredAnimal);
  }

  @Test
  public void getHealth_returnsHealthAttribute_String() {
    EndangeredAnimal testEndangeredAnimal = new EndangeredAnimal("Fox");
    testEndangeredAnimal.save();
    testEndangeredAnimal.update("Healthy", "Young");
    EndangeredAnimal updatedAnimal = EndangeredAnimal.find(testEndangeredAnimal.getId());
    assertEquals("Healthy", updatedAnimal.getHealth());
  }

  @Test
  public void getAge_returnsEndangeredAnimalAge_String() {
    EndangeredAnimal testEndangeredAnimal = new EndangeredAnimal("Fox");
    testEndangeredAnimal.save();
    testEndangeredAnimal.update("Healthy", "Young");
    EndangeredAnimal updatedTestEndangeredAnimal = EndangeredAnimal.find(testEndangeredAnimal.getId());
    assertEquals("Young", updatedTestEndangeredAnimal.getAge());
  }

  @Test
  public void getName_returnsEndangeredAnimalName_String() {
    EndangeredAnimal testEndangeredAnimal = new EndangeredAnimal("Fox");
    testEndangeredAnimal.save();
    assertEquals("Fox", testEndangeredAnimal.getName());
  }

  @Test
  public void getId_returnsEndangeredAnimalId_int() {
    EndangeredAnimal testEndangeredAnimal = new EndangeredAnimal("Fox");
    testEndangeredAnimal.save();
    assertTrue(testEndangeredAnimal.getId() > 0);
  }

  @Test
  public void save_assignsIdAndSavesObjectToDatabase() {
    EndangeredAnimal testEndangeredAnimal = new EndangeredAnimal("Fox");
    testEndangeredAnimal.save();
    EndangeredAnimal savedEndangeredAnimal = EndangeredAnimal.all().get(0);
    assertEquals(testEndangeredAnimal.getId(), savedEndangeredAnimal.getId());
  }

  @Test
  public void all_returnsAllInstancesOfEndangeredAnimal_true() {
    EndangeredAnimal firstEndangeredAnimal = new EndangeredAnimal("Fox");
    firstEndangeredAnimal.save();
    EndangeredAnimal secondEndangeredAnimal = new EndangeredAnimal("Badger");
    secondEndangeredAnimal.save();
    assertEquals(true, EndangeredAnimal.all().get(0).equals(firstEndangeredAnimal));
    assertEquals(true, EndangeredAnimal.all().get(1).equals(secondEndangeredAnimal));
  }

  @Test
  public void find_returnsAnimalWithSameId_secondAnimal() {
    EndangeredAnimal firstEndangeredAnimal = new EndangeredAnimal("Fox");
    firstEndangeredAnimal.save();
    EndangeredAnimal secondEndangeredAnimal = new EndangeredAnimal("Badger");
    secondEndangeredAnimal.save();
    assertEquals(EndangeredAnimal.find(secondEndangeredAnimal.getId()), secondEndangeredAnimal);
  }

  @Test
  public void update_updatesHealthAndOrAgeAttribute_true() {
    EndangeredAnimal testEndangeredAnimal = new EndangeredAnimal("Fox");
    testEndangeredAnimal.save();
    testEndangeredAnimal.update("Ill", "Adult");
    assertTrue(EndangeredAnimal.find(testEndangeredAnimal.getId()).getHealth().equals("Ill"));
    assertTrue(EndangeredAnimal.find(testEndangeredAnimal.getId()).getAge().equals("Adult"));
  }
}
