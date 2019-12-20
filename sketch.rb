User
    username #add index for uniqueness
    has many association to poll

Poll
    author_id foreign key to user 
    a title text column
    has many association to question

Question
    a text column
    poll_id foreign key to poll
    has many assocciation to AnswerChoice

AnswerChoice
    an answer text column
    question_id foreign key to question

Response
    user_id foreign key to user
    AnswerChoice_id foreign key to AnswerChoice