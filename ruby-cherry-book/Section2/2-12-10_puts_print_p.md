# puts / print / p メソッド

## puts
- 出力後改行あり
  - 配列は要素毎に改行
- 内部メソッド： to_s
- 戻り値： nil
- 用途： ユーザへの出力

## print
- 出力後改行なし
  - 配列も改行しない
- 内部メソッド： to_s
- 戻り値： nil
- 用途： ユーザへの出力

## p
- 出力後改行あり
  - 配列は改行しない
- 内部メソッド： inspect
- 戻り値： 引数のオブジェクト
- 用途： デバッグ