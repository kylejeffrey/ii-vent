// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import CountdownController from "./countdown_controller"
application.register("countdown", CountdownController)

import EventMessagesSubscriptionController from "./event_messages_subscription_controller"
application.register("event-messages-subscription", EventMessagesSubscriptionController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import MapController from "./map_controller"
application.register("map", MapController)

import PosterUploadOptionsController from "./poster_upload_options_controller"
application.register("poster-upload-options", PosterUploadOptionsController)

import TabController from "./tab_controller"
application.register("tab", TabController)

import TabMembersController from "./tab_members_controller"
application.register("tab-members", TabMembersController)

import TasksController from "./tasks_controller"
application.register("tasks", TasksController)
