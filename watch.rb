runner = -> { system("rspec specs.rb") }
runner.call && watch(/.+\.rb/, &runner)
