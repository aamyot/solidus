object false
if @country
  node(:states_required) { @country.states_required }
end

child(@states => :states) do
  attributes *state_attributes
end

if @states.respond_to?(:total_pages)
  node(:count) { @states.count }
  node(:current_page) { @states.current_page }
  node(:pages) { @states.total_pages }
end
