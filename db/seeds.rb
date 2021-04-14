# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 以下、シラバスの内容
Syllabus.create(subject: '法学入門〈A00A〉', unit_and_course_int: "単位数:2\n1年次", subject_type: '第１群', teacher: '森 光',
                schooling: 'オンデマンド', textbook: '『法学入門』[第 3 版]以降(中央経済社)',
                summary: '法学入門では、歴史や思想などにも触れつつ、法の役割や、法学という学問の位置づけについて解説す る。また、法の解釈など、法学を学び始めるにあたって身に着けておくべき基礎にも言及する。さらに、 それを踏まえ、公法、刑事法、民事法の各分野について解説する。各分野の基礎知識や考え方を説明する とともに、現代的な社会問題と法の関係についても触れる。')
