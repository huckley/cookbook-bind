# frozen_string_literal: true
bind_service 'default' do
  action [:create, :start]
end

bind_config 'default'

bind_secondary_zone 'example.com' do
  primaries ['10.1.1.1']
end

bind_secondary_zone 'example.org' do
  primaries ['10.1.1.2', '10.1.1.3']
  options [
    'zone-statistics terse',
  ]
end
