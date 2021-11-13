import { Webview } from 'https://deno.land/x/webview@0.5.6/mod.ts'

const web = new Webview({
    title: "Plano",
    width: 1280,
    height: 830,
    url: "https://deno.land",
    resizable: false
})

await web.run()