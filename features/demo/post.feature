Feature: Testes Post

Background:
    * url baseURL
    * def payloadPost01 = read('../../data/payloadPost01.json')
    * def payloadPost03 = read('../../data/payloadPost03.json')
    * def payloadPost04 = read('../../data/payloadPost04.json')

@teste005
Scenario: teste post 001
    Given path '/api/users'
    And request payloadPost01
    When method post
    Then status 201

@teste006
Scenario: teste post 002
    Given path '/api/users'
    And request payloadPost01
    When method post
    Then status 201

@teste009
Scenario: teste post 003
    Given path '/api/register'
    And request payloadPost03
    When method post
    Then status 200

@teste010
Scenario: teste post 003
    Given path '/api/login'
    And request payloadPost04
    When method post
    Then status 200