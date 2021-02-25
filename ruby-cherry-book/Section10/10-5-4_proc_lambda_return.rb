### Proc.newとラムダの違い (return/break) ###

# return
def proc_return
  # Procでreturn → メソッドを抜ける
  f = Proc.new { |n| return n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

def lambda_return
  # ラムダでreturn → ラムダ内の処理から抜ける
  f = ->(n) { return n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

p proc_return    # => 10
p lambda_return  # => "ret: [10, 20, 30]"


# break
def proc_break
  f = Proc.new { |n| break n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

def lambda_break
  f = ->(n) { break n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

p proc_break
# => `block in proc_break': break from proc-closure (LocalJumpError)
p lambda_break  # => "ret: [10, 20, 30]"
