import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

import static org.junit.jupiter.api.Assertions.*;

public class RunnerTest {

    @Test
    public void testParallel() {
        Results results = Runner.path("classpath:bdd/api/apiTest.feature").tags("~@skipme").parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}