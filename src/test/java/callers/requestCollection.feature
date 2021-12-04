Feature: crud reqeusts
  Background:
    * url baseUrl

  Scenario: create one pet
    * print __arg
    * path 'pet'
    * request model
    * method POST


