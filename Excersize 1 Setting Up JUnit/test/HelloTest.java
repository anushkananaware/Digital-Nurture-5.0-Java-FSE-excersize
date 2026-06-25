import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class HelloTest {

    @Test
    public void testAddition() {
        int a = 10;
        int b = 20;
        int sum = a + b;

        assertEquals(30, sum);
    }
}