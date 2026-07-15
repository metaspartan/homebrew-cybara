class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1637"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1637/cybara-v1.0.1637-darwin-arm64-cli"; sha256 "0055a9be63b36373f5eaa8ae220e4be9b5edeb871b7bc75d464db4ad872b978c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1637/cybara-v1.0.1637-darwin-x64-cli"; sha256 "66be338a6a559ad9c42296e15aeedd65612003e9c7dd09aa47d38baf5e11f9cb" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1637/cybara-v1.0.1637-linux-arm64-cli"; sha256 "bd8deaa08b6ebf4fcc85701c278c9cffb14a16bc5bb64d464c894705b8c5cac7" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1637/cybara-v1.0.1637-linux-x64-cli"; sha256 "f7d7d23a8840e526d43dd67c02143590bb646f297dbad82306c70d803dda7fa4" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
