window.router = new (Backbone.Router.extend({
	routes: {
		"" : "index"
	},

	initialize: function(){
		this.tweets = new Tweets();
		this.tweetsView = new TweetsView({ collection: this.tweets });
		this.tweetsView.render();
	},

	index: function(){
		//var tweets = 
		$('#app').html(this.tweetsView.el);
		this.tweets.fetch();
	},

	start: function(){
		Backbone.history.start();
	}
}));