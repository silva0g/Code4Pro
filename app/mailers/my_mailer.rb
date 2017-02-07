#class MyMailer < ApplicationMailer
#end
class MyMailer < ActionMailer::Base

  default from: "skillmentoracademy@gmail.com"

  # def sendgrid_client
  #   @sendgrid_client ||= SendGrid::API.new(api_key: "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")
  # end

  # def new_user(user)
  #   #template_id = "template_id_of_new_user"
  #   template_id = "698ec5dd-1103-4c47-b19c-56cbeac92c1b"

  #   data = {
  #     "personalizations": [
  #       {
  #         "to": [
  #           {
  #             "email": user.email
  #           }
  #         ],
  #         "substitutions": {
  #           "-name-": "USER_NAME",
  #           "-content-": user.name
  #         },
  #         "subject": "Welcome to Skill Mentor Academy"
  #       }
  #     ],
  #     "from": {
  #       "email": "skillmentoracademy@gmail.com"
  #     },
  #     "template_id": template_id
  #   }

  #   sendgrid_client.client.mail._("send").post(request_body: data)
  # end

  # def new_receipt
  #   template_name = "new-receipt",
  #   template_content = []
  #   message = {
  #     to: [{email: "#{user.email}"}],
  #     subject: "Skill Mentor Academy: Your receipt",
  #     merge_vars: [
  #       {
  #         rcpt: user_email,
  #         vars: [
  #           {name: "STUDENT_NAME", content: user.name },
  #           {name: "PROJECT_NAME", content: project.name },
  #           {name: "PROJECT_PRICE", content: project.price },
  #         ]
  #       }
        
  #     ]
  #   }

  #   sendgrid_client.client.mail._("send").post(request_body: data)
  # end

  def sign_up_confirmation(user)
    @user = user = "Hi"

    mail to: user.email, subject: "Sign up Confirmation"
  end

  sg = SendGrid::API.new(api_key: ENV['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'])
  #sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])

  email = SendGrid::Mail.new
  email.from = SendGrid::Email.new(email: "skillmentoracademy@gmail.com", name: "Skill Mentor Academy")
  email.subject = "Welcome to Skillmentoracademy"

  p = SendGrid::Personalization.new
  p.to = SendGrid::Email.new(email: "silvanazinha@gmail.com", name: "Example User")
  p.substitutions = SendGrid::Substitution.new(key: "key1", value: "value1")
  p.substitutions = SendGrid::Substitution.new(key: "key2", value: "value2")

  email.personalizations = p
  email.template_id = "[698ec5dd-1103-4c47-b19c-56cbeac92c1b]"

  response = sg.client.mail._('send').post(request_body: email.to_json)

  puts response.status_code
  puts response.body
  puts response.headers
end
