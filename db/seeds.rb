# db/seeds.rb

# Clear existing data
Question.destroy_all

# Seed questions with answers
questions = [
  {
    content: "میزان خودکشی زنان در غرب چند درصد است؟"
  },
  {
    content: "بر اساس آمار وزارت بهداشت و خدمات انسانی آمریکا، از هر پنج زن آمریکایی چند نفر به بیماری روانی مبتلا هستند؟"
  },
  {
    content: "در کدام کشور فعالان حقوق زنان پشت میله های زندان هستند؟"
  },
  {
    content: "در کشورایران حجاب اجباری حاکم است یا پوشش اجباری؟"
  },
  {
    content: "اقلیت ها چند در صد جمعیت ایران را تشکیل می دهند؟"
  },
  {
    content: "نام بازیگر زن آمریکایی که بخاطر توییت هولوکاست اخراج شد؟"
  },
  {
    content: "مهمترین عامل ضربه به اقتصاد جمهوری اسلامی؟"
  },
  {
    content: "بزرگترین و گرانترین رزمایش آمریکا با هدف آزمایشی احول آینده نیروی نظامی آمریکا؟"
  },
  {
    content: "پیشرفت های جمهوری اسلامی چگونه حاصل شد؟"
  },
  {
    content: "دهمین رتبه دنیا مربوط به کدام دستاورد جمهوری اسلامی است؟"
  },
  {
    content: "کدام گزینه جز اختیارات رهبری است؟"
  },
  {
    content: "چرا حاکمیت اجازه ی برگزاری رفراندوم را نمی دهد؟"
  },
  {
    content: "نظام های سیاسی دنیا نفع خود را در چه می دانند؟"
  },
  {
    content: "روند آزاد سازی روابط جنسی در کدام کشور باعث ایجاد تجاوز، روابط با محارم، حیوانات و همجنس بازی شده است؟"
  }
]

questions.each do |question_params|
  question = Question.create(question_params)

  case question.content
  when "میزان خودکشی زنان در غرب چند درصد است؟"
    question.answers.create(content: "50%", correct: true)
    question.answers.create(content: "60%")
    question.answers.create(content: "70%")
    question.answers.create(content: "65%")
  when "بر اساس آمار وزارت بهداشت و خدمات انسانی آمریکا، از هر پنج زن آمریکایی چند نفر به بیماری روانی مبتلا هستند؟"
    question.answers.create(content: "2")
    question.answers.create(content: "3")
    question.answers.create(content: "4")
    question.answers.create(content: "1", correct: true)
  when "در کدام کشور فعالان حقوق زنان پشت میله های زندان هستند؟"
    question.answers.create(content: "عربستان", correct: true)
    question.answers.create(content: "فرانسه")
    question.answers.create(content: "آلمان")
    question.answers.create(content: "آمریکا")
  when "در کشورایران حجاب اجباری حاکم است یا پوشش اجباری؟"
    question.answers.create(content: "حجاب اجباری")
    question.answers.create(content: "پوشش اجباری", correct: true)
    question.answers.create(content: "هر دو")
    question.answers.create(content: "هیچ اجباری در پوشش و حجاب نیست")
  when "اقلیت ها چند در صد جمعیت ایران را تشکیل می دهند؟"
    question.answers.create(content: "2", correct: true)
    question.answers.create(content: "3")
    question.answers.create(content: "4")
    question.answers.create(content: "7")
  when "نام بازیگر زن آمریکایی که بخاطر توییت هولوکاست اخراج شد؟"
    question.answers.create(content: "جینا کاران", correct: true)
    question.answers.create(content: "کری فیشر")
    question.answers.create(content: "نیکول کیدمن")
    question.answers.create(content: "شارون استون")
  when "مهمترین عامل ضربه به اقتصاد جمهوری اسلامی؟"
    question.answers.create(content: "مفسد اقتصادی", correct: true)
    question.answers.create(content: "مسئول خائن")
    question.answers.create(content: "مجلس")
    question.answers.create(content: "سلطان سکه و دلار")  
  when "بزرگترین و گرانترین رزمایش آمریکا با هدف آزمایشی احول آینده نیروی نظامی آمریکا؟"
    question.answers.create(content: "چالش هزاره 2002", correct: true)
    question.answers.create(content: "چالش هزاره 2003")
    question.answers.create(content: "چالش هزاره 2001")
    question.answers.create(content: "چالش هزاره 2000")
  when "پیشرفت های جمهوری اسلامی چگونه حاصل شد؟"
    question.answers.create(content: "با گذراندن بحران ها و تحریم ها", correct: true)
    question.answers.create(content: "با مقاومت")
    question.answers.create(content: "با صبر و استقامت")
    question.answers.create(content: "با پیروزی بر فتنه های داخلی")
  when "دهمین رتبه دنیا مربوط به کدام دستاورد جمهوری اسلامی است؟"
    question.answers.create(content: "طراحی، ساخت و پرتاپ ماهواره", correct: true)
    question.answers.create(content: "طراحی، ساخت و پرتاچ موشک")
    question.answers.create(content: "ناوگان تان های جنگی")
    question.answers.create(content: "تولید علم")
  when "کدام گزینه جز اختیارات رهبری است؟"
    question.answers.create(content: "قانون گذاری")
    question.answers.create(content: "قضایی")
    question.answers.create(content: "نظامی", correct: true)
    question.answers.create(content: "سیاست های کلی")
  when "چرا حاکمیت اجازه ی برگزاری رفراندوم را نمی دهد؟"
    question.answers.create(content: "اسلام اجازه نمی دهد که حاکمیت اسلام را به رفراندوم گذاشته شود", correct: true)
    question.answers.create(content: "به خاطر نظام دیکتاتوری")
    question.answers.create(content: "اهمیت ندادن به مردم")
    question.answers.create(content: "گزینه اول و دوم")
  when "نظام های سیاسی دنیا نفع خود را در چه می دانند؟"
    question.answers.create(content: "برگذاری آموزشگاه های مختلف")
    question.answers.create(content: "مدرن شدن")
    question.answers.create(content: "بی حجابی")
    question.answers.create(content: "داشتن حجاب و پرهیز از هر گونه فساد", correct: true)
  when "روند آزاد سازی روابط جنسی در کدام کشور باعث ایجاد تجاوز، روابط با محارم، حیوانات و همجنس بازی شده است؟"
    question.answers.create(content: "فرانسه")
    question.answers.create(content: "آمریکا", correct: true)
    question.answers.create(content: "کانادا")
    question.answers.create(content: "اسرائیل")
  end
end
