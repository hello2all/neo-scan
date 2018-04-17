use Mix.Config

config :neoscan_sync, ecto_repos: []

config :logger, :console,
  format: "$date $time $metadata[$level] [$node] $message\n",
  metadata: [:request_id]

config :neoscan_sync, notification_seeds: [
  "http://testnotifications.neeeo.org/v1",
],
start_notifications: 0, #Block height to start notifications check
demand_size: 150   #genstage demand size
