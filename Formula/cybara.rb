class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2162"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2162/cybara-v1.0.2162-darwin-arm64-cli"; sha256 "7a27f6682a36f90cf3c8cf7653107d593bde99bb413c96ee75adfdba80c10711" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2162/cybara-v1.0.2162-darwin-x64-cli"; sha256 "8371174ea5806119c4f1438379616b68f6403e7923f16208bb43bee80405119e" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2162/cybara-v1.0.2162-linux-arm64-cli"; sha256 "fe78824b2c16de003c46a17a6271b5e9ef8c1c3bd0205d6c29fc9dc4497ede8f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2162/cybara-v1.0.2162-linux-x64-cli"; sha256 "8ab29ec3dc70dcf10f44e50b87a749ab00f5c86218a5bbf0bd58d1a19a3834d7" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
