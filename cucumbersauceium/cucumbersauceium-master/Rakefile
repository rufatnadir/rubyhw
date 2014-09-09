Rake.application.options.trace = false
desc 'Run all Cucumber features in parallel'

def execute_tests(test_options)
  begin
    ENV['OPTS'] ||= ""
    sh "bundle exec parallel_cucumber --group-by scenarios features/ --test-options '--profile default #{test_options} #{ENV['OPTS']}'"
  rescue RuntimeError => e
    puts "Some Tests Failed"
    unless ENV['RERUN'] == "0"
      exit 1 unless `bundle exec cucumber @tmp/rerun.txt --profile default`
    else
      exit 1
    end
  end
end

task :mobile do
  ENV['PREFIX'] = "(mobile)"
  execute_tests("-t @mobile -t ~@wip")
end
task :mobile_dev do
  ENV['PREFIX'] = "(mobile_dev)"
  ENV['RERUN'] ||= "0"
  execute_tests("-t @mobile -t @dev -t ~@wip")
end

task :web do
  ENV['PREFIX'] = "(web)"
  execute_tests("-t @web -t ~@wip")
end
task :web_dev do
  ENV['PREFIX'] = "(web_dev)"
  ENV['RERUN'] ||= "0"
  execute_tests("-t @web -t ~@dev -t ~@wip")
end

task :mweb do
  ENV['PREFIX'] ||= "(mweb)"
  execute_tests("-t @mweb -t ~@wip")
end
task :mweb_dev do
  ENV['PREFIX'] ||= "(mweb_dev)"
  ENV['RERUN'] ||= "0"
  execute_tests("-t @mweb -t @dev -t ~@wip")
end

task :matrix do
  `rake mweb OS=ios & rake web & rake mobile OS=ios`
end
