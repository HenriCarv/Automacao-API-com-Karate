Feature: Teste Put

Background:
    * url baseURL
    * def payloadPut01 = read('../../data/payloadPut01.json')

@teste007
Scenario: teste put 001
    Given path '/api/users/2'
    And request payloadPut01
    When method put
    Then status 200