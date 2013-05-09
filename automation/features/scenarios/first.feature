Feature: First

  As a user
  I want to know that I've launched the application with no Intent
  So tha I can


  Scenario: The application is launched without intent
    When I launch the application with the instrumentation
    Then I see the message 'no data sent with Intent (probably)'
