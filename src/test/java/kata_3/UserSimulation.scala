package kata_3

import com.intuit.karate.gatling.PreDef.{karateFeature, karateProtocol}
import io.gatling.core.Predef.{Simulation, atOnceUsers, constantUsersPerSec, openInjectionProfileFactory, rampUsers, scenario}

import scala.concurrent.duration.DurationInt
import scala.language.postfixOps

class UserSimulation extends Simulation{

  val myFirstScenario = scenario("first load").exec(karateFeature("classpath:kata_3/kata_3.feature@load"))
  val protocol = karateProtocol()
  setUp(
    myFirstScenario.inject(rampUsers(10) during (5 seconds),
      constantUsersPerSec(10) during(10 seconds),
      atOnceUsers(20)).protocols(protocol)
  )
}

