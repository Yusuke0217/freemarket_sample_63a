server '54.178.215.229', user: 'ec2-user', roles: %w{app db web}
set :rails_env, "production"
set :unicorn_rack_env, "production"

# role-based syntax
# ==================