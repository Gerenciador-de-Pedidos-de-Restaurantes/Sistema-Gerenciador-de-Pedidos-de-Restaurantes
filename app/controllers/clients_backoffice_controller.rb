class ClientsBackofficeController < ApplicationController
  before_action :authenticate_client!
  layout 'clients_backoffice'
end
