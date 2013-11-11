window.TweetsView = Backbone.View.extend({

	initialize: function(){
		this.collection.on('add', this.addOne, this);
		this.collection.on('set', this.addAll, this);
		this.collection.on('reset', this.addAll, this);
	},

	events: {

	},

	addAll: function(){
		this.collection.forEach(this.addOne, this);
	},

	addOne: function(tweet){
		var tweetView = new TweetView({ model: tweet });
		this.$el.append(tweetView.render().el);
	},

	render: function(){
		this.addAll();
		return this;
	}
});