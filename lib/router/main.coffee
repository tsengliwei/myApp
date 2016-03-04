Router.map ->
  @route "home",
    path: "/"
    layoutTemplate: "homeLayout"

  @route "dashboard",
    path: "/dashboard"
    waitOn: ->
      [
        subs.subscribe 'posts'
        subs.subscribe 'comments'
        subs.subscribe 'attachments'
      ]
    data: ->
      posts: Posts.find({},{sort: {createdAt: -1}}).fetch()

  @route "label",
    path: "/label/:_id"
    waitOn: ->
      [
        subs.subscribe 'posts', @params._id
        
        subs.subscribe 'attachments'
      ]
    data: ->
      post: Posts.findOne(_id: @params._id)