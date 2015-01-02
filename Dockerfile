FROM ruby:2.2-onbuild

CMD ["bundle", "exec", "puma", "config.ru", "-p", "9292"]

EXPOSE 9292
