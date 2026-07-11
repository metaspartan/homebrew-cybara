class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1341"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1341/cybara-v1.0.1341-darwin-arm64-cli"; sha256 "af167843ab977b83787104b1b0d10c5919f221d24e0accfb370d1f20df1d0f7b" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1341/cybara-v1.0.1341-darwin-x64-cli"; sha256 "b89736536661ee0ff08d3baec25d3cd6060f186821c1ae5031ea77f87b5fbf6e" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1341/cybara-v1.0.1341-linux-arm64-cli"; sha256 "7a1625fa8d473d2cd33213ef78a71bdf2378cf40ce05c315b4494a909b8b90c9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1341/cybara-v1.0.1341-linux-x64-cli"; sha256 "8c880f5d81fed8c1db94de4121ed1c2313e6286fbcf18707c0e30de8ad2dfeb1" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
