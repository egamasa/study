### Procオブジェクト (&:) ###

p ['ruby', 'java', 'perl'].map { |s| s.upcase }
#=> ["RUBY", "JAVA", "PERL"]

p ['ruby', 'java', 'perl'].map(&:upcase)
#=> ["RUBY", "JAVA", "PERL"]

p [1, 2, 3, 4, 5, 6].select { |n| n.odd? }
#=> [1, 3, 5]

p [1, 2, 3, 4, 5, 6].select(&:odd?)
#=> [1, 3, 5]
