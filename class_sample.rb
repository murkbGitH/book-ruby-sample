# class定義
class Hoge
  def initialize(name, age)
    @name = name
    @age = age
  end

  def say
    puts @name + " is " + @age.to_s
  end

  # クラスメソッド
  def self.fuga
    puts "fuga!!!!"
  end
end

# インスタンス化
piyo = Hoge.new("piyo", 20)
piyo.say

# クラスメソッドの呼び出し
Hoge.fuga
