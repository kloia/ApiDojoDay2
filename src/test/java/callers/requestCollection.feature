Feature: crud reqeusts
  Background:
    * url baseUrl

    @postFeature
  Scenario: create one pet
    * path 'pet'
    * request model
    * method POST
    @getFeature
  Scenario: get callers
    * path 'pet', id
    * method GET



