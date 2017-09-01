# Clicumber Step Definitions Summary


## Given...dir

- __`Given`__ `/^I am in the "([^"]+)" (?:folder|dir|directory)$/`
- __`Given`__ `/^the (?:folder|dir|directory) "([^"]*)" (does not )?exists?$/`
- __`Given`__ `/^the (?:folder|dir|directory) is (not )?empty$/`
- __`Given`__ `/^the (?:folder|dir|directory) "([^"]*)" is like "([^"]*)"$/`

## Given...file

- __`Given`__ `/^the file "([^"]*)" (does not )?exists?$/`
- __`Given`__ `/^the file "([^"]*)" (?:contains|has the content) "([^"]*)"$/`
- __`Given`__ `/^the file "([^"]*)" is like "([^"]*)"$/`

## Given...environment

- __`Given`__ `/^the variable "([^"]*)" is (not )?"([^"]*)"$/`

## When...run

- __`When`__ `/^I run: (.+)$/`
- __`When`__ `/^I run "([^"]+)"$/`

## When...dir

- __`When`__ `/^I go into the "([^"]*)" (?:folder|dir|directory)$/`

## When...wait

- __`When`__ `/^I wait (?:for )?"([^"]*)" seconds?$/`

## Then...output

- __`Then`__ `/^the (error )?output should (not )?be like "([^"]*)"$/`
- __`Then`__ `/^the (error )?output should (not )?resemble "([^"]*)"(?: by "(\d{1,2})%?")?$/`
- __`Then`__ `/^the (error )?output should (not )?match "([^"]*)"$/`
- __`Then`__ `/^the (error )?output should (not )?(?:contain|include|have|say|read) "([^"]*)"$/`
- __`Then`__ `/^the (error )?output should (not )?(?:be|equal) "([^"]*)"$/`

## Then...file

- __`Then`__ `/^the file "([^"]*)" should (not )?exist$/`
- __`Then`__ `/^the file "([^"]*)" should (not )?match "([^"]*)"$/`
- __`Then`__ `/^the file "([^"]*)" should (not )?(?:contain|include|have|say|read) "([^"]*)"$/`
- __`Then`__ `/^the file "([^"]*)" should (not )?(?:be|equal) "([^"]*)"$/`
- __`Then`__ `/^the file "([^"]*)" should (not )?be like "([^"]*)"$/`

## Then...dir

- __`Then`__ `/^the (?:folder|dir|directory) "([^"]*)" should (not )?exist$/`
- __`Then`__ `/^the (?:folder|dir|directory) should (not )?be empty$/`

## Then...debug

- __`Then`__ `/^stop for debug$/`

## Then...exit code

- __`Then`__ `/^the (?:status|exit) code should (not )?be "([^"]+)"$/`
- __`Then`__ `/^the (?:status|exit) code should mean (success|failure)$/`