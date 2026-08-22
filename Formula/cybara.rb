class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2197"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2197/cybara-v1.0.2197-darwin-arm64-cli"; sha256 "ec53cea78147b3c9f754f5ec0ee356a1908dbf1f50891c5c199f9a20c5f4ff82" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2197/cybara-v1.0.2197-darwin-x64-cli"; sha256 "1424d839a488c65f847321cf308f0cef559e7daf42a68ef64b45ebda57268f83" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2197/cybara-v1.0.2197-linux-arm64-cli"; sha256 "c0a2bbd90e5b99292ffac15f766672e5003ec0f39c787ffcca444f9910beb7a9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2197/cybara-v1.0.2197-linux-x64-cli"; sha256 "591f5d11bc45161da859d0d0b27216cb8f8dac3d468fb3faeea7bc73c45f0a88" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
