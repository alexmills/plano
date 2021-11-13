import { Webview } from 'https://deno.land/x/webview@0.5.6/mod.ts'

const html = `
  <html>
  <body>
  <button onclick="external.invoke('test')">test</button>
    <script>
      function test() { external.invoke("finish"); }
    </script>
  </body>
  </html>
`;

// run the server here for like next js or something?

const debugMode = true
const url = debugMode ? "http://0.0.0.0:3000" : `data:text/html,${encodeURIComponent(html)}`

const web = new Webview({
    title: "Plano",
    width: 1280,
    height: 830,
    url: url,
    resizable: true,
    frameless: false, // For future use
    debug: true
})

/*

 These functions should be able to run wasm here or perhaps rust...

 */

await web.run(event => {
    switch(event) {
        case "test":
            console.log("execute function here...")
            web.eval("test()")
            break
    }
})