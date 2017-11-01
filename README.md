The gem uses HTTParty to interact with the Bloc.io api.  

There are several methods available to find user data, check mentor availability, show messages, as well as submit checkpoints.  

❯❯❯ irb

require 'bryce.rb' => true

  bryce_user = Bryce.new("user_email", "user_password")

  bryce_user.get_me #loads your user info

  bryce_user.get_messages(page_number)  #page number is optional, default is 1

  bryce_user.get_mentor_availability(mentor_id)

  bryce_user.get_roadmap(roadmap_id)

  bryce_user.get_checkpoint(checkpoint_id)

  bryce_user.create_messages(user_email, user_receiving_id, subject, message_body)

  bryce_user.create_submission(assignment_branch, github_commit_link, checkpoint_id, comment, user_enrollment_id)

Please also consult the bloc.io api documentation here which can be helpful - http://docs.blocapi.apiary.io/
