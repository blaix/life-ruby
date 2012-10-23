def run
  system("rspec specs.rb")
end

run
watch(/.+\.rb/) { run }
