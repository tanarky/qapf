# coding: utf-8
Category.seed do |s|
  s.id = 1
  s.name = '出産'
  s.parent_id = nil
end
Category.seed do |s|
  s.id = 2
  s.name = '妊娠'
  s.parent_id = nil
end
Category.seed do |s|
  s.id = 3
  s.name = 'お仕事'
  s.parent_id = nil
end
Category.seed do |s|
  s.id = 4
  s.name = '産休'
  s.parent_id = 3
end
Category.seed do |s|
  s.id = 5
  s.name = '職場復帰'
  s.parent_id = 3
end
