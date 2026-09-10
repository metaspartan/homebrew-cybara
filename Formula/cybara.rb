class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2341"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2341/cybara-v1.0.2341-darwin-arm64-cli"; sha256 "18ab67e8b3a9b480cbfb6b8b18ae2c69ffb069128b8fe14f7b4b2c4107eccc38" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2341/cybara-v1.0.2341-darwin-x64-cli"; sha256 "1af0112aa2380b2e14e2955aa89d3cc39a7aa3f41457c8c4226b79adbd518c5f" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2341/cybara-v1.0.2341-linux-arm64-cli"; sha256 "357b118d11e02d041f490969d998b135714658a4991f6333ce865ec09c412238" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2341/cybara-v1.0.2341-linux-x64-cli"; sha256 "a2b2646141a8b95475c94ade69a0c5d5b2eafa3836422af407e79bdb3f9ad4e9" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
