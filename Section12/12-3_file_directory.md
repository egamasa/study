## ファイル・ディレクトリ

### 標準ライブラリ

- File
  - 組み込みクラス（require不要）
- Dir
  - 組み込みクラス（require不要）
- FileUtils
  - `require 'fileutils'`
- Pathname
  - `require 'pathname'`
  - オブジェクト指向的


```ruby
# ファイル・ディレクトリの存在チェック
File.exists?('./sample.txt')
Dir.exists?('./example')

# ファイルのリネーム
require 'fileutils'
FileUtils.mv('./hello_world.txt', './hello_world.rb')

# オブジェクト指向的な操作
require 'pathname'
lib = Pathname.new('./lib')
# => #<Pathname:./lib>

lib.file?  # => false
lib.directory?  # => true

## ファイルパスの生成
lib.join('fizz_buzz.rb').to_s  # => "./lib/fizz_buzz.rb"
```
