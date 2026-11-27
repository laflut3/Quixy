pub fn startup_message() -> &'static str {
  "Hello, world!\nWelcome to Quixy."
}

#[cfg(test)]
mod tests {
  use super::startup_message;

  #[test]
  fn startup_message_contains_both_lines() {
    assert_eq!(
      startup_message().lines().collect::<Vec<_>>(),
      ["Hello, world!", "Welcome to Quixy."]
    );
  }
}
