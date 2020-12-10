# 例外発生時に retry で処理をやりなおす

retry_count = 0

begin
  # ここ（begin節の最初）からやりなおす
  puts '処理を開始します'

  1 / 0  # 例外発生
rescue
  retry_count += 1
  if retry_count <= 3  # 無限ループ防止
    puts "retryします（#{retry_count}回目）"
    retry
  else
    puts 'retryに失敗しました'
  end
end

# => 処理を開始します
#    retryします（1回目）
#    処理を開始します
#    retryします（2回目）
#    処理を開始します
#    retryします（3回目）
#    処理を開始します
#    retryに失敗しました
