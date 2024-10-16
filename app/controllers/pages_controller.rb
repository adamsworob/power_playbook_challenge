# frozen_string_literal: true

class PagesController < ApplicationController
  def index
    @ticket_categories = TicketCategory.includes(:ticket_entries)
    @pipeline_data = PipelineStage.all
    @ticket_data = Ticket.all

    @line_graph_data = [LineGraph.first.slice(:name, :data)]
  end
end
