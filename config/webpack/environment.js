const { environment } = require("@rails/webpacker");
const { VueLoaderPlugin } = require("vue-loader");
const webpack = require("webpack");
const vue = require("./loaders/vue");

environment.plugins.prepend("VueLoaderPlugin", new VueLoaderPlugin());
environment.loaders.prepend("vue", vue);
environment.plugins.prepend(
    "Provide",
    new webpack.ProvidePlugin({
        $: "jquery/src/jquery",
        jQuery: "jquery/src/jquery"
    })
);
module.exports = environment;
