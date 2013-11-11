window.Tweets = Backbone.Collection.extend({
	model: Tweet,
	url: '/tweets'
});