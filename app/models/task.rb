class Task < ApplicationRecord

validates :name, presence: { message:"Merci de completer le nom des parents"}
validates :child_name, presence: { message:"Merci de completer le prénom de l'enfant"}
validates :promotion, presence: { message:"Merci de completer l'année"}

after_save :send_nvmsg_email
private

def send_nvmsg_email
  UserMailer.nvmsg.deliver_now
end

end
