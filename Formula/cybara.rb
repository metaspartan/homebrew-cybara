class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1570"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1570/cybara-v1.0.1570-darwin-arm64-cli"; sha256 "f6b95924c956b260bec6dc0c1c2a9c0bff4d3c0f5ac115e5cdb8f569597fb055" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1570/cybara-v1.0.1570-darwin-x64-cli"; sha256 "f0db0b4e563084b2b1c5f78384b7703e72879c32101bca32a949f1c752262858" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1570/cybara-v1.0.1570-linux-arm64-cli"; sha256 "cd8d327dbcd64538eec71a173d49e84ac5413c1eddf917a755aa25efdccf9841" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1570/cybara-v1.0.1570-linux-x64-cli"; sha256 "c9b9a883d8a5cde7075246c3f5a5839014628dfb999d9ff4f4ecd9767b03ab01" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
