# Given

Given(/^I am in the "([^"]+)" (?:folder|dir|directory)$/) do |dir|
  $original_dir = Dir.pwd
  Dir.chdir dir
end

# When

When(/^I run: (.+)$/) do |command|
  @stdout, @stderr, @status = Open3.capture3 command
end

When(/^I run "([^"]+)"$/) do |command|
  @stdout, @stderr, @status = Open3.capture3 command
end

# Then

Then(/^the output should (not )?(?:contain|have|say) "([^"]*)"$/) do |negate, regex|
  if negate 
    expect(@stdout).to_not match /#{regex}/im
  else
    expect(@stdout).to match /#{regex}/im 
  end
end

Then(/^I should have a file "([^"]*)"$/) do |file|
  expect(File.exist? file).to eq true
end

Then(/^the file "([^"]*)" should contain "([^"]*)"$/) do |file, regex|
  expect(File.read file).to match /#{regex}/im
end
