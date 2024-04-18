Feature: Testes Get

Background:
    * url baseURL

@teste001
Scenario: teste get 001
    Given path '/api/users?page=2'
    When method get
    Then status 200

@teste002
Scenario: teste get 002
    Given path '/api/users/2'
    When method get
    Then status 200

@teste003
Scenario: teste get 002
3
    Given path '/api/users/23'
    When method get
    Then status 404

@teste004
Scenario: teste get 004
    Given path '/api/unknown'
    When method get
    Then status 200