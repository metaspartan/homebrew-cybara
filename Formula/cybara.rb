class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1498"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1498/cybara-v1.0.1498-darwin-arm64-cli"; sha256 "e5eabd9aaa2417e780495b69d91934ff0543ef779cd18dba9d98876334df4120" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1498/cybara-v1.0.1498-darwin-x64-cli"; sha256 "c8f8774fa8ab52f2e887b5c0c0ffeab63b4cff2a99702e40e53e57674d7a7df4" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1498/cybara-v1.0.1498-linux-arm64-cli"; sha256 "11de7db578756989f73cd1b774b9be12a3b102f318e7d3c8fb20d1593dad937e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1498/cybara-v1.0.1498-linux-x64-cli"; sha256 "ecf1d0ec2f537871319ffc976627feec8774101c681ba58e7e6905cc25069dc7" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
