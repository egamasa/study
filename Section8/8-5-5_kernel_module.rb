# Kernel モジュール

## 主なメソッド: puts / p / print / loop

# ObjectクラスがKernelモジュールをインクルードしているため、Kernelモジュールのメソッドはどこでも使える
p Object.include?(Kernel)
#  => true
