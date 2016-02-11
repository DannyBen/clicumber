Feature: Clicumber Showcase

Scenario: Simple execution
   When I run: echo "hello world"
   Then the output should contain "hello world"

Scenario: Quoted simple execution
   When I run "ls -la"
   Then the output should say "config"
    And the output should say "features"
    But the output should not say "Batata Republic"

Scenario: Execute in a given folder
  Given I am in the "features" folder
   When I run "pwd"
   Then the output should say "/features"

Scenario: Command that generates a file
  Given I am in the "sandbox" folder
   When I run: echo "Y U NO RUN?" > meme.txt
   Then the file "meme.txt" should exist
    And the file "meme.txt" should contain "Y U NO"
    And the file "meme.txt" should not contain "my password"

Scenario: Command that deletes a file
  Given I am in the "sandbox" directory
    And the file "cl4p-tp.txt" exists
   When I run: rm "cl4p-tp.txt"
   Then the file "cl4p-tp.txt" should not exist

Scenario: Command that creates a folder
  Given the folder "sandbox/hyperion" exists
    And I am in the "sandbox" folder
   When I run: rmdir "hyperion"
   Then the folder "hyperion" should not exist

