package performance;

import static io.gatling.javaapi.http.HttpDsl.http;
import static io.gatling.javaapi.http.HttpDsl.status;
import java.time.Duration;
import static io.gatling.javaapi.core.CoreDsl.rampUsers;
import static io.gatling.javaapi.core.CoreDsl.scenario;
import static io.gatling.javaapi.core.CoreDsl.global;
import io.gatling.javaapi.core.ScenarioBuilder;
import io.gatling.javaapi.core.Simulation;
import io.gatling.javaapi.http.HttpProtocolBuilder;

public class BasicSimulation extends Simulation {

  // Read base URL from environment variable or use default
  private static final String BASE_URL = System.getProperty("BASE_URL", "http://localhost:8080");

  HttpProtocolBuilder httpProtocol = http
    .baseUrl(BASE_URL)
    .inferHtmlResources();

  ScenarioBuilder scn = scenario("Main Champions Page")
    .exec(http("Get Index")
      .get("/")
      .check(status().is(200))
    )
    .exec(http("Get style file")
      .get("/styles.css")
      .check(status().is(200))
    )
    .exec(http("Get web javascript")
      .get("/scripts.js")
      .check(status().is(200))
    )
    .exec(http("Get list of champions")
      .get("/champions")
      .check(status().is(200))
    );

  {
    setUp(
      scn.injectOpen(rampUsers(1000).during(Duration.ofMinutes(5)))
    ).protocols(httpProtocol)
    .assertions(
      global().responseTime().mean().lt(2000),  // mean response time < 2 seconds
      global().responseTime().max().lt(5000)    // max response time < 5 seconds
    );
  }
}