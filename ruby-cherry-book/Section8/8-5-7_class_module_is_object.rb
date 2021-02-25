# クラスやモジュールもオブジェクトの一種

class User
  p self        #=> User
  p self.class  #=> Class
end

# UserクラスのクラスはClass
p User.class  #=> Class

# ClassクラスのスーパークラスはModuleクラス
p Class.superclass  #=> Module


module Loggable
  p self        #=> Loggable
  p self.class  #=> Module
end

# LoggableモジュールのクラスはModule
p Loggable.class  #=> Module

# LoggableモジュールのスーパークラスはObjectクラス
p Module.superclass  #=> Object
