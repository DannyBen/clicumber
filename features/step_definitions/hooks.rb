# Hooks

# Undo the "change dir" step if needed
Before do
  next unless $original_dir
  Dir.chdir $original_dir
  $original_dir = nil
end

