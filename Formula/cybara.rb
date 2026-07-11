class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1297"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1297/cybara-v1.0.1297-darwin-arm64-cli"; sha256 "9a96004e5aea3e985e6ba6823ff1640e8e1635598b9e21fcb1640d372578f318" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1297/cybara-v1.0.1297-darwin-x64-cli"; sha256 "a7f6926b2f05a23a480a4512179630076bbe198ab320f8db95dac8956ea0a2d3" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1297/cybara-v1.0.1297-linux-arm64-cli"; sha256 "e144f64af4beefc05929d43a95487f25b3872cf4fbd58de4b1da0688f31296ff" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1297/cybara-v1.0.1297-linux-x64-cli"; sha256 "1d4c70a82141240bd5958891dfb441b99d584564e942c64a497f57582b3852d5" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
