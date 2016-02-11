# Given

Given(/^I am in the "([^"]+)" (?:folder|dir|directory)$/) do |dir|
  $original_dir = Dir.pwd
  Dir.chdir dir
end

Given(/^the file "([^"]*)" exists$/) do |file|
  File.write(file, 'stub') unless File.exist? file
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

Then(/^the file "([^"]*)" should (not )?exist$/) do |file, negate|
  if negate
    expect(File.exist? file).to eq false
  else
    expect(File.exist? file).to eq true
  end
end

Then(/^the file "([^"]*)" should (not )?contain "([^"]*)"$/) do |file, negate, regex|
  if negate
    expect(File.read file).to_not match /#{regex}/im
  else
    expect(File.read file).to match /#{regex}/im
  end
end
