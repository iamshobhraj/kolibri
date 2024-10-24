Feature: Admin deletes users
  Admin needs to be able to delete users from the facility

  Background:
    Given I am signed in to Kolibri as a facility admin user
      And I am at *Facility > Users* page

  Scenario: Delete a user
    When I click on the *Options* button for the user I want to edit
      And I select the *Delete* option
    Then I see *Delete user * modal
    When I click the *Delete* button
    Then the modal closes
      And I see the *Facility > Users* page again
      And I see the *User deleted* snackbar confirmation that the user has been deleted
    When I search for the deleted user in the search field
    Then I see the *No users exist* text

  Scenario: Try (and fail) to delete your own account
    When I click on *Options* button for my own account
    Then I see that the *Delete* option is not active
