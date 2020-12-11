# 12-7-1 Sample

namespace :my_tasks do
  desc 'テスト用タスク'
  task :hello do
    puts 'Hello, world!'
  end
end


# 12-7-2 テスト一括実行

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = './test/*_test.rb'
end

task default: :test
