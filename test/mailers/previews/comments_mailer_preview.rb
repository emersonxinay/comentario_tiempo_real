# Preview all emails at http://localhost:3000/rails/mailers/comments_mailer
class CommentsMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/comments_mailer/submitted
  def submitted
    CommentsMailer.submitted Commet.first

  end
end
