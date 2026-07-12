class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1376"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1376/cybara-v1.0.1376-darwin-arm64-cli"; sha256 "57ee92ccf3d32091299a74ead73dcb9692d076fc5114b048ff49e8f7cdbbc788" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1376/cybara-v1.0.1376-darwin-x64-cli"; sha256 "f5cd4ebc1e9dd281d3bb8b7bb5bd4e621a9cbd6b18fe974a895cfca6a16101d6" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1376/cybara-v1.0.1376-linux-arm64-cli"; sha256 "b067602c1c60c82e9c3e1878de0525cc7b0c790a81d238589793dbab3c9984d8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1376/cybara-v1.0.1376-linux-x64-cli"; sha256 "2452ed1900d525da501696ee6c97f5c00f6a52c77d1f7e7667353d755627d456" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
