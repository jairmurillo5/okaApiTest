@Test
Feature: ApiTest_01

  @CP001
  Scenario Outline: CP001 - Validar que el endpoint responda con 200 - OK [OBTENCIÓN DE ORDENES]
    Given url apiURL + '/store/order/' + <orden>
    When method get
    Then status 200

    Examples:
    |orden|
    | 2   |


  @CP002
  Scenario Outline: CP002 - Validar que el endpoint responda con 404 - OK [OBTENCIÓN DE ORDENES]
    Given url apiURL + '/store/order/' + <orden>
    When method get
    Then status 404

    Examples:
      |orden|
      | -1   |


  @CP003
    Scenario: CP003 - Validar que el endpoint responda con 200 - OK [CREACIÓN DE ORDENES]
    Given url apiURL + '/store/order'
    * def body = read('classpath:req/testapi.json')
    And request body
    When method post
    Then status 200



  @CP004
  Scenario Outline: CP003 - Validar que el endpoint responda con 200 - OK [ELIMINACIÓN DE ORDENES]
    Given url apiURL + '/store/order/' + <orden>
    When method delete
    Then status 200
    Examples:
      |orden|
      | 100   |





