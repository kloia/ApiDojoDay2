Feature: kata 3 features


  Scenario: print scenario
    * print 'hello world'
    * print 10 - 15


   Scenario: call other feature
     * def getFeature = call read('classpath:callers/helloWorld.feature')


  Scenario: call age feature
    * def getBirthday = call read('classpath:callers/helloWorld.feature@birthdayCalculate'){birthday: 1992, name: "selcuk"}
    * print getBirthday.age


  Scenario: call post feature
    * def model = read('classpath:data/model.json')
    # call token
    # call login (token)
    * def getFeature = call read('classpath:callers/requestCollection.feature') model
   # * print getFeature.response
    * match getFeature.responseStatus == 200
    * print getFeature.responseHeaders['Content-Type']

  Scenario: call get feature with id
    * def myValue = 250
    * def getFeature = call read('classpath:callers/requestCollection.feature@getFeature'){id: myValue}
    * match getFeature.response.id == myValue


















