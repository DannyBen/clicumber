# clicumber

[![Build Status](https://travis-ci.org/DannyBen/clicumber.svg?branch=master)](https://travis-ci.org/DannyBen/clicumber)

Cucumber step definitions for testing command line applications.


## Usage

Grab a copy of the [step definitions file][2] and place it in your 
`step_definitions` folder.

To see the available steps, look at the [showcase feature file][3] or at the
[step definitions summary][1].

If you do not have your cucumber environment set up already, you can also
execute `run scaffold` in the repository's folder. It will generate a 
`scaffold` folder for you with everything you need to get started.


## Features

- Steps for running any command and capturing its output, stderr and exit code
- Steps for querying folder status
- Steps for querying file status and contents
- Steps for creating file and folder fixtures
- Steps for querying the command's output, stderr and exit code


## Downloading the Step Definitions file programmatically

If you are using the [step definitions][2] file as is in your project 
(recommended), then you can add a rake task or shell script to fetch a fresh
copy of it on demand:

```
curl -o 'features/step_definitions/clicumber.rb' https://raw.githubusercontent.com/DannyBen/clicumber/master/features/step_definitions/clicumber.rb
```

If you are using [Runfile][4], you can use this task:

```ruby
help   "Download a fresh copy of clicumber stepdefs"
action :clicumber do
  file = "features/step_definitions/clicumber.rb"
  url  = "https://raw.githubusercontent.com/DannyBen/clicumber/master/features/step_definitions/clicumber.rb"
  exec "curl -o '#{file}' #{url}"
end
```


---
[1]: https://github.com/DannyBen/clicumber/blob/master/doc/Step%20Definitions.md
[2]: https://github.com/DannyBen/clicumber/blob/master/features/step_definitions/clicumber.rb
[3]: https://github.com/DannyBen/clicumber/blob/master/features/showcase.feature
[4]: https://github.com/DannyBen/runfile