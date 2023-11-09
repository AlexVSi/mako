const config = {
	mode: 'production',
	entry: {
		swiper: './src/js/swiper.js',
		index: './src/js/index.js',
	},
	output: {
		filename: '[name].bundle.js',
	},
	module: {
		rules: [
			{
				test: /\.css$/,
				use: ['style-loader', 'css-loader']
			},
		],
	},
}

module.exports = config