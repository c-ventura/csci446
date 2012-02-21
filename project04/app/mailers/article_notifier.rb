class ArticleNotifier < ActionMailer::Base
  default from: "Dwight Schrute dschrute@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.article_notifier.received.subject
  #
  def received(article)
    @article = article

    mail to: article.email, subject: 'Your Favorite Article'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.article_notifier.sent.subject
  #
  def sent
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
