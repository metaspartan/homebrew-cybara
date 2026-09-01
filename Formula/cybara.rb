class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2248"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2248/cybara-v1.0.2248-darwin-arm64-cli"; sha256 "3bbe4f29f9fb2bff58d3a9f1d8cfd35516a4f9cccd37b73daad0f7cca748f978" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2248/cybara-v1.0.2248-darwin-x64-cli"; sha256 "041d6a7f33da7f8e9e3ce89feefc10f9b508698b790d185c87bd7a6b7e4242f0" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2248/cybara-v1.0.2248-linux-arm64-cli"; sha256 "67067b2c97d09316d9177c0918aff0a7a7d242748653140bda6795fb4b00aa3b" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2248/cybara-v1.0.2248-linux-x64-cli"; sha256 "df7b3bad8fd565a158bd71d093705d02e8d2ef2f0ba16607af852061d9f1905d" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
