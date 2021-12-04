@ignore
Feature: hello world feature

  @tag=helloWorld
  Scenario: print hello world
    * print 'hello world'

  @birthdayCalculate
  Scenario: age calculation
    * def toDate =
 """
  function() {
    var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
    var sdf = new SimpleDateFormat('yyyy');
    var date = new java.util.Date();
    return sdf.format(date);
  }
  """
    * def age = toDate() - birthday
    * def myName = name