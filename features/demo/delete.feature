Feature: Teste delete

Background:
    * url baseURL

@teste008
Scenario: teste delete 001
    * karate.callSingle('get.feature@teste001')
    Given path '/api/users/2'
    When method delete
    Then status 204