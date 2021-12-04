Feature: kata 3 features


  Scenario: print scenario
    * print 'hello world'
    * print 10 - 15


   Scenario: call other feature
     * def getFeature = call read('classpath:callers/helloWorld.feature')


  Scenario: call age feature
    * def getBirthday = call read('classpath:callers/helloWorld.feature@birthdayCalculate'){birthday: 1992, name: "selcuk"}
    * print getBirthday.age


  Scenario:
    # call post feature
    # print response
    # verify status code