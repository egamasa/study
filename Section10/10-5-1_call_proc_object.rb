# Procオブジェクトの実行方法

add_proc = Proc.new { |a, b| a + b }

# [1] call メソッド
p add_proc.call(10, 20)  # => 30

# [2] yield メソッド
p add_proc.yield(10, 20)  # => 30

# [3] .
p add_proc.(10, 20)  # => 30

# [4] []
p add_proc[10, 20]  # => 30

# [5] ===
p add_proc === [10, 20]  # => 30


# [5] case文のwhen節でProcオブジェクトを使う
def judge(age)
  adult = Proc.new { |n| n > 20 }
  child = Proc.new { |n| n < 20 }

  case age
  when adult
    puts '大人です'
  when child
    puts '子どもです'
  else
    puts '二十歳です'
  end
end

judge(25)  # => 大人です
judge(18)  # => 子どもです
judge(20)  # => 二十歳です
