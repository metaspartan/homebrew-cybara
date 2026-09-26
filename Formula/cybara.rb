class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2401"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2401/cybara-v1.0.2401-darwin-arm64-cli"; sha256 "d90782f8010b3cf46f36096b0744b3724f470aee9fcb0c66001fadc128bed8b9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2401/cybara-v1.0.2401-darwin-x64-cli"; sha256 "8fd3af781745df0996edea7c7aebad69510c159b153a373e6983ae67626a3854" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2401/cybara-v1.0.2401-linux-arm64-cli"; sha256 "565b2d66b2143fd1965e9830c35655e2f3f1400887082776e767fcb17bf50e9b" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2401/cybara-v1.0.2401-linux-x64-cli"; sha256 "fa7c61a548ef4e644c792569d60577e285f10746a69f74a63141fb169e36855a" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
