module.exports = {
    '/api': {
        target: {
            host: 'localhost',
            protocol: 'http',
            port: 3000
        },
        secure: false,
        changeOrigin: true,
        logLevel: 'debug'
    }
};