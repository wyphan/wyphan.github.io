begin
  require "bundler/gem_tasks"
rescue LoadError
end

require "rake/testtask"
Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.verbose = true
  t.test_files = FileList["test/**/test_*.rb"]
end
