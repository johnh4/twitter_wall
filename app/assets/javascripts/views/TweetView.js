$(function(){
	window.TweetView = Backbone.View.extend({

		//id: 'tweet_' + this.model.get('id'),
		className: 'tweet',
		/*
		template: _.template('text: <%= text %><br>' + 
							 'timestamp: <%= timestamp %><br>' +
							 'uniq_name: <%= uniq_name %><br>' +
							 'disp_name: <%= disp_name %><br><br>'),
		*/
		template: _.template( $('#tweetTemplate').html() ),

		initialize: function(){
			//this.$el.fadeIn(1000);
		},

		render: function(){
			var attributes = this.model.toJSON();
			this.$el.html(this.template(attributes));
			return this;
		}
	});
});