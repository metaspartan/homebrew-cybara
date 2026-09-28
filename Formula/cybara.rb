class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2425"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2425/cybara-v1.0.2425-darwin-arm64-cli"; sha256 "b4b3ccf0e5284c00d5f653c81caee81984f5c822df551d3b050b4c4f906db2cd" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2425/cybara-v1.0.2425-darwin-x64-cli"; sha256 "f018b46d3e1033a89e6cb829b6666b2a57afa8e912657cc273df930c98b0ab0a" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2425/cybara-v1.0.2425-linux-arm64-cli"; sha256 "3e06f3cba4eb3f235de3752e631399a7ae03089ea236fbf51d329a8137bc2e68" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2425/cybara-v1.0.2425-linux-x64-cli"; sha256 "9ebb96dc64229b52e518b43134791768ed90761f0a9d695f90c0fe56e29583be" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
