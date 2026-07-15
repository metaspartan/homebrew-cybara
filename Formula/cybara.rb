class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1610"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1610/cybara-v1.0.1610-darwin-arm64-cli"; sha256 "4ebcb2632b7dbd042efbfe82c0457dde5de2ff4c0ac8cb2c3d3266ae0ce41b62" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1610/cybara-v1.0.1610-darwin-x64-cli"; sha256 "c0a416cb9a8782f6a0210c6d8fc761fb4f95b6a416cfa6f0b1a559981e40c389" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1610/cybara-v1.0.1610-linux-arm64-cli"; sha256 "1768d9a6954adfee89204a0be219b64d8cf82c78f06e54eb71d5053b53230966" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1610/cybara-v1.0.1610-linux-x64-cli"; sha256 "14353d7a97d501cf92cdcca522f28c8c8f787cca94716e604bd1901a43302d57" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
