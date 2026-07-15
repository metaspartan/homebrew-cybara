class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1608"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1608/cybara-v1.0.1608-darwin-arm64-cli"; sha256 "61b0c53bfb5eff550bc5e599054d5c755d302dec6e122b8237ebe96b7aedf722" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1608/cybara-v1.0.1608-darwin-x64-cli"; sha256 "ecc3458997dc9a8c751c55e7754cbbbd8ae17cf1f721f5e7cbe0fa0127c71e73" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1608/cybara-v1.0.1608-linux-arm64-cli"; sha256 "08cc8f4632347c855c5202e5bd501b8eeaad40b276ee0188094342cbddbac13f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1608/cybara-v1.0.1608-linux-x64-cli"; sha256 "0ed86431edd379497f298453c9629a90cdf4d41a28c5756abda08f7eb76ea8a1" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
