blogs = []
while true
  index = ["以下より行う操作を選んでください","1:ブログを作成する","2:作成されたブログを見る","3:ブログアプリを終了する"]
  index.each do |content|
    puts content
  end
  number = gets.to_i
  if number == 1
    blog = {}
    guide1 = ["ブログのタイトルを入力してください",
      "ブログの本文を入力してください",
      "------入力確認------",
      "1:続けて作成",
      "2:終了"]
    puts index[1]
    while true
      puts guide1[0]
      blog[:title] = gets
      puts guide1[1]
      blog[:content] = gets
      blogs << blog
      puts guide1[2]
      puts "タイトル：#{blog[:title]}"
      puts "本文：#{blog[:content]}"
      puts  guide1[3]
      puts guide1[4]
      number = gets.to_i
      case number
      when 1
      when 2
        break
      end
    end
  elsif number == 2
    puts index[2]
    blogs.each do |blog|
      puts "タイトル: #{blog[:title]}"
      puts "本文: #{blog[:content]}"
      puts "-----------"
    end
  elsif number == 3
    puts index[3]
    break
  else
    puts "1~3の数字を入力してください"
  end
end
