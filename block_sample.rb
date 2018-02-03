# 
def block_func(v)
	puts v

	# yieldを使うと関数内でブロックを実行可能
	# ブロックを受け取っていないと例外のため
	# block_given?とセットで使う
	yield if block_given?
end

# 呼び出し時二ブロックを渡す
block_func("hoge") do
	puts "fuga"
end
