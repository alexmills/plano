# Jurrasic Park Experiment

## Important
Needs Deno version `1.8.3` in order for `webview@0.5.6` to work until v1.0 lands for webview once the plugin has been refactured.

## Running
    deno run --unstable --allow-net --allow-plugin --allow-env --allow-read .\mod.ts

## Cache Issues
It appears that Deno (maybe with addition of VSCode) can cache the weview plugin incorrectly, this will resolve it

    deno cache --reload --unstable .\mod.ts

## Overview
This experiment uses Deno to display a WebView which runs an AlephJS server instance of the react-powered dashboard with MapBoxGL.

