Feature: crud reqeusts
  Background:
    * url baseUrl

  Scenario: create one pet
    * path 'pet'
    * request model
    * method POST
    @getFeature
  Scenario: get callers
    * path 'pet', id
    * method GET



