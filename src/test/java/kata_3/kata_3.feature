Feature: kata 3 features


  Scenario: print scenario
    * print 'hello world'
    * print 10 - 15

@smoke
   Scenario: call other feature
     * def getFeature = call read('classpath:callers/helloWorld.feature@tag=helloWorld')

@regression
  Scenario: call age feature
    * def getBirthday = call read('classpath:callers/helloWorld.feature@birthdayCalculate'){birthday: 1992, name: "selcuk"}
    * print getBirthday.age

@smoke
  Scenario: call post feature
    * def model = read('classpath:data/model.json')
    # call token
    # call login (token)
    * def getFeature = call read('classpath:callers/requestCollection.feature') model
   # * print getFeature.response
    * match getFeature.responseStatus == 200
    * print getFeature.responseHeaders['Content-Type']
@load
  Scenario: call get feature with id
    * def myValue = 251
    * def getFeature = call read('classpath:callers/requestCollection.feature@getFeature'){id: '#(myValue)'}
    * match getFeature.response.id == myValue
    * def model = read('classpath:data/schema.json')
    * match getFeature.response == model


  Scenario: request chaining
    * def model = read('classpath:data/model.json')
    * def postFeature = call read('classpath:callers/requestCollection.feature@postFeature') model
    * def id = postFeature.response.id
    * def getFeature = call read('classpath:callers/requestCollection.feature@getFeature'){id: '#(id)'}
    * match model == getFeature.response
    * match model.id == getFeature.response.id
    * def schema = read('classpath:data/schema.json')
    * match getFeature.response == schema
