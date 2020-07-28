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
    puts "0:A, 1:B, 2:C"
    @p_1 = gets
    while true
      if /^[0-9]+$/ =~ @p_1.to_s && (@p_1.to_i == 0 || @p_1.to_i == 1 || @p_1.to_i == 2)
        @p_1 = @p_1.to_i
        @lebel = %w(A B C)
        puts "②問題点(一言で)"
        @p_2 = gets
        puts @copy
        puts "#{@today} #{@name}\n①#{@lebel[@p_1]}\n②#{@p_2}"
        break
      else
        puts "もう一度数字を入力してください。"
        puts "0:A, 1:B, 2:C"
        @p_1 = gets
      end
    end
  end

  def create_try
    puts "-------TRY-------\nどのように解決するか"
    try = gets
    puts @copy
    puts "#{@today} #{@name}\n①#{@lebel[@p_1]}\n②#{@p_2}>#{try}"
  end
end

kpt = KptGenerator.new
kpt.create_word
kpt.create_time
kpt.create_name
kpt.create_keep
kpt.create_problem
kpt.create_try
