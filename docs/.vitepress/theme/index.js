// .vitepress/theme/index.js
import DefaultTheme from 'vitepress/theme'
import './custom.css'
import BrowserWindow from './components/BrowserWindow.vue'
import NewsPost from './components/NewsPost.vue'

export default {
  ...DefaultTheme,

  enhanceApp({ app }) {
    app.component('BrowserWindow', BrowserWindow)
    app.component('NewsPost', NewsPost)
  }
}
