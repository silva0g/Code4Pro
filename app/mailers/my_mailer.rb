#class MyMailer < ApplicationMailer
#end
class MyMailer < ActionMailer::Base

  def sendgrid_client
    @sendgrid_client ||= SendGrid::API.new(api_key: "htcwgWp0RGCoGiTYMCwEKQ")
  end

  def new_user(user)
    template_id = "template_id_of_new_user"

    data = {
      "personalizations": [
        {
          "to": [
            {
              "email": user.email
            }
          ],
          "substitutions": {
            "-name-": "USER_NAME",
            "-content-": user.name
          },
          "subject": "Welcome to Skill Mentor Academy"
        }
      ],
      "from": {
        "email": "skillmentoracademy@gmail.com"
      },
      "template_id": template_id
    }

    sendgrid_client.client.mail._("send").post(request_body: data)
  end

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
end
