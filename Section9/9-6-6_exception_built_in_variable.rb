# 組み込み変数に格納される例外情報

# $! :例外オブジェクト
# $@ :バックトレース

begin
  1 / 0
rescue
  puts "#{$!.class} #{$!.message}"
  puts $@
end

# => ZeroDivisionError divided by 0
#    Section9/9-6-6_exception_built_in_variable.rb:7:in `/'
#    Section9/9-6-6_exception_built_in_variable.rb:7:in `<main>'
