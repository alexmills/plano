#![cfg_attr(
  all(not(debug_assertions), target_os = "windows"),
  windows_subsystem = "windows"
)]

fn main() {
  tauri::Builder::default()
    // Pass in any custom commands
    .invoke_handler(tauri::generate_handler![my_custom_command, custom_response])
    .run(tauri::generate_context!())
    .expect("error while running tauri application");
}

#[tauri::command]
fn my_custom_command() {
  println!("Invoked from JS")
}

#[tauri::command]
fn custom_response() -> String {
  "Hello from Rust!".into()
}