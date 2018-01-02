const isProdMode = Object.is(process.env.NODE_ENV, 'production')

module.exports = {
    baseUrl: isProdMode ? 'http://api.webfenxi.com/v1/' : 'v1/'
}
