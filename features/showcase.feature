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

Scenario: Command that deletes a folder
  Given I am in the "sandbox" folder
    And the folder "hyperion" exists
   When I run: rmdir "hyperion"
   Then the folder "hyperion" should not exist

Scenario: Command that creates a folder
  Given I am in the "sandbox" folder
    And the folder "hyperion" does not exist
   When I run: mkdir "hyperion"
   Then the folder "hyperion" should exist

@current
Scenario: Checking for an empty directory
  Given the folder "sandbox/tmp" exists
    And I am in the "sandbox/tmp" folder
    And the folder is not empty
   When I run: rm "file_zero"
   Then the folder should be empty

Scenario: Checking for file presence
  Given I am in the "sandbox" folder
    And the file "passwords.txt" does not exist
   When I run: cat passwords.txt
   Then the error output should match "No such file or directory"
    And the exit code should not be "0"

Scenario: Checking for file content
  Given I am in the "sandbox" folder
    And the file "passwords.txt" contains "bank: 1234hackme"
   When I run: cat passwords.txt
   Then the output should be "bank: 1234hackme"
    And the exit code should not be "11"

Scenario: Checking for file content with a regex
  Given I am in the "sandbox" folder
    And the file "passwords.txt" contains "bank: 1234hackme"
   When I run: echo "\nfacebook: 123password" >> passwords.txt
   Then the file "passwords.txt" should match "\d+hackme"
    And the file "passwords.txt" should match "\d+password"
    And the file "passwords.txt" should not match "easypassword"

Scenario: Checking for exact file content
  Given I am in the "sandbox" folder
   When I run: echo "they will come" > "if you build it.txt"
   Then the file "if you build it.txt" should be "they will come"
    And the file "if you build it.txt" should not be "they will go"
    And the status code should be "0"

Scenario: Working with file fixtures
  Given I am in the "sandbox" folder
    And the file "whatever.txt" is like "fixtures/whatever.txt"
   When I run: cat "whatever.txt"
   Then the output should be like "fixtures/whatever.txt"
    And the output should not be like "fixtures/not_this.txt"
    And the output should say "Hello"

Scenario: Create a fixture file on the fly
  Given I am in the "sandbox" folder
    And the file "whatever.txt" has the content "Hello World"
   When I run: cat "whatever.txt"
   Then the output should say "Hello World"

Scenario: Fixturing an empty directory
  Given I am in the "sandbox" folder
    And the folder is empty
   When I run: touch "some_file"
   Then the folder should not be empty

Scenario: Fixturing a non empty directory
  Given I am in the "sandbox" folder
    And the folder is not empty
   When I run: ls | wc -l
   Then the output should match "\d+"
    And the output should not be "0"
    And the output should not match "permission denied"
