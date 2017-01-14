#class MyMailer < ApplicationMailer
#end
class MyMailer < ActionMailer::Base

  def sendgrid_client
    @sendgrid_client ||= SendGrid::API.new(api_key: "")
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
end
