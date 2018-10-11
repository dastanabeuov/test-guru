class Answer < ApplicationRecord
  belongs_to :question
  scope :correct_answer, ~> { where(correct: true) }
  validates :body, :correct, :question_id, presence: {
    message: "Наличие атрибутов title, body, email в соответствующих моделях" }
  validates
  validate :answers_for_question

  def answers_for_question
    errors.add(:question, 'У одного Вопроса может быть от 1-го до 4-х ответов.') if self.question.answers.count >= 4
  end
end
