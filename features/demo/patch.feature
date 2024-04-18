Feature: Teste Patch

Background:
    * url baseURL
    * def payloadPatch01 = read('../../data/payloadPatch01.json')

@teste00
Scenario: teste patch 001
    Given path '/api/users/2'
    And request payloadPatch01
    When method patch
    Then status 200