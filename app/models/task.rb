class Task < ApplicationRecord

validates :name, presence: { message:"Merci de compléter votre prénom"}
validates :child_name, presence: { message:"Merci de compléter le prénom de l'enfant"}
validates :promotion, presence: { message:"Merci de compléter l'année"}

after_save :send_nvmsg_email

private

def send_nvmsg_email
  UserMailer.nvmsg.deliver_now
end

end
