# FROM ruby:3.2.2
# COPY . /application
# WORKDIR /application
# RUN bundle install
# RUN rm yarn.lock
# EXPOSE 3000
# CMD ["rails", "server", "-b", "0.0.0.0"]

FROM ruby:3.2.2
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install
RUN rails db:migrate
COPY . .
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]