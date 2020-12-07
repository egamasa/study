### throw-catch（大域脱出） ###

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]

# シンボルでタグを指定
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == "orange" && n == 3
        # すべての繰り返し処理を脱出
        throw :done
        ## タグが不一致だとエラー
        # throw :foo
        #  => uncaught throw :foo (UncaughtThrowError)
      end
    end
  end
end


# catchメソッドの戻り値を指定
ret =
  catch :done do
    throw :done
  end
p ret  #=> nil

ret =
  catch :done do
    throw :done, 123
  end
p ret  #=> 123
