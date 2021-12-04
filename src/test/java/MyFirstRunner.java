import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit4.Karate;
import org.junit.Test;
import org.junit.runner.RunWith;

import static org.junit.Assert.assertTrue;

public class MyFirstRunner {
    @Test
    public void testParallel() {
        Results results = Runner.path("classpath:kata_3").parallel(5);
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }
}
