# module定義
module Mod
  Version = "1.0.0"
  
  def v
    Version
  end

  def say
    puts "this version is " + Version
  end

  def self.fuga
    puts "fuga!!!!"
  end

  # モジュールメソッドとして定義
  module_function :v
end

puts Mod.v
puts Mod::fuga

# (※1)これは怒られる
puts Mod.say

# クラスにインクルード
class Cls
  include Mod
end

cls = Cls.new
puts cls.say
# (※2)これは怒られる
# puts cls.v
