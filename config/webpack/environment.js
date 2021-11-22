const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery/src/jquery',
        jquery: 'jquery/src/jquery',
        jQuery: 'jquery/src/jquery',
        Popper: 'popper.js',
        selectize: '?'
    })
)
module.exports = environment