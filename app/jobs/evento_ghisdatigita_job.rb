class EventoGhisdatigitaJob < ApplicationJob
  queue_as :default

  def perform(evento)
    mesagho = "Evento ĝisdatigita:\n\n"
    mesagho += "<b>#{evento.title}</b>\n\n"
    mesagho += event_url(evento.code) + '/kronologio'
    system "telegram-send --config config/es_admin_channel.conf --format html --disable-web-page-preview \"#{mesagho}\""
  end
end
