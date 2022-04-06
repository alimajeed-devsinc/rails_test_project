namespace :task1 do
desc "greeting"
task :greet do
  puts "greet task from raketest.rake"
end
desc "ending"
task :bye => :greet do
  puts "bye from rake task"
end
end

