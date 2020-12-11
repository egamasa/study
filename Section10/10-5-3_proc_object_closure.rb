# Procオブジェクトとクロージャ

# クロージャ (closure、関数閉包)
# → メソッド生成時のコンテキスト（変数情報など）を保持しているメソッド（RubyのブロックやProcオブジェクト）

def generate_proc(array)
  counter = 0  # Procオブジェクト内で値が保持される

  Proc.new do
    counter += 10
    array << counter
  end
end


values = []
sample_proc = generate_proc(values)
p values  # => []

sample_proc.call
p values  # => [10]

sample_proc.call
p values  # => [10, 20]
# sample_proc（Procオブジェクト）でcounterとarray（コンテキスト）の値が保持されている
