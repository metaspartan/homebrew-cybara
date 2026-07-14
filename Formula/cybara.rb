class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1489"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1489/cybara-v1.0.1489-darwin-arm64-cli"; sha256 "517e95135f7c776f10aedc94f78a585c603201d47e868c9b8446047dc9770a88" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1489/cybara-v1.0.1489-darwin-x64-cli"; sha256 "93b8f457db151bff101f6ebe1a09dbf414a1ad33fbc132000149a2ab9125979d" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1489/cybara-v1.0.1489-linux-arm64-cli"; sha256 "4ff8db4c3a2a3bd5a26688ce454b23976b2c787d844cd389a4717331c53b5584" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1489/cybara-v1.0.1489-linux-x64-cli"; sha256 "cb1020371321fd227a2d8712015df77a6fc0a67459aee1ae4a038a9218de02ba" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
