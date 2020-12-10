## 例外クラスの継承関係

- rescue での例外クラス指定は `StandardError` もしくはそのサブクラスに留める  
  （上位の `Exception` クラスは通常指定しない）

```ruby
p NoMethodError.ancestors
# => [NoMethodError,
#     DidYouMean::Correctable,
#     NameError,
#     StandardError, ←ここまで
#     Exception,
#     Object,
#     Kernel,
#     BasicObject
#    ]
```
