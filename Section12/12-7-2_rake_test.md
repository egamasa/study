## Rakeを使ったテストの一括実行

- Rakefile
  ```ruby
  require 'rake/testtask'

  Rake::TestTask.new do |t|
    t.pattern = './test/*_test.rb'
  end

  task default: :test
  ```

- 実行
  ```bash
  $ rake

  # Run options: --seed 18492
  #
  # # Running:
  #
  # {
  #   name: 'Alice',
  #   age: 20,
  #   gender: :female
  # }
  # ..................
  #
  # Finished in 0.024503s, 734.6129 runs/s, 1469.2258 assertions/s.
  #
  # 18 runs, 36 assertions, 0 failures, 0 errors, 0 skips
  ```
