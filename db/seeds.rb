# db/seeds.rb

# Line Graph Data

LineGraph.destroy_all

LineGraph.create!(
  name: 'Installation',
  data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
)

# Ticket Categories and Entries

TicketCategory.destroy_all
TicketEntry.destroy_all

new_category = TicketCategory.create(name: "New", value: 25, color: "product_4_highlight")
new_category.ticket_entries.create([
  { avatar: "https://randomuser.me/api/portraits/women/77.jpg", text: "Missing part", name: "Taylor Swift" },
  { avatar: "https://randomuser.me/api/portraits/women/42.jpg", text: "Not performing", name: "Angelina Jolie" },
  { avatar: "", text: "Missing part", name: "Tom Jones" },
  { avatar: "https://randomuser.me/api/portraits/men/30.jpg", text: "Missing part", name: "Brad Pitt" },
  { avatar: "", text: "Unexpectedly long", name: "Jessica Chastain" },
  { avatar: "", text: "Need Technician", name: "Mike Tyson" },
  { avatar: "", text: "Missing part", name: "Jennifer Lawrence" },
  { avatar: "", text: "Unexpectedly long", name: "Will Smith" }
])

manager_feedback_category = TicketCategory.create(name: "Manager Feedback", value: 5, color: "product_1_background")
manager_feedback_category.ticket_entries.create([
  { avatar: "https://randomuser.me/api/portraits/men/52.jpg", text: "Not performing", name: "Chris Hemsworth" },
  { avatar: "https://randomuser.me/api/portraits/women/74.jpg", text: "Missing part", name: "Scarlett Johansson" },
  { avatar: "", text: "Missing part", name: "John Wayne" },
  { avatar: "https://randomuser.me/api/portraits/men/80.jpg", text: "Need Technician", name: "Chris Evans" },
  { avatar: "", text: "Unexpectedly long", name: "Anne Rice" }
])

processing_category = TicketCategory.create(name: "Processing", value: 3, color: "product_9_background")
processing_category.ticket_entries.create([
  { avatar: "", text: "Missing part", name: "Henry Rollins" },
  { avatar: "https://randomuser.me/api/portraits/women/65.jpg", text: "Not performing", name: "Lady Gaga" },
  { avatar: "", text: "Need Technician", name: "Pete Davidson" },
  { avatar: "https://randomuser.me/api/portraits/women/85.jpg", text: "Need Technician", name: "Gal Gadot" }
])

awaiting_feedback_category = TicketCategory.create(name: "Awaiting Feedback", value: 2, color: "category_11")
awaiting_feedback_category.ticket_entries.create([
  { avatar: "https://randomuser.me/api/portraits/men/38.jpg", text: "Need Technician", name: "Tom Hanks" },
  { avatar: "https://randomuser.me/api/portraits/men/31.jpg", text: "Missing part", name: "Keanu Reeves" },
  { avatar: "", text: "Not performing", name: "Kristen Stewart" }
])

approved_category = TicketCategory.create(name: "Approved", value: 15, color: "product_10_highlight")
approved_category.ticket_entries.create([
  { avatar: "", text: "Missing part", name: "Kate Middleton" },
  { avatar: "", text: "Not performing", name: "Tom Jones" },
  { avatar: "", text: "Missing part", name: "Hayden Christensen" },
  { avatar: "https://randomuser.me/api/portraits/women/47.jpg", text: "Missing part", name: "Emma Watson" },
  { avatar: "", text: "Unexpectedly long", name: "Kevin Costner" },
  { avatar: "", text: "Need Technician", name: "Ryan Reynolds" },
  { avatar: "", text: "Unexpectedly long", name: "Snoop Dogg" },
  { avatar: "", text: "Need Technician", name: "Katy Perry" }
])


# Pipeline Data

PipelineStage.destroy_all

pipeline_data = [
  { label: "Add to Cart", percent: 100, value: 2577 },
  { label: "Shopping Cart", percent: 79, value: 2023 },
  { label: "Payment Methods", percent: 59, value: 1567 },
  { label: "Delivery Methods", percent: 56, value: 1252 },
  { label: "Confirm", percent: 49, value: 1182 },
  { label: "Delivery", percent: 46, value: 1098 },
]

pipeline_data.each do |data|
  PipelineStage.create(data)
end

# Ticket Data

Ticket.destroy_all

ticket_data = [
  { icon: "ticket-alt", variant: "green", size: "md", text: "Tickets (YTD)", value: 1426 },
  { icon: "times-square", variant: "red", size: "md", text: "Overdue (YTD)", value: 25 },
  { icon: "tasks", variant: "teal", size: "md", text: "Closed Without Action (YTD)", value: 97 },
  { icon: "exclamation-triangle", variant: "yellow", size: "md", text: "Escalated (YTD)", value: 896 },
]

ticket_data.each do |data|
  Ticket.create(data)
end