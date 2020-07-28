class KptGenerator
  def create_name
    puts "あなたの苗字は？"
    @name = gets.chomp
  end

  def create_word
    @copy = "-----コピペしてね-----"
  end

  def create_time
    t = Time.new
    @today = "#{t.month}月#{t.day}日"
  end

  def create_keep
    puts "-------KEEP-------\n①今日学んだこと"
    k_1 = gets.chomp
    puts "②何に活用するか"
    k_2 = gets.chomp
    puts @copy
    puts "#{@today} #{@name}\n①#{k_1}\n②#{k_2}"
  end

  def create_problem
    puts "-------PROBLEM-------\n①今日の問題レベル(A,B,C)"
    @p_1 = gets.chomp
    puts "②問題点(一言で)"
    @p_2 = gets.chomp
    puts @copy
    puts "#{@today} #{@name}\n①#{@p_1}\n②#{@p_2}"
  end

  def create_try
    puts "-------TRY-------\nどのように解決するか"
    try = gets.chomp
    puts "-----コピペしてね------"
    puts "#{@today} #{@name}\n①#{@p_1}\n②#{@p_2}\n>#{try}"
  end
end

kpt = KptGenerator.new
kpt.create_word
kpt.create_time
kpt.create_name
kpt.create_keep
kpt.create_problem
kpt.create_try
