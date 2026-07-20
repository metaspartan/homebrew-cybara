class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1807"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1807/cybara-v1.0.1807-darwin-arm64-cli"; sha256 "41cdf9f39072fd143cab3ff2152e16b9fcb1af8ed2b093007acd575cdfe412a1" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1807/cybara-v1.0.1807-darwin-x64-cli"; sha256 "aa5ae9cb48f11ac360a89ca968b24d32c5d3606240d317a01be1784586d8ea15" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1807/cybara-v1.0.1807-linux-arm64-cli"; sha256 "a75c2d12cade611d5369ddedbd2ff3d48ebd0e9a1d09b3535f322728661db7b6" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1807/cybara-v1.0.1807-linux-x64-cli"; sha256 "5e31c4a9c72a68da2a201f96a5fffff8b76681aa2e9f9d01cbeec32c88c38251" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
